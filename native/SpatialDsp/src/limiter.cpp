/**
 * @file limiter.cpp
 * @brief 立体声峰值限制器实现
 *
 * 峰值检测 → 增益衰减计算 → per-sample 平滑过渡。
 * 快攻 (attack=1ms) 预防瞬态削波, 慢放 (release=50ms) 避免泵浦效应。
 */

#include "limiter.h"
#include "dsp_platform.h"
#include <algorithm>
#include <cmath>
#include <cstring>

#define LOGI(...) DSP_LOGI(__VA_ARGS__)

StereoLimiter::StereoLimiter() = default;

void StereoLimiter::initialize(int32_t sampleRate, int32_t frameSize) {
    (void)frameSize;
    m_sampleRate = sampleRate;

    // V9.3: Attack 3ms (was 1ms) — smoother transient, less click
    float attackSec = 0.003f;
    m_attackCoef = std::exp(-1.0f / (attackSec * sampleRate));

    // Release: 50ms → coefficient
    float releaseSec = 0.050f;
    m_releaseCoef = std::exp(-1.0f / (releaseSec * sampleRate));

    m_gainReduction = 1.0f;
    m_initialized = true;

    LOGI("Limiter init: thr=%.1fdB, attack=1ms, release=50ms",
         -20.0f * std::log10(m_thresholdLinear));
}

void StereoLimiter::setThreshold(float db) {
    m_thresholdLinear = std::pow(10.0f, db / 20.0f);
}

void StereoLimiter::reset() {
    m_gainReduction = 1.0f;
}

void StereoLimiter::process(float* stereoInOut, int64_t numFrames) {
    if (!m_initialized) return;

    for (int64_t i = 0; i < numFrames; i++) {
        float left  = stereoInOut[i * 2];
        float right = stereoInOut[i * 2 + 1];

        // 峰值检测 (取绝对值最大)
        float peak = std::max(std::fabs(left), std::fabs(right));

        // 目标增益衰减: 如果 peak > threshold, 需要衰减到 threshold 以下
        float targetGain = 1.0f;
        if (peak > m_thresholdLinear && peak > 1e-10f) {
            targetGain = m_thresholdLinear / peak;
        }

        // Per-sample smoothing: 快攻慢放
        if (targetGain < m_gainReduction) {
            // Attack: 快速降低增益
            m_gainReduction = m_attackCoef * m_gainReduction
                            + (1.0f - m_attackCoef) * targetGain;
        } else {
            // Release: 缓慢恢复
            m_gainReduction = m_releaseCoef * m_gainReduction
                            + (1.0f - m_releaseCoef) * 1.0f;  // 恢复到 unity
        }

        // 确保不超过阈值后应用增益
        float finalGain = std::min(m_gainReduction, 1.0f);
        stereoInOut[i * 2]     = left  * finalGain;
        stereoInOut[i * 2 + 1] = right * finalGain;

        // Y=5 0156: 硬安全限幅 fallback — 防止平滑 envelope 漏过的瞬态
        stereoInOut[i * 2]     = std::max(-0.99f, std::min(0.99f, stereoInOut[i * 2]));
        stereoInOut[i * 2 + 1] = std::max(-0.99f, std::min(0.99f, stereoInOut[i * 2 + 1]));
    }
}
