#ifndef RENDERER_H
#define RENDERER_H

#include "spatial_types.h"
#include "binaural_convolution.h"
#include "hrtf_data.h"
#include <cstdint>
#include <vector>

/**
 * @brief Y=5: Binaural 渲染器 (基于参数化 HRTF 卷积)
 *
 * 使用 HrtfSynthesizer + BinauralConvEngine 替换旧的 ITD+ILD 模型。
 * 保留原有 BinauralRenderer 接口以最小化 AudioEngine 改动。
 *
 * 核心变更:
 *   - ITD+ILD per-sample panning → 256-tap HRIR 直接时域卷积
 *   - 新增头部遮挡低通滤波、耳廓缺口着色、肩部反射
 *   - HRIR 缓存: 24 方向 × 15° 步进 × 256 taps
 */
class BinauralRenderer {
public:
    BinauralRenderer();
    ~BinauralRenderer();

    bool initialize(int32_t sampleRate = 48000, int32_t frameSize = 256);
    void shutdown();
    bool isInitialized() const { return m_initialized; }

    void setHrtfParams(const HrtfParams& params);
    const HrtfParams& getHrtfParams() const { return m_hrtfParams; }

    void render(const std::vector<struct VirtualObject>& objects,
                float listenerAzimuth, float* outputStereo, int64_t numFrames);

    void renderPassthrough(const float* inputMono, float* outputStereo,
                           int64_t numFrames);

    void setHighPrecision(bool highPrecision);
    void setRoomParams(float rt60, float roomSize);

    // Y=4 output controls (retained)
    void setOutputGain(float gain);
    void setWideMode(bool wide);
    void setTestRotation(bool enabled);
    void setHrtfEnabled(bool enabled);  // Y=5 0156
    void setHrtfNormScale(float scale); // Y=5 0160
    void setHrtfOutputGain(float gain); // Y=5 0160
    void setHrtfGroup(int group) { m_convEngine.setGroup(group); } // 360-PORT

    float getLastRenderTimeMs() const { return m_convEngine.getLastRenderTimeMs(); }

private:
    bool m_initialized = false;
    HrtfParams m_hrtfParams;
    BinauralConvEngine m_convEngine;

    float m_outputGain = 1.0f;
    bool m_wideMode = true;
    bool m_testRotation = false;
    bool m_hrtfEnabled = true;  // Y=5 0156
};

#endif // RENDERER_H
