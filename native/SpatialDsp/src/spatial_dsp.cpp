/**
 * @file spatial_dsp.cpp
 * @brief 360 空间音效纯 DSP 门面 — 从 Baseus audio_engine.cpp 提取的上混/渲染管线
 *
 * 移植自 Baseus 360 Reality Audio (Ver 9.4.0400):
 *   - 内联 M/S 上混 (9 objects, 0173-0177 调优版, 非 STFT 版)
 *   - BinauralRenderer (HRTF 卷积 / 关闭时 panning, 含 objNorm + smoothGain)
 *   - EqCascade → Reverb (FDN) → Limiter 后链
 *
 * 移除: FFmpeg 解码 / AAudio 输出 / Oboe / JNI 播放控制 — 由宿主播放器负责。
 */
#include "spatial_dsp.h"

#include "upmix.h"
#include "renderer.h"
#include "eq_filter.h"
#include "reverb.h"
#include "limiter.h"
#include "deesser.h"
#include "hrtf_synthesizer.h"

#include "dsp_platform.h"
#include <cmath>
#include <cstring>
#include <vector>

#define LOGI(...) DSP_LOGI(__VA_ARGS__)
#define LOGE(...) DSP_LOGE(__VA_ARGS__)

struct SpatialDsp {
    bool initialized = false;
    bool bypass = false;
    int sampleRate = 48000;
    int framesPerBurst = 256;

    // DSP 模块
    BinauralRenderer renderer;
    EqCascade eq;
    Reverb reverb;
    StereoLimiter limiter;
    BiquadFilter hfShelf;  // 齿音抑制: 8kHz high-shelf (A 方案, 独立于用户 EQ)
    DeEsser deesser;       // 齿音动态抑制 (D 方案, 只压齿音瞬态)
    BiquadFilter sLowpass; // 齿音抑制 (C 方案): S 信号 8kHz 低通, 进环绕/高度前
    BiquadFilter cShelf;   // 齿音抑制 (B 方案): C 对象 8kHz high-shelf -4dB (人声齿音)

    // 参数 (默认与 Baseus V9.3.0326 内测版一致; 4.0.17 微调齿音)
    bool upmixEnabled = true;
    int layoutMode = 1;              // Cinema
    float masterGain = 1.6f;         // E: 2.0→1.6 (减轻 Limiter 削峰)
    float speakerDistance = 2.0f;    // Cinema 默认
    float outputLevel = 2.0f;
    bool hrtfEnabled = true;
    int hrtfGroup = 13;              // 4.0.20: 女·中头·中耳 (用户确认默认)
    float hrtfOutputGain = 0.5f;     // 4.0.20: 默认输出增益 0.5 (用户确认)
    bool eqEnabled = true;           // 4.0.20: 空间 EQ 默认打开
    bool reverbEnabled = true;
    bool wide = true;
    float hfShelfGainDb = -2.5f;     // A: 8kHz shelf -2.5dB
    bool deesserEnabled = true;      // D: 齿音动态抑制
    float deesserThresholdDb = -30.0f;
    float deesserRatio = 3.0f;
    float headYawDeg = 0.0f;
    float headPitchDeg = 0.0f;
    bool rotActive = false;

    std::vector<VirtualObject> objects;
};

// ==================== 生命周期 ====================

SpatialDsp* ssp_create(void) {
    return new SpatialDsp();
}

void ssp_destroy(SpatialDsp* dsp) {
    if (dsp) delete dsp;
}

