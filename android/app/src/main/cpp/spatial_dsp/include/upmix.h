#ifndef UPMIX_H
#define UPMIX_H

#include <cstdint>
#include <vector>
#include <complex>

/**
 * @brief 虚拟音频对象
 */
struct VirtualObject {
    std::vector<float> audioData;   // 单声道音频数据 (独立!)
    float azimuth_deg = 0.0f;       // 方位角
    float elevation_deg = 0.0f;     // 仰角
    float distance = 1.0f;          // 距离系数
    float gain = 1.0f;              // 对象增益
};

/**
 * @brief Y=5 0159: 频域自适应分离上混引擎
 *
 * 核心算法:
 *   1. STFT 频域分解 (512-pt, 75% overlap Hann 窗)
 *   2. 每 time-frequency bin 独立分离:
 *      - PCE (Principal Component Extraction): 2×2 协方差矩阵特征值分解
 *      - λ₁ (major) → 前景 (L/R/C steering)
 *      - λ₂ (minor) → 环境 (LS/RS/Height, decorrelated)
 *   3. Ambience decorrelation: 2nd-order allpass filter
 *   4. Bass management: Linkwitz-Riley 2nd-order crossover @120Hz → LFE
 *   5. ISTFT per-object → 独立 audioData
 *
 * 参考:
 *   - Dolby Pro Logic II / Dolby Surround Upmixer (adaptive steering)
 *   - DTS Neural:X (frequency-domain phase analysis)
 *   - Avendano & Jot (2012): "Frequency Domain Techniques for Stereo to
 *     Multichannel Upmix" (AES Convention)
 *   - Faller & Baumgarte: "Binaural Cue Coding" (parametric spatial audio)
 */
class UpmixEngine {
public:
    UpmixEngine();
    ~UpmixEngine();

    void initialize(int32_t sampleRate = 48000, int32_t fftSize = 512);
    std::vector<VirtualObject> process(const float* stereoInput, int64_t numFrames);

    void setLayoutMode(int mode);  // 0=Music, 1=Cinema, 2=Game
    void setMasterGain(float coeff) { m_masterGain = coeff; }  // V5.4: 1.0-3.0x
    float getMasterGain() const { return m_masterGain; }

    // V5.4: Speaker distance + channel compensation as coefficient multipliers (1.0-3.0x)
    void setSpeakerDistance(float coeff);  // V5.4: 1.0-3.0x, step 0.5
    float getSpeakerDistance() const { return m_speakerDistance; }
    void setOutputLevel(float coeff);  // V5.4: 1.0-3.0x, step 0.5
    float getOutputLevel() const { return m_outputLevelDB; }
    int32_t getObjectCount() const { return m_objectCount; }
    void reset();

private:
    // STFT helpers
    void fwdFFT(std::complex<float>* data, int n);
    void invFFT(std::complex<float>* data, int n);
    void buildWindow();

    // Per-bin analysis
    struct BinResult {
        float foregroundWeight;   // λ₁ fraction
        float ambientWeight;      // λ₂ fraction
        float panPosition;        // stereo pan [-1=hardL, 0=center, +1=hardR]
        float phaseDiff;          // L/R phase difference → height cue
    };
    BinResult analyzeBin(const std::complex<float>& L, const std::complex<float>& R);

    // Decorrelation (2nd-order allpass)
    struct Decorrelator {
        float x1 = 0, x2 = 0, y1 = 0, y2 = 0;
        float process(float x);
    };

    // Linkwitz-Riley 2nd-order crossover
    struct LR2Crossover {
        // state for LP and HP
        float lp_b0 = 0, lp_b1 = 0, lp_b2 = 0;
        float lp_a1 = 0, lp_a2 = 0;
        float lp_x1 = 0, lp_x2 = 0, lp_y1 = 0, lp_y2 = 0;
        void setCutoff(float fc, float fs);
        float processLP(float x);
        float processHP(float x);
    };

    int32_t m_sampleRate = 48000;
    int32_t m_fftSize = 512;
    int32_t m_hopSize = 128;   // 75% overlap
    int32_t m_objectCount = 9;

    // Window
    std::vector<float> m_window;

    // FFT buffers (L and R channels)
    std::vector<float> m_inputBufferL;
    std::vector<float> m_inputBufferR;
    std::vector<std::complex<float>> m_specL;
    std::vector<std::complex<float>> m_specR;

    // Overlap-add per object
    std::vector<std::vector<float>> m_olaBuf;  // [object][fftSize]

    // Decorrelators per surround/height channel
    std::vector<Decorrelator> m_decorr;

    // Bass management
    LR2Crossover m_crossover;

    // Virtual speaker positions
    struct SpeakerPosition {
        float azimuth;
        float elevation;
        float gain;
    };
    std::vector<SpeakerPosition> m_speakers;
    float m_masterGain = 2.0f;        // V9.3: default 2.0x
    float m_speakerDistance = 3.0f;   // V9.3: Music default 3.0x
    float m_outputLevelDB = 2.0f;     // V9.3: default 2.0x
    int32_t m_layoutMode = 0;      // Y=5 0173: tracks current mode

    // Previous frame phase for smoothing
    std::vector<float> m_prevPan;    // per bin
    bool m_firstFrame = true;
};

#endif // UPMIX_H
