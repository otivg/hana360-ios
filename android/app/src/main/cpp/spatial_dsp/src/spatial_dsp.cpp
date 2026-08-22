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
#include "hrtf_synthesizer.h"

#include <android/log.h>
#include <cmath>
#include <cstring>
#include <vector>

#define TAG "SpatialDsp"
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, TAG, __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, TAG, __VA_ARGS__)

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

    // 参数 (默认与 Baseus V9.3.0326 内测版一致)
    bool upmixEnabled = true;
    int layoutMode = 1;              // Cinema
    float masterGain = 2.0f;
    float speakerDistance = 2.0f;    // Cinema 默认
    float outputLevel = 2.0f;
    bool hrtfEnabled = true;
    int hrtfGroup = 0;
    float hrtfOutputGain = 0.5f;
    bool eqEnabled = false;
    bool reverbEnabled = true;
    bool wide = true;
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

    // EQ: 10 段默认平直 (V3.1.1: 频段限制在 0.45×Nyquist, 防止 w0>π 系数异常 → NaN → 静音)
    EqBand bands[10];
    const float nyquistLimit = (float)sampleRate * 0.45f;
    for (int i = 0; i < 10; i++) {
        bands[i].type = EqFilterType::Peak;
        bands[i].freqHz = std::min(31.25f * (float)std::pow(2.0, i * 4.0 / 3.0), nyquistLimit); // ~31..0.45*Nyquist
        bands[i].gainDb = 0.0f;
        bands[i].q = 1.0f;
    }
    dsp->eq.setAllBands(bands, sampleRate);
    dsp->eq.setEnabled(dsp->eqEnabled);

    // Reverb: Music 预设 (rt60=0.3, room=8, gain=-12dB)
    dsp->reverb.initialize(sampleRate);
    dsp->reverb.setParams(0.3f, 8.0f, 0.5f, 0.7f, 20.0f, -12.0f, sampleRate);
    dsp->reverb.setEnabled(dsp->reverbEnabled);

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
            objects[0].audioData[i] = L * lScale - M * 0.15f;
            objects[1].audioData[i] = R * lScale - M * 0.15f;
            objects[2].audioData[i] = M * cWeight;
            objects[3].audioData[i] = M * lfeWeight;
            objects[4].audioData[i] = S * sWeight;
            objects[5].audioData[i] = -S * sWeight;
            objects[6].audioData[i] = S * heightWeight;
            objects[7].audioData[i] = -S * heightWeight;
            objects[8].audioData[i] = S * heightWeight * 0.5f;
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

    // 后链: EQ → Reverb → Limiter
    if (dsp->eqEnabled) dsp->eq.processStereo(out, numFrames);
    if (dsp->reverbEnabled) dsp->reverb.processStereo(out, numFrames);
    dsp->limiter.process(out, numFrames);
}

// ==================== 参数控制 ====================

void ssp_set_bypass(SpatialDsp* dsp, int bypass) {
    if (dsp) dsp->bypass = bypass != 0;
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