int ssp_configure(SpatialDsp* dsp, int sampleRate, int framesPerBurst) {
    if (!dsp) return -1;
    dsp->sampleRate = sampleRate;
    dsp->framesPerBurst = framesPerBurst;

    if (!dsp->renderer.initialize(sampleRate, framesPerBurst)) {
        LOGE("Renderer init failed");
        return -1;
    }
    dsp->renderer.setHrtfEnabled(dsp->hrtfEnabled);
    dsp->renderer.setOutputGain(dsp->hrtfOutputGain);
    dsp->renderer.setWideMode(dsp->wide);

    // EQ: 10 段, 默认音乐模式 (V3.1.1: 频段限制在 0.45×Nyquist, 防止 w0>π 系数异常 → NaN → 静音)
    EqBand bands[10];
    const float nyquistLimit = (float)sampleRate * 0.45f;
    // 4.0.20: 音乐模式曲线 (与 Dart eqPresets['音乐'] 一致)
    const float musicGains[10] = {1.0f, 2.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 2.0f, 1.0f, 0.0f};
    for (int i = 0; i < 10; i++) {
        bands[i].type = EqFilterType::Peak;
        bands[i].freqHz = std::min(31.25f * (float)std::pow(2.0, i * 4.0 / 3.0), nyquistLimit); // ~31..0.45*Nyquist
        bands[i].gainDb = musicGains[i];
        bands[i].q = 1.0f;
    }
    dsp->eq.setAllBands(bands, sampleRate);
    dsp->eq.setEnabled(dsp->eqEnabled);

    // Reverb: Music 预设 (rt60=0.3, room=8, gain=-12dB)
    dsp->reverb.initialize(sampleRate);
    dsp->reverb.setParams(0.3f, 8.0f, 0.5f, 0.7f, 20.0f, -12.0f, sampleRate);
    dsp->reverb.setEnabled(dsp->reverbEnabled);

    // 齿音抑制 (A 方案): 8kHz high-shelf -2.5dB, 独立于用户 EQ
    dsp->hfShelf.setParams(EqFilterType::HighShelf, 8000.0f,
                           dsp->hfShelfGainDb, 0.7f, sampleRate);

    // De-esser (D 方案): 动态压齿音瞬态, 保留正常高频
    dsp->deesser.initialize(sampleRate);
    dsp->deesser.setParams(5000.0f, 6000.0f,
                           dsp->deesserThresholdDb, dsp->deesserRatio,
                           2.0f, 120.0f);

    // 齿音抑制 (B/C 方案, 4.0.19): 上混阶段
    //   C: S 信号低通 8kHz — 齿音 S 不再多方向重复卷积 (环绕/高度不需要超高细节)
    //   B: C 对象 high-shelf 8kHz -4dB — 人声 (Center) 齿音区衰减, 保留中低频人声
    dsp->sLowpass.setParams(EqFilterType::LowPass, 8000.0f, 0.0f, 0.7f, sampleRate);
    dsp->cShelf.setParams(EqFilterType::HighShelf, 8000.0f, -4.0f, 0.7f, sampleRate);

    // Limiter
    dsp->limiter.initialize(sampleRate, framesPerBurst);
    dsp->limiter.setThreshold(-0.3f);

    dsp->initialized = true;
    LOGI("SpatialDsp configured: %dHz, %d frames, upmix=%d layout=%d",
         sampleRate, framesPerBurst, dsp->upmixEnabled ? 1 : 0, dsp->layoutMode);
    return 0;
}

int ssp_load_hrir_file(SpatialDsp* dsp, const char* path) {
    if (!dsp) return -1;
    return HrtfSynthesizer::initAssetPath(path) ? 0 : -1;
}

void ssp_flush(SpatialDsp* dsp) {
    if (!dsp) return;
    dsp->renderer.shutdown();
    dsp->renderer.initialize(dsp->sampleRate, dsp->framesPerBurst);
    dsp->renderer.setHrtfEnabled(dsp->hrtfEnabled);
    dsp->renderer.setOutputGain(dsp->hrtfOutputGain);
    dsp->hfShelf.resetStereo();
    dsp->deesser.reset();
    dsp->sLowpass.resetStereo();
    dsp->cShelf.resetStereo();
    dsp->limiter.reset();
}

// ==================== 核心处理 ====================

