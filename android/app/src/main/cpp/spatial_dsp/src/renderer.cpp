/**
 * @file renderer.cpp
 * @brief Y=5: Binaural 渲染器 — 委托 BinauralConvEngine (HRTF 卷积)
 *
 * 替换旧的 ITD+ILD per-sample panning 为参数化 HRTF 卷积。
 */

#include "renderer.h"
#include "upmix.h"
#include <android/log.h>
#include <cstring>

#define TAG "BinauralRenderer"
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, TAG, __VA_ARGS__)

BinauralRenderer::BinauralRenderer() = default;
BinauralRenderer::~BinauralRenderer() { shutdown(); }

bool BinauralRenderer::initialize(int32_t sampleRate, int32_t frameSize) {
    m_convEngine.initialize(sampleRate, frameSize);
    m_initialized = true;
    LOGI("BinauralRenderer vY5: HRTF convolution, %dHz, %d frames",
         sampleRate, frameSize);
    return true;
}

void BinauralRenderer::shutdown() {
    m_initialized = false;
    LOGI("BinauralRenderer shutdown");
}

void BinauralRenderer::setHrtfParams(const HrtfParams& params) {
    m_hrtfParams = params;
    m_convEngine.setHrtfParams(params);
}

void BinauralRenderer::render(const std::vector<VirtualObject>& objects,
                               float listenerAzimuth, float* outputStereo,
                               int64_t numFrames) {
    if (!m_initialized) {
        std::memset(outputStereo, 0, numFrames * 2 * sizeof(float));
        return;
    }

    // V9.3: Object count norm computed BEFORE HRTF branch (uniform ON+OFF)
    int activeObj = 0;
    for (const auto& obj : objects) { if (obj.gain >= 0.001f) activeObj++; }
    float objNorm = (activeObj > 1) ? 1.0f / std::sqrt((float)activeObj) : 1.0f;
    // V9.3: one-pole smoothed output gain (per-frame ramp)
    static float smoothGain = m_outputGain;
    float alpha = 0.3f; // ~20ms @ 256-frame @ 48kHz
    smoothGain = alpha * m_outputGain + (1.0f - alpha) * smoothGain;

    // Y=5 0156: HRTF 关闭 → 直接 L/R 混合, 跳过卷积
    if (!m_hrtfEnabled) {
        std::memset(outputStereo, 0, numFrames * 2 * sizeof(float));
        for (const auto& obj : objects) {
            float lGain = std::max(0.0f, std::cos((obj.azimuth_deg - 30.0f) * 3.14159f / 180.0f));
            float rGain = std::max(0.0f, std::cos((obj.azimuth_deg + 30.0f) * 3.14159f / 180.0f));
            float g = obj.gain;
            for (int64_t i = 0; i < numFrames; i++) {
                float s = (i < (int64_t)obj.audioData.size()) ? obj.audioData[i] : 0.0f;
                outputStereo[i * 2]     += s * lGain * g;
                outputStereo[i * 2 + 1] += s * rGain * g;
            }
        }
        // V9.3: Apply object norm + smoothed outputGain (unified for HRTF OFF)
        if (objNorm != 1.0f) for (int64_t i = 0; i < numFrames * 2; i++) outputStereo[i] *= objNorm;
        if (smoothGain != 1.0f) for (int64_t i = 0; i < numFrames * 2; i++) outputStereo[i] *= smoothGain;
        return;
    }

    m_convEngine.setOutputGain(m_outputGain);
    m_convEngine.render(objects, outputStereo, numFrames);

    // Y=5 0169: portable NaN guard

    // std::isfinite may silently fail on ARM64+O3 combinations
    static bool firstGuard = true;
    int nanCount=0;
    if (firstGuard) { LOGI("RENDER-NAN-GUARD v0169: active (x!=x check)"); firstGuard=false; }
    for(int64_t i=0;i<numFrames*2;i++){
        float v=outputStereo[i];
        if(v!=v){outputStereo[i]=0.0f;nanCount++;}  // NaN check: only NaN != itself
        else if(v>1e10f||v<-1e10f){outputStereo[i]=0.0f;nanCount++;} // Inf check
    }
    if(nanCount>0){
        static int64_t rpt=0;
        if(++rpt<=10) LOGI("RENDER-NAN: fixed %d NaN/Inf in output [guarded by x!=x]", nanCount);
    }
    // V9.3: Apply pre-computed object norm + smoothed outputGain (HRTF ON path)
    if (objNorm != 1.0f) for (int64_t i = 0; i < numFrames * 2; i++) outputStereo[i] *= objNorm;
    if (smoothGain != 1.0f) for (int64_t i = 0; i < numFrames * 2; i++) outputStereo[i] *= smoothGain;
}

void BinauralRenderer::renderPassthrough(const float* inputMono,
                                          float* outputStereo,
                                          int64_t numFrames) {
    m_convEngine.renderPassthrough(inputMono, outputStereo, numFrames);
}

void BinauralRenderer::setHighPrecision(bool) { /* no-op in Y5 */ }
void BinauralRenderer::setRoomParams(float, float) { /* no-op in renderer */ }

void BinauralRenderer::setOutputGain(float gain) { m_outputGain = gain; }
void BinauralRenderer::setWideMode(bool wide)    { m_wideMode = wide; }
void BinauralRenderer::setTestRotation(bool en)  { m_testRotation = en; }

void BinauralRenderer::setHrtfEnabled(bool enabled) {
    m_hrtfEnabled = enabled;
}


