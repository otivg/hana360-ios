#ifndef DEESSER_H
#define DEESSER_H

#include "eq_filter.h"
#include <cstdint>

/**
 * @brief 齿音抑制 (de-esser) — 动态衰减 6-8kHz 齿音瞬态, 保留正常高频
 *
 * Split-band 结构:
 *   - HP 6kHz 分离高频带 (split)
 *   - HP 5kHz detector → 包络检测 (attack ~2ms, release ~120ms)
 *   - 自适应阈值: max(慢包络×2, 下限), 自适应响度无需绝对校准
 *   - 超过阈值: dB 域压缩 (ratio:1) → 高频带动态衰减
 *   - 低频直通, 高频 × 平滑 gain (防 zipper)
 *
 * 放在 Reverb 之前: 避免混响尾音触发 detector。
 */
class DeEsser {
public:
    DeEsser() = default;

    void initialize(int32_t sampleRate);

    /**
     * @param freqDetectHz detector 高通频率 (探测齿音区, 默认 5000)
     * @param freqSplitHz  split 高通频率 (要衰减的高频带, 默认 6000)
     * @param thresholdDb  自适应阈值下限 (dBFS, 默认 -30)
     * @param ratio        压缩比 (2:1 ~ 5:1, 默认 3)
     * @param attackMs     检测 attack (默认 2ms)
     * @param releaseMs    检测 release (默认 120ms)
     */
    void setParams(float freqDetectHz, float freqSplitHz, float thresholdDb,
                   float ratio, float attackMs, float releaseMs);

    /// in-place 立体声处理 (interleaved LRLR...)
    void processStereoInPlace(float* buf, int64_t numFrames);

    void reset();

private:
    BiquadFilter m_detectL, m_detectR;  // detector 高通 (L/R 独立状态)
    BiquadFilter m_splitL, m_splitR;    // split 高通 (L/R 独立状态)
    float m_threshold = 0.0316f;        // 阈值下限 (linear, -30dBFS)
    float m_ratio = 3.0f;
    float m_attack = 0.002f;            // 秒
    float m_release = 0.12f;            // 秒
    float m_env = 0.0f;                 // detector 包络 (线性)
    float m_longEnv = 0.0f;             // 慢包络 (~1s, 自适应阈值参考)
    float m_gain = 1.0f;                // 平滑后的高频 gain
    int32_t m_sr = 48000;
};

#endif // DEESSER_H