static int ssp_process_count = 0;  // DIAG: processing evidence
void ssp_process(SpatialDsp* dsp, const float* in, float* out, int numFrames) {
    if (++ssp_process_count % 200 == 1)
        LOGI("DSP-PROCESS #%d frames=%d bypass=%d", ssp_process_count, numFrames, dsp->bypass ? 1 : 0);
    if (!dsp || !dsp->initialized) return;
    if (dsp->bypass) {
        std::memcpy(out, in, (size_t)numFrames * 2 * sizeof(float));
        return;
    }

    auto& objects = dsp->objects;
    objects.clear();

    if (dsp->upmixEnabled) {
        // 9 对象: L/R/C/LFE/LS/RS/LH/RH/HT (与 Baseus audio_engine.cpp 一致)
        objects.resize(9);
        for (int j = 0; j < 9; j++) {
            if ((int64_t)objects[j].audioData.size() < numFrames)
                objects[j].audioData.resize(numFrames);
            objects[j].elevation_deg = 0.0f;
        }
        objects[0].azimuth_deg = -30.0f;
        objects[1].azimuth_deg =  30.0f;
        objects[2].azimuth_deg =   0.0f;
        objects[3].azimuth_deg =   0.0f;
        objects[4].azimuth_deg = -110.0f;
        objects[5].azimuth_deg =  110.0f;
        objects[6].azimuth_deg = -45.0f; objects[6].elevation_deg = 45.0f;
        objects[7].azimuth_deg =  45.0f; objects[7].elevation_deg = 45.0f;
        objects[8].azimuth_deg =   0.0f; objects[8].elevation_deg = 90.0f;

        float outCoef = dsp->outputLevel;
        float distCoef = dsp->speakerDistance;
        float gainCoef = dsp->masterGain;
        for (int j = 0; j < 9; j++) {
            objects[j].gain = gainCoef * outCoef;
            objects[j].distance = distCoef;
        }

        // 模式相关 M/S 权重
        float cWeight, sWeight, lfeWeight, heightWeight;
        switch (dsp->layoutMode) {
            case 1: cWeight = 0.55f; sWeight = 0.55f; lfeWeight = 0.25f; heightWeight = 0.20f; break;
            case 2: cWeight = 0.20f; sWeight = 0.65f; lfeWeight = 0.10f; heightWeight = 0.08f; break;
            default: cWeight = 0.35f; sWeight = 0.40f; lfeWeight = 0.15f; heightWeight = 0.12f; break;
        }

        float lScale = dsp->wide ? 0.7f : 1.0f;
        for (int i = 0; i < numFrames; i++) {
            float L = in[i * 2];
            float R = in[i * 2 + 1];
            float M = L + R;
            float S = L - R;
            // B/C 齿音抑制 (4.0.19): S 低通 (环绕/高度) + C 对象 shelf (人声齿音)
            float Sf = dsp->sLowpass.process(S);
            float Mf = dsp->cShelf.process(M);
            objects[0].audioData[i] = L * lScale - M * 0.15f;
            objects[1].audioData[i] = R * lScale - M * 0.15f;
            objects[2].audioData[i] = Mf * cWeight;
            objects[3].audioData[i] = M * lfeWeight;
            objects[4].audioData[i] = Sf * sWeight;
            objects[5].audioData[i] = -Sf * sWeight;
            objects[6].audioData[i] = Sf * heightWeight;
            objects[7].audioData[i] = -Sf * heightWeight;
            objects[8].audioData[i] = Sf * heightWeight * 0.5f;
        }
    } else {
        // 2 对象: L/R 直通双耳渲染
        float lAngle = -30.0f, rAngle = 30.0f;
        if (dsp->wide) { lAngle = -45.0f; rAngle = 45.0f; }
        objects.resize(2);
        objects[0].audioData.resize(numFrames);
        objects[1].audioData.resize(numFrames);
        objects[0].azimuth_deg = lAngle;
        objects[1].azimuth_deg = rAngle;
        objects[0].elevation_deg = objects[1].elevation_deg = 0.0f;
        objects[0].gain = objects[1].gain = 1.0f;
        objects[0].distance = objects[1].distance = 1.0f;
        for (int i = 0; i < numFrames; i++) {
            objects[0].audioData[i] = in[i * 2];
            objects[1].audioData[i] = in[i * 2 + 1];
        }
    }

    // 头部追踪旋转
    if (dsp->rotActive) {
        for (auto& o : objects) {
            o.azimuth_deg -= dsp->headYawDeg;
            o.elevation_deg -= dsp->headPitchDeg;
        }
    }

    // 输出缓冲清零 (conv 引擎为累加模式)
    std::memset(out, 0, (size_t)numFrames * 2 * sizeof(float));

    dsp->renderer.render(objects, 0.0f, out, numFrames);

    // 后链: EQ → 齿音抑制(HF shelf) → De-esser → Reverb → Limiter
    if (dsp->eqEnabled) dsp->eq.processStereo(out, numFrames);
    if (dsp->hfShelfGainDb != 0.0f) dsp->hfShelf.processStereoInPlace(out, numFrames);
    if (dsp->deesserEnabled) dsp->deesser.processStereoInPlace(out, numFrames);
    if (dsp->reverbEnabled) dsp->reverb.processStereo(out, numFrames);
    dsp->limiter.process(out, numFrames);
}

