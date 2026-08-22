#ifndef EQ_FILTER_H
#define EQ_FILTER_H

#include "thx_params.h"
#include <cstdint>

/**
 * @brief 单段 Biquad IIR 滤波器 (Direct Form II)
 *
 * 传递函数:
 *   H(z) = (b0 + b1*z^-1 + b2*z^-2) / (1 + a1*z^-1 + a2*z^-2)
 *
 * 支持类型: Peak, LowShelf, HighShelf, LowPass, HighPass
 * 参考: Audio EQ Cookbook (Robert Bristow-Johnson)
 */
class BiquadFilter {
public:
    BiquadFilter() = default;

    /**
     * @brief 设置滤波器参数并重新计算系数
     * @param type 滤波器类型
     * @param freqHz 中心/截止频率
     * @param gainDb 增益 (dB), shelf/pass 忽略
     * @param q Q 值
     * @param sampleRate 采样率
     */
    void setParams(EqFilterType type, float freqHz, float gainDb, float q, int32_t sampleRate);

    /**
     * @brief 处理单个样本
     */
    inline float process(float x) {
        return processChannel(x, m_x1, m_x2, m_y1, m_y2);
    }

    /// V3.1.1: 左右声道独立状态 — 之前 L/R 共用 m_x1..m_y2 导致状态污染,
    /// 滤波器反馈系数使状态指数发散 → NaN → 静音。
    inline float processChannel(float x, float& x1, float& x2, float& y1, float& y2) {
        float y = m_b0 * x + m_b1 * x1 + m_b2 * x2
                - m_a1 * y1 - m_a2 * y2;
        x2 = x1; x1 = x;
        y2 = y1; y1 = y;
        return y;
    }

    /// V3.1.1: 双声道立体声处理 (interleaved LRLR..., in-place)
    inline void processStereoInPlace(float* buf, int64_t numFrames) {
        for (int64_t i = 0; i < numFrames; i++) {
            float L = buf[i * 2];
            float R = buf[i * 2 + 1];
            buf[i * 2]     = processChannel(L, m_x1, m_x2, m_y1, m_y2);
            buf[i * 2 + 1] = processChannel(R, m_rx1, m_rx2, m_ry1, m_ry2);
        }
    }

    /// V3.1.1: 重置双声道状态
    inline void resetStereo() {
        m_x1 = m_x2 = m_y1 = m_y2 = 0.0f;
        m_rx1 = m_rx2 = m_ry1 = m_ry2 = 0.0f;
    }

    /**
     * @brief 处理帧
     * @param input N 样本 (mono)
     * @param output N 样本 (mono), 可与 input 同址
     * @param numFrames 样本数
     */
    void process(const float* input, float* output, int64_t numFrames);

    /**
     * @brief 重置滤波器状态
     */
    void reset();

private:
    float m_b0 = 1.0f, m_b1 = 0.0f, m_b2 = 0.0f;
    float m_a1 = 0.0f, m_a2 = 0.0f;
    // V3.1.1: 左声道状态
    float m_x1 = 0.0f, m_x2 = 0.0f;
    float m_y1 = 0.0f, m_y2 = 0.0f;
    // V3.1.1: 右声道独立状态
    float m_rx1 = 0.0f, m_rx2 = 0.0f;
    float m_ry1 = 0.0f, m_ry2 = 0.0f;
};

/**
 * @brief 10-band PEQ 级联
 *
 * 级联顺序: band[0] → band[1] → ... → band[9]
 * 每个 band 为独立的 BiquadFilter
 */
class EqCascade {
public:
    EqCascade();

    /**
     * @brief 设置单 band 参数
     */
    void setBand(int index, const EqBand& band, int32_t sampleRate);

    /**
     * @brief 设置全部 bands
     */
    void setAllBands(const EqBand bands[10], int32_t sampleRate);

    /**
     * @brief 开启/关闭 EQ
     */
    void setEnabled(bool enabled) { m_enabled = enabled; }

    /**
     * @brief 处理立体声帧
     * @param stereoInOut interleaved LRLRLR..., 既是输入也是输出
     * @param numFrames 帧数
     */
    void processStereo(float* stereoInOut, int64_t numFrames);

    /**
     * @brief 重置所有滤波器
     */
    void reset();

private:
    BiquadFilter m_bands[10];    // 10 段 PEQ
    bool m_enabled = false;
};

#endif // EQ_FILTER_H
