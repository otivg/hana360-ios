#ifndef BINAURAL_CONVOLUTION_H
#define BINAURAL_CONVOLUTION_H

#include "hrtf_synthesizer.h"
#include "upmix.h"
#include <cstdint>
#include <vector>

/**
 * @brief Y=5: 双耳 HRTF 卷积引擎
 *
 * 将虚拟音频对象通过 HRTF 卷积渲染为双耳立体声。
 *
 * 管线: VirtualObject → HRTF lookup → Direct Convolution → Stereo Mix
 *
 * 直接时域卷积 (非 FFT): HRIR=256 taps, frame=256 samples
 * 复杂度: O(numFrames × hrirLen × numObjects) = 256×256×9
 *        ≈ 590k MAC/frame = 28 MMAC/s @ 48kHz → ARM64 NEON 轻松应对
 */
class BinauralConvEngine {
public:
    BinauralConvEngine();

    /**
     * @brief 初始化
     */
    void initialize(int32_t sampleRate, int32_t frameSize);

    /**
     * @brief 设置个性化 HRTF 参数 → 重建 HRIR 缓存
     */
    void setHrtfParams(const HrtfParams& params);

    /** 360-PORT: Directly select CIPIC group (0..14), rebuild cache */
    void setGroup(int group) { m_synthesizer.setGroup(group); }

    /**
     * @brief 渲染虚拟对象到双耳立体声
     *
     * @param objects 虚拟音频对象列表
     * @param outputStereo [out] interleaved stereo, 预分配 numFrames×2
     * @param numFrames 帧数
     */
    void render(const std::vector<VirtualObject>& objects,
                float* outputStereo, int64_t numFrames);

    /**
     * @brief 直通渲染 (spatial OFF)
     */
    void renderPassthrough(const float* stereoInput, float* outputStereo,
                           int64_t numFrames);

    /**
     * @brief 输出增益
     */
    void setOutputGain(float gain) { m_outputGain = gain; }

    /** Y=5 0160: HRTF 归一化强度 (0.8~2.0, default 1.0) */

    /** Y=5 0160: HRTF 输出增益 (0.8~2.0, default 1.0) */

    /**
     * @brief 获取最后渲染耗时
     */
    float getLastRenderTimeMs() const { return m_lastRenderTimeMs; }

private:
    int32_t m_sampleRate = 48000;
    int32_t m_frameSize = 256;
    float m_outputGain = 1.0f;
    float m_lastRenderTimeMs = 0.0f;

    HrtfSynthesizer m_synthesizer;

    // 渲染缓冲区
    std::vector<float> m_workBufL;   // 左声道工作缓冲
    std::vector<float> m_workBufR;   // 右声道工作缓冲
    std::vector<float> m_hrirL;      // 当前对象左耳 HRIR
    std::vector<float> m_hrirR;      // 当前对象右耳 HRIR

    // 重叠缓存 (前帧尾部, 用于避免帧边界断点)
    std::vector<float> m_tailL;
    std::vector<float> m_tailR;
};
#endif // BINAURAL_CONVOLUTION_H