// ==================== 5.1 多声道处理 (DTS-WAV 直通) ====================

void ssp_process_5_1(SpatialDsp* dsp, const float* in, float* out, int numFrames) {
    if (++ssp_process_count % 200 == 1)
        LOGI("DSP-PROCESS-51 #%d frames=%d bypass=%d upmix=%d hrtf=%d",
             ssp_process_count, numFrames, dsp ? (dsp->bypass ? 1 : 0) : -1,
             dsp ? (dsp->upmixEnabled ? 1 : 0) : -1,
             dsp ? (dsp->hrtfEnabled ? 1 : 0) : -1);
    if (!dsp || !dsp->initialized) return;
    if (dsp->bypass) {
        // ITU-R BS.775 下混立体声: L' = FL + 0.707(C + LS); R' = FR + 0.707(C + RS)
        // V9.6: DTS 5.1 多声道同相叠加峰值可超 1.0（实测 1.25），直接输出 = 硬 clip
        // → 规律性噼啪声（foobar/dcadec 参考：float 中间表示不 clip，最终 DSP 限幅）。
        // bypass 路径此前无 limiter 保护 → 补上（复用立体声 limiter，attack 3ms）。
        const float C = 0.7071f;
        for (int i = 0; i < numFrames; i++) {
            const float* s = in + i * 6;
            out[i * 2]     = s[0] + C * s[2] + C * s[4];
            out[i * 2 + 1] = s[1] + C * s[2] + C * s[5];
        }
        dsp->limiter.process(out, numFrames);
        return;
    }

    // 9 对象映射：DTS 5.1 原始声道 → upmix 布局（L/R/C/LFE/LS/RS + 环绕高度派生）
    auto& objects = dsp->objects;
    objects.clear();
    objects.resize(9);
    for (int j = 0; j < 9; j++) {
        if ((int64_t)objects[j].audioData.size() < numFrames)
            objects[j].audioData.resize(numFrames);
        objects[j].elevation_deg = 0.0f;
        objects[j].gain = dsp->masterGain * dsp->outputLevel;
        objects[j].distance = dsp->speakerDistance;
    }
    objects[0].azimuth_deg = -30.0f;   // L   ← FL
    objects[1].azimuth_deg =  30.0f;   // R   ← FR
    objects[2].azimuth_deg =   0.0f;   // C   ← FC
    objects[3].azimuth_deg =   0.0f;   // LFE ← LFE
    objects[4].azimuth_deg = -110.0f;  // LS  ← BL
    objects[5].azimuth_deg =  110.0f;  // RS  ← BR
    objects[6].azimuth_deg = -45.0f; objects[6].elevation_deg = 45.0f;  // LH ← BL 高度派生
    objects[7].azimuth_deg =  45.0f; objects[7].elevation_deg = 45.0f;  // RH ← BR 高度派生
    objects[8].azimuth_deg =   0.0f; objects[8].elevation_deg = 90.0f;  // HT ← FC 高度派生

    const float lScale = dsp->wide ? 0.7f : 1.0f;
    for (int i = 0; i < numFrames; i++) {
        const float* s = in + i * 6;
        objects[0].audioData[i] = s[0] * lScale;
        objects[1].audioData[i] = s[1] * lScale;
        objects[2].audioData[i] = s[2];
        objects[3].audioData[i] = s[3];
        objects[4].audioData[i] = s[4];
        objects[5].audioData[i] = s[5];
        objects[6].audioData[i] = s[4];  // 环绕复制到高度（增强空间感）
        objects[7].audioData[i] = s[5];
        objects[8].audioData[i] = s[2];
    }

    // 头部追踪旋转
    if (dsp->rotActive) {
        for (auto& o : objects) {
            o.azimuth_deg -= dsp->headYawDeg;
            o.elevation_deg -= dsp->headPitchDeg;
        }
    }

    std::memset(out, 0, (size_t)numFrames * 2 * sizeof(float));
    dsp->renderer.render(objects, 0.0f, out, numFrames);

    // 后链
    if (dsp->eqEnabled) dsp->eq.processStereo(out, numFrames);
    if (dsp->hfShelfGainDb != 0.0f) dsp->hfShelf.processStereoInPlace(out, numFrames);
    if (dsp->deesserEnabled) dsp->deesser.processStereoInPlace(out, numFrames);
    if (dsp->reverbEnabled) dsp->reverb.processStereo(out, numFrames);
    dsp->limiter.process(out, numFrames);
}

