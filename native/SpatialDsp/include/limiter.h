#ifndef LIMITER_H
#define LIMITER_H

#include <cstdint>
#include <vector>

/**
 * @brief Y=5: 立体声峰值限制器 (Brickwall Peak Limiter)
 *
 * 防止 HRTF 卷积 + EQ + Reverb 增益叠加导致的数字削波失真。
 *
 * 设计参考:
 *   - Giannoulis et al. "Digital Dynamic Range Compressor Design" (JAES 2012)
 *   - Zölzer "DAFX: Digital Audio Effects" §7.3
 *   - Steam Audio: gain interpolation + per-frame normalization
 *
 * 参数:
 *   - threshold: 触发峰值限制的电平 (dB, 默认 -0.3dB)
 *   - releaseTime: 增益衰减释放时间 (ms, 默认 50ms)
 *   - attackTime: 增益衰减开始时间 (ms, 默认 1ms, 快攻避免瞬态削波)
 *
 * 算法: 逐采样平滑增益衰减, one-pole smoothing envelope follower
 */
class StereoLimiter {
public:
    StereoLimiter();

    /**
     * @brief 初始化
     * @param sampleRate 采样率 (Hz)
     * @param frameSize 帧大小 (samples per channel)
     */
    void initialize(int32_t sampleRate, int32_t frameSize);

    /**
     * @brief 处理一帧立体声
     * @param stereoInOut 立体声数据 (interleaved, 就地修改)
     * @param numFrames 帧数
     */
    void process(float* stereoInOut, int64_t numFrames);

    /**
     * @brief 设置阈值
     * @param db 阈值电平 (dB, 0=max, 典型 -0.3 ~ -3.0)
     */
    void setThreshold(float db);

    /**
     * @brief 重置状态
     */
    void reset();

private:
    int32_t m_sampleRate = 48000;
    float m_thresholdLinear = 0.97f;      // ~ -0.3 dB
    float m_releaseCoef = 0.0f;           // 基于 releaseTime 的平滑系数
    float m_attackCoef = 0.0f;            // 基于 attackTime 的平滑系数
    float m_gainReduction = 1.0f;         // 当前增益衰减 (1.0 = 无衰减)
    bool m_initialized = false;
};

#endif // LIMITER_H
