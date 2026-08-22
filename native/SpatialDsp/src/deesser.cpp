#include "deesser.h"

#include <algorithm>
#include <cmath>

void DeEsser::initialize(int32_t sampleRate) {
    m_sr = sampleRate;
    reset();
}

void DeEsser::setParams(float freqDetectHz, float freqSplitHz, float thresholdDb,
                        float ratio, float attackMs, float releaseMs) {
    if (m_sr <= 0) m_sr = 48000;
    m_detectL.setParams(EqFilterType::HighPass, freqDetectHz, 0.0f, 0.7f, m_sr);
    m_detectR.setParams(EqFilterType::HighPass, freqDetectHz, 0.0f, 0.7f, m_sr);
    m_splitL.setParams(EqFilterType::HighPass, freqSplitHz, 0.0f, 0.7f, m_sr);
    m_splitR.setParams(EqFilterType::HighPass, freqSplitHz, 0.0f, 0.7f, m_sr);
    m_threshold = std::pow(10.0f, thresholdDb / 20.0f);
    m_ratio = std::max(1.0f, ratio);
    m_attack = std::max(0.0005f, attackMs / 1000.0f);
    m_release = std::max(0.01f, releaseMs / 1000.0f);
}

void DeEsser::processStereoInPlace(float* buf, int64_t numFrames) {
    const float attackCoeff = 1.0f - std::exp(-1.0f / (m_attack * m_sr));
    const float releaseCoeff = 1.0f - std::exp(-1.0f / (m_release * m_sr));
    const float longCoeff = 1.0f - std::exp(-1.0f / (1.0f * m_sr));  // ~1s 慢包络

    for (int64_t i = 0; i < numFrames; i++) {
        const float L = buf[i * 2];
        const float R = buf[i * 2 + 1];

        // detector: 齿音区 (高频) 能量
        const float dL = m_detectL.process(L);
        const float dR = m_detectR.process(R);
        const float pk = std::max(std::fabs(dL), std::fabs(dR));

        // 包络: 快 attack / 慢 release
        const float coeff = pk > m_env ? attackCoeff : releaseCoeff;
        m_env += (pk - m_env) * coeff;

        // 慢包络 (自适应阈值参考, 跟随歌曲响度)
        m_longEnv += (pk - m_longEnv) * longCoeff;

        // 自适应阈值: max(长期能量×2, 下限)
        const float th = std::max(m_longEnv * 2.0f, m_threshold);

        // gain reduction (dB 域压缩)
        float g = 1.0f;
        if (m_env > th && m_env > 1e-6f) {
            const float envDb = 20.0f * std::log10(m_env);
            const float thDb = 20.0f * std::log10(th);
            const float gr = std::min(0.0f, (envDb - thDb) * (1.0f - 1.0f / m_ratio));
            g = std::pow(10.0f, gr / 20.0f);
        }

        // gain 平滑 (防 zipper): ~50ms
        m_gain += (g - m_gain) * 0.02f;

        // split-band: 低频直通 + 高频 × gain
        const float hiL = m_splitL.process(L);
        const float hiR = m_splitR.process(R);
        buf[i * 2] = L - hiL + hiL * m_gain;
        buf[i * 2 + 1] = R - hiR + hiR * m_gain;
    }
}

void DeEsser::reset() {
    m_detectL.reset();
    m_detectR.reset();
    m_splitL.reset();
    m_splitR.reset();
    m_env = 0.0f;
    m_longEnv = 0.0f;
    m_gain = 1.0f;
}
