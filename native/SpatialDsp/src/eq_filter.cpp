/**
 * @file eq_filter.cpp
 * @brief Biquad 滤波器实现 (Audio EQ Cookbook 公式)
 */

#include "eq_filter.h"
#include <cmath>
#include <algorithm>

#ifndef M_PI
#define M_PI 3.14159265358979323846
#endif

// ============================================================
// BiquadFilter
// ============================================================

void BiquadFilter::setParams(EqFilterType type, float freqHz, float gainDb,
                             float q, int32_t sampleRate) {
    reset();

    float A = std::pow(10.0f, gainDb / 40.0f);
    float w0 = 2.0f * M_PI * freqHz / sampleRate;
    float cosW0 = std::cos(w0);
    float sinW0 = std::sin(w0);
    float alpha = sinW0 / (2.0f * std::max(q, 0.01f));

    switch (type) {
    case EqFilterType::LowPass: {
        float b0 = (1.0f - cosW0) / 2.0f;
        float b1 = 1.0f - cosW0;
        float b2 = (1.0f - cosW0) / 2.0f;
        float a0 = 1.0f + alpha;
        float a1 = -2.0f * cosW0;
        float a2 = 1.0f - alpha;
        m_b0 = b0 / a0; m_b1 = b1 / a0; m_b2 = b2 / a0;
        m_a1 = a1 / a0; m_a2 = a2 / a0;
        break;
    }
    case EqFilterType::HighPass: {
        float b0 = (1.0f + cosW0) / 2.0f;
        float b1 = -(1.0f + cosW0);
        float b2 = (1.0f + cosW0) / 2.0f;
        float a0 = 1.0f + alpha;
        float a1 = -2.0f * cosW0;
        float a2 = 1.0f - alpha;
        m_b0 = b0 / a0; m_b1 = b1 / a0; m_b2 = b2 / a0;
        m_a1 = a1 / a0; m_a2 = a2 / a0;
        break;
    }
    case EqFilterType::LowShelf: {
        float twoSqrtAAlpha = 2.0f * std::sqrt(A) * alpha;
        float b0 = A * ((A + 1.0f) - (A - 1.0f) * cosW0 + twoSqrtAAlpha);
        float b1 = 2.0f * A * ((A - 1.0f) - (A + 1.0f) * cosW0);
        float b2 = A * ((A + 1.0f) - (A - 1.0f) * cosW0 - twoSqrtAAlpha);
        float a0 = (A + 1.0f) + (A - 1.0f) * cosW0 + twoSqrtAAlpha;
        float a1 = -2.0f * ((A - 1.0f) + (A + 1.0f) * cosW0);
        float a2 = (A + 1.0f) + (A - 1.0f) * cosW0 - twoSqrtAAlpha;
        m_b0 = b0 / a0; m_b1 = b1 / a0; m_b2 = b2 / a0;
        m_a1 = a1 / a0; m_a2 = a2 / a0;
        break;
    }
    case EqFilterType::HighShelf: {
        float twoSqrtAAlpha = 2.0f * std::sqrt(A) * alpha;
        float b0 = A * ((A + 1.0f) + (A - 1.0f) * cosW0 + twoSqrtAAlpha);
        float b1 = -2.0f * A * ((A - 1.0f) + (A + 1.0f) * cosW0);
        float b2 = A * ((A + 1.0f) + (A - 1.0f) * cosW0 - twoSqrtAAlpha);
        float a0 = (A + 1.0f) - (A - 1.0f) * cosW0 + twoSqrtAAlpha;
        float a1 = 2.0f * ((A - 1.0f) - (A + 1.0f) * cosW0);
        float a2 = (A + 1.0f) - (A - 1.0f) * cosW0 - twoSqrtAAlpha;
        m_b0 = b0 / a0; m_b1 = b1 / a0; m_b2 = b2 / a0;
        m_a1 = a1 / a0; m_a2 = a2 / a0;
        break;
    }
    case EqFilterType::Peak:
    default: {
        float aAlpha = A * alpha;
        float alphaDivA = alpha / A;
        float b0 = 1.0f + aAlpha;
        float b1 = -2.0f * cosW0;
        float b2 = 1.0f - aAlpha;
        float a0 = 1.0f + alphaDivA;
        float a1 = -2.0f * cosW0;
        float a2 = 1.0f - alphaDivA;
        m_b0 = b0 / a0; m_b1 = b1 / a0; m_b2 = b2 / a0;
        m_a1 = a1 / a0; m_a2 = a2 / a0;
        break;
    }
    }
}

void BiquadFilter::process(const float* input, float* output, int64_t numFrames) {
    for (int64_t i = 0; i < numFrames; i++) {
        output[i] = process(input[i]);
    }
}

void BiquadFilter::reset() {
    m_x1 = 0.0f; m_x2 = 0.0f;
    m_y1 = 0.0f; m_y2 = 0.0f;
}

// ============================================================
// EqCascade
// ============================================================

EqCascade::EqCascade() = default;

void EqCascade::setBand(int index, const EqBand& band, int32_t sampleRate) {
    if (index < 0 || index >= 10) return;
    m_bands[index].setParams(band.type, band.freqHz, band.gainDb, band.q, sampleRate);
}

void EqCascade::setAllBands(const EqBand bands[10], int32_t sampleRate) {
    for (int i = 0; i < 10; i++) {
        m_bands[i].setParams(bands[i].type, bands[i].freqHz,
                             bands[i].gainDb, bands[i].q, sampleRate);
    }
}

void EqCascade::processStereo(float* stereoInOut, int64_t numFrames) {
    if (!m_enabled) return;

    // V3.1.1: 逐样本双声道级联 — 每个 band 的 L/R 状态独立, 避免状态污染。
    // 之前实现先处理所有 left 再处理所有 right, 共享 m_bands[b] 状态 → 反馈发散 → NaN → 静音。
    for (int64_t i = 0; i < numFrames; i++) {
        float left = stereoInOut[i * 2];
        float right = stereoInOut[i * 2 + 1];

        // 10-band cascade: 每 band 双声道同步处理 (L/R 独立状态)
        for (int b = 0; b < 10; b++) {
            float tmp[2] = {left, right};
            m_bands[b].processStereoInPlace(tmp, 1);
            left = tmp[0];
            right = tmp[1];
        }

        stereoInOut[i * 2] = left;
        stereoInOut[i * 2 + 1] = right;
    }
}

void EqCascade::reset() {
    for (int i = 0; i < 10; i++) {
        m_bands[i].reset();
        m_bands[i].resetStereo();
    }
}
