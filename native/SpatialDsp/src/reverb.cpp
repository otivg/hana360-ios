/**
 * @file reverb.cpp
 * @brief Schroeder 混响器实现
 */

#include "reverb.h"
#include <cmath>
#include <algorithm>

#ifndef M_PI
#define M_PI 3.14159265358979323846
#endif

Reverb::Reverb() = default;

void Reverb::initialize(int32_t sampleRate) {
    setParams(0.5f, 10.0f, 0.5f, 0.7f, 20.0f, -6.0f, sampleRate);
    m_initialized = true;
}

float Reverb::rt60ToFeedback(float rt60, float delaySec) {
    if (rt60 <= 0.0f || delaySec <= 0.0f) return 0.0f;
    float fb = std::pow(10.0f, -3.0f * delaySec / rt60);
    // V9.3: hard clamp FDN feedback to prevent runaway energy growth
    if (fb > 0.99f) fb = 0.99f;
    return fb;
}

void Reverb::setParams(float rt60, float roomSize, float damping,
                        float diffusion, float preDelayMs, float gainDb,
                        int32_t sampleRate) {
    float sr = (float)sampleRate;

    // Comb filter delays (与 roomSize 成比例)
    int combDelaysMs[4] = { 29, 37, 41, 43 };
    float sizeScale = roomSize / 10.0f;  // 以 10m² 为基准

    for (int i = 0; i < 2; i++) {
        float delaySec = combDelaysMs[i] * sizeScale / 1000.0f;
        int delaySamples = std::max(1, (int)(delaySec * sr));
        float fb = rt60ToFeedback(rt60, delaySec);
        m_combL[i].setup(delaySamples, fb);

        delaySec = combDelaysMs[i + 1] * sizeScale / 1000.0f;
        delaySamples = std::max(1, (int)(delaySec * sr));
        fb = rt60ToFeedback(rt60, delaySec);
        m_combR[i].setup(delaySamples, fb);
    }

    // Allpass delays (与 diffusion 相关)
    int apDelaysMs[2] = { 5, 7 };
    for (int i = 0; i < 2; i++) {
        int delaySamples = std::max(1, (int)(apDelaysMs[i] * sr / 1000.0f));
        m_allpassL[i].setup(delaySamples, diffusion);
        m_allpassR[i].setup(delaySamples, diffusion);
    }

    // Pre-delay
    int preDelaySamples = std::max(1, (int)(preDelayMs * sr / 1000.0f));
    m_preDelay.setup(preDelaySamples);

    // Damping LPF: 一阶低通, cutoff = 2000Hz * (1-damping) + 200Hz
    float cutoffHz = 2000.0f * (1.0f - damping) + 200.0f;
    float omega = 2.0f * M_PI * cutoffHz / sr;
    m_dampingCoeff = omega / (omega + 1.0f);  // 一阶低通系数

    // Gain
    m_wetGain = std::pow(10.0f, gainDb / 20.0f);
    m_dryGain = std::max(0.0f, 1.0f - m_wetGain * 0.5f);  // 简单的 dry/wet mix
    if (gainDb > -3.0f) m_dryGain = 0.7f;  // 高 wet 时 attenuate dry
}

void Reverb::processStereo(float* stereoInOut, int64_t numFrames) {
    if (!m_enabled || !m_initialized) return;

    for (int64_t i = 0; i < numFrames; i++) {
        float inL = stereoInOut[i * 2];
        float inR = stereoInOut[i * 2 + 1];

        // Pre-delay
        m_preDelay.write(inL, inR);
        float wetL = m_preDelay.readL();
        float wetR = m_preDelay.readR();

        // Comb filters (parallel)
        float combOutL = 0.0f, combOutR = 0.0f;
        for (int j = 0; j < 2; j++) {
            combOutL += m_combL[j].process(wetL);
            combOutR += m_combR[j].process(wetR);
        }
        combOutL *= 0.25f;  // normalize
        combOutR *= 0.25f;

        // Damping LPF (one-pole)
        m_dampingLPF[0][0] = m_dampingLPF[0][1];
        m_dampingLPF[0][1] = m_dampingCoeff * combOutL + (1.0f - m_dampingCoeff) * m_dampingLPF[0][0];
        combOutL = m_dampingLPF[0][1];

        m_dampingLPF[1][0] = m_dampingLPF[1][1];
        m_dampingLPF[1][1] = m_dampingCoeff * combOutR + (1.0f - m_dampingCoeff) * m_dampingLPF[1][0];
        combOutR = m_dampingLPF[1][1];

        // Allpass (cascade)
        wetL = m_allpassL[0].process(combOutL);
        wetL = m_allpassL[1].process(wetL);
        wetR = m_allpassR[0].process(combOutR);
        wetR = m_allpassR[1].process(wetR);

        // Dry/Wet mix
        stereoInOut[i * 2] = inL * m_dryGain + wetL * m_wetGain;
        stereoInOut[i * 2 + 1] = inR * m_dryGain + wetR * m_wetGain;
    }
}

void Reverb::reset() {
    for (int j = 0; j < 2; j++) {
        m_combL[j].reset();
        m_combR[j].reset();
        m_allpassL[j].reset();
        m_allpassR[j].reset();
    }
    m_preDelay.reset();
    m_dampingLPF[0][0] = m_dampingLPF[0][1] = 0.0f;
    m_dampingLPF[1][0] = m_dampingLPF[1][1] = 0.0f;
}