// ==================== 参数控制 ====================

void ssp_set_bypass(SpatialDsp* dsp, int bypass) {
    if (dsp) dsp->bypass = bypass != 0;
}

int ssp_get_bypass(SpatialDsp* dsp) {
    if (!dsp) return -1;
    return dsp->bypass ? 1 : 0;
}

void ssp_set_upmix(SpatialDsp* dsp, int enabled, int layoutMode) {
    if (!dsp) return;
    dsp->upmixEnabled = enabled != 0;
    dsp->layoutMode = layoutMode;
}

void ssp_set_upmix_gains(SpatialDsp* dsp, float masterGain, float speakerDistance, float outputLevel) {
    if (!dsp) return;
    dsp->masterGain = masterGain;
    dsp->speakerDistance = speakerDistance;
    dsp->outputLevel = outputLevel;
}

void ssp_set_hrtf(SpatialDsp* dsp, int enabled, int group, float outputGain) {
    if (!dsp) return;
    dsp->hrtfEnabled = enabled != 0;
    dsp->hrtfOutputGain = outputGain;
    dsp->renderer.setHrtfEnabled(dsp->hrtfEnabled);
    dsp->renderer.setOutputGain(outputGain);
    if (group >= 0 && group != dsp->hrtfGroup) {
        dsp->hrtfGroup = group;
        dsp->renderer.setHrtfGroup(group);   // 重建 HRIR cache
    }
}

void ssp_set_eq(SpatialDsp* dsp, int enabled, const float* gainsDb) {
    if (!dsp || !gainsDb) return;
    dsp->eqEnabled = enabled != 0;
    dsp->eq.setEnabled(dsp->eqEnabled);
    for (int i = 0; i < 10; i++) {
        EqBand b;
        b.type = EqFilterType::Peak;
        // V3.1.1: 限制 Nyquist — 高频段 (i=8,9) 原计算超采样率一半 → 系数异常 → NaN
        const float nyq = (float)dsp->sampleRate * 0.45f;
        b.freqHz = std::min(31.25f * (float)std::pow(2.0, i * 4.0 / 3.0), nyq);
        b.gainDb = gainsDb[i];
        b.q = 1.0f;
        dsp->eq.setBand(i, b, dsp->sampleRate);
    }
}

void ssp_set_hf_shelf(SpatialDsp* dsp, float gainDb) {
    if (!dsp) return;
    dsp->hfShelfGainDb = gainDb;
    // 0 = 关闭 (bypass); 负值 = 高频衰减 (齿音抑制)
    if (gainDb != 0.0f) {
        dsp->hfShelf.setParams(EqFilterType::HighShelf, 8000.0f,
                               gainDb, 0.7f, dsp->sampleRate);
    }
}

void ssp_set_deesser(SpatialDsp* dsp, int enabled, float thresholdDb, float ratio) {
    if (!dsp) return;
    dsp->deesserEnabled = enabled != 0;
    dsp->deesserThresholdDb = thresholdDb;
    dsp->deesserRatio = ratio;
    dsp->deesser.setParams(5000.0f, 6000.0f, thresholdDb, ratio, 2.0f, 120.0f);
}

void ssp_set_reverb(SpatialDsp* dsp, int enabled,
                    float rt60, float roomSize, float damping,
                    float diffusion, float preDelayMs, float gainDb) {
    if (!dsp) return;
    dsp->reverbEnabled = enabled != 0;
    dsp->reverb.setEnabled(dsp->reverbEnabled);
    dsp->reverb.setParams(rt60, roomSize, damping, diffusion, preDelayMs, gainDb,
                          dsp->sampleRate);
}

void ssp_set_head_rotation(SpatialDsp* dsp, float yawDeg, float pitchDeg, int active) {
    if (!dsp) return;
    dsp->headYawDeg = yawDeg;
    dsp->headPitchDeg = pitchDeg;
    dsp->rotActive = active != 0;
}

void ssp_set_wide(SpatialDsp* dsp, int wide) {
    if (!dsp) return;
    dsp->wide = wide != 0;
    dsp->renderer.setWideMode(dsp->wide);
}
