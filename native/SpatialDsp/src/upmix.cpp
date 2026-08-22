/**
 * @file upmix.cpp
 * @brief Y=5 0159: 频域自适应分离上混引擎
 *
 * 立体声 → 9-12 虚拟音频对象 (独立音频数据, 非 copy)
 * 算法: STFT + PCE eigen decomposition + ambience decorrelation + bass management
 */

#include "upmix.h"
#include "dsp_platform.h"
#include <algorithm>
#include <cmath>
#include <cstring>

#define LOGI(...) DSP_LOGI(__VA_ARGS__)

static constexpr float PI = 3.141592653589793f;
static constexpr float BASS_CROSSOVER_HZ = 120.0f;  // LFE crossover

// ============================================================
// FFT (Radix-2 DIT)
// ============================================================
static void fft_core(std::complex<float>* data, int n, bool inverse) {
    for (int i = 1, j = 0; i < n; i++) {
        int bit = n >> 1;
        for (; j & bit; bit >>= 1) j ^= bit;
        j ^= bit;
        if (i < j) std::swap(data[i], data[j]);
    }
    for (int len = 2; len <= n; len <<= 1) {
        float angle = 2.0f * PI / len * (inverse ? -1.0f : 1.0f);
        std::complex<float> wlen(std::cos(angle), std::sin(angle));
        for (int i = 0; i < n; i += len) {
            std::complex<float> w(1.0f);
            for (int j = 0; j < len / 2; j++) {
                std::complex<float> u = data[i + j];
                std::complex<float> v = data[i + j + len / 2] * w;
                data[i + j] = u + v;
                data[i + j + len / 2] = u - v;
                w *= wlen;
            }
        }
    }
    if (inverse) {
        for (int i = 0; i < n; i++) data[i] /= (float)n;
    }
}

void UpmixEngine::fwdFFT(std::complex<float>* data, int n) { fft_core(data, n, false); }
void UpmixEngine::invFFT(std::complex<float>* data, int n) { fft_core(data, n, true); }

// ============================================================
// Hann window
// ============================================================
void UpmixEngine::buildWindow() {
    m_window.resize(m_fftSize);
    for (int i = 0; i < m_fftSize; i++)
        m_window[i] = 0.5f * (1.0f - std::cos(2.0f * PI * i / (m_fftSize - 1)));
}

// ============================================================
// Decorrelator (2nd-order allpass) — prevents front/surround correlation
// ============================================================
float UpmixEngine::Decorrelator::process(float x) {
    // H(z) = (a2 + a1*z⁻¹ + z⁻²) / (1 + a1*z⁻¹ + a2*z⁻²)
    static const float a1 = -1.5f;  // allpass coefficients
    static const float a2 = 0.7f;
    float y = a2 * x + a1 * x1 + x2 - a1 * y1 - a2 * y2;
    x2 = x1; x1 = x;
    y2 = y1; y1 = y;
    return y;
}

// ============================================================
// Linkwitz-Riley 2nd-order crossover
// ============================================================
void UpmixEngine::LR2Crossover::setCutoff(float fc, float fs) {
    float w0 = 2.0f * PI * fc / fs;
    float cosW = std::cos(w0);
    float sinW = std::sin(w0);
    float alpha = sinW / (2.0f * 0.7071f); // Q=0.7071 (Butterworth)
    // LP: b0 = (1-cosW)/2, b1 = 1-cosW, b2 = (1-cosW)/2, a1 = -2cosW, a2 = 1-alpha
    lp_b0 = (1.0f - cosW) / 2.0f;
    lp_b1 = 1.0f - cosW;
    lp_b2 = lp_b0;
    float a0 = 1.0f + alpha;
    lp_a1 = -2.0f * cosW / a0;
    lp_a2 = (1.0f - alpha) / a0;
    lp_b0 /= a0; lp_b1 /= a0; lp_b2 /= a0;
}

float UpmixEngine::LR2Crossover::processLP(float x) {
    float y = lp_b0 * x + lp_b1 * lp_x1 + lp_b2 * lp_x2 - lp_a1 * lp_y1 - lp_a2 * lp_y2;
    lp_x2 = lp_x1; lp_x1 = x;
    lp_y2 = lp_y1; lp_y1 = y;
    return y;
}

float UpmixEngine::LR2Crossover::processHP(float x) {
    float yLP = processLP(x);
    return x - yLP;  // HP = input - LP (Linkwitz-Riley property)
}

// ============================================================
// Per-bin analysis: PCE + panning + phase
// ============================================================
UpmixEngine::BinResult UpmixEngine::analyzeBin(const std::complex<float>& L,
                                                 const std::complex<float>& R) {
    BinResult r;

    // 2×2 covariance matrix: [|L|², conj(L)*R; conj(R)*L, |R|²]
    float l2 = std::norm(L);
    float r2 = std::norm(R);
    float lr = std::real(std::conj(L) * R);  // Re(cross-correlation)

    // Eigenvalues of [l2  lr; lr  r2]:
    // λ = (l2+r2)/2 ± sqrt(((l2-r2)/2)² + lr²)
    float trace = l2 + r2;
    float det = l2 * r2 - lr * lr;
    float discriminant = trace * trace - 4.0f * det;
    if (discriminant < 0.0f) discriminant = 0.0f;
    float sqrtDisc = std::sqrt(discriminant);

    float lambda1 = (trace + sqrtDisc) / 2.0f;  // major
    float lambda2 = (trace - sqrtDisc) / 2.0f;  // minor

    float total = std::max(lambda1 + lambda2, 1e-10f);
    r.foregroundWeight = std::sqrt(lambda1 / total);
    r.ambientWeight   = std::sqrt(lambda2 / total);

    // Pan position from ICLD: sign based on energy ratio
    if (l2 + r2 > 1e-10f) {
        r.panPosition = (r2 - l2) / (l2 + r2);  // [-1=hardL .. +1=hardR]
    } else {
        r.panPosition = 0.0f;
    }

    // Y=5 0168: Phase diff guarded — std::arg(0,0)=NaN on some impl
    float magL = std::abs(L), magR = std::abs(R);
    float phaseL = (magL < 1e-12f) ? 0.0f : std::arg(L);
    float phaseR = (magR < 1e-12f) ? 0.0f : std::arg(R);
    r.phaseDiff = std::fmod(phaseL - phaseR + PI, 2.0f * PI) - PI;

    return r;
}

// ============================================================
// Constructor / Destructor
// ============================================================
UpmixEngine::UpmixEngine() {
    setLayoutMode(0);  // Music default
}

UpmixEngine::~UpmixEngine() = default;

// ============================================================
// Initialize
// ============================================================
void UpmixEngine::initialize(int32_t sampleRate, int32_t fftSize) {
    m_sampleRate = sampleRate;
    m_fftSize = fftSize;
    m_hopSize = fftSize / 4;  // 75% overlap
    int half = fftSize / 2;

    buildWindow();
    m_inputBufferL.resize(fftSize * 2, 0.0f);
    m_inputBufferR.resize(fftSize * 2, 0.0f);
    m_specL.resize(fftSize);
    m_specR.resize(fftSize);

    // OLA buffers per object
    m_olaBuf.resize(12);  // max objects
    for (auto& buf : m_olaBuf) buf.resize(fftSize, 0.0f);

    // Decorrelators per possible surround/height channels
    m_decorr.resize(8);

    m_crossover.setCutoff(BASS_CROSSOVER_HZ, (float)sampleRate);
    m_prevPan.resize(half, 0.0f);

    LOGI("Upmix vY5.0159: STFT %d-pt hop=%d, PCE+ambience+LR2xover@%.0fHz, %d objects",
         fftSize, m_hopSize, BASS_CROSSOVER_HZ, m_objectCount);
}

// ============================================================
// Layout modes (same as before)
// ============================================================
void UpmixEngine::setLayoutMode(int mode) {
    m_layoutMode = mode;
    // Y=5 0162: speaker gains halved
    switch (mode) {
        case 0: m_speakers = {{-30,0,0.5f},{30,0,0.5f},{0,0,0.4f},{0,-30,0.3f},{-110,0,0.35f},{110,0,0.35f},{-30,45,0.25f},{30,45,0.25f},{0,90,0.15f}}; break;
        case 1: m_speakers = {{-30,0,0.5f},{30,0,0.5f},{0,0,0.4f},{0,-30,0.3f},{-110,0,0.35f},{110,0,0.35f},{-135,0,0.25f},{135,0,0.25f},{-45,45,0.25f},{45,45,0.25f},{0,45,0.2f},{0,90,0.15f}}; break;
        case 2: m_speakers = {{-30,0,0.5f},{30,0,0.5f},{0,0,0.4f},{0,0,0.2f},{-90,0,0.35f},{90,0,0.35f},{-150,0,0.25f},{150,0,0.25f}}; break;
    }

    // Y=5 0173: Mode-dependent defaults
    // V5.1: Layout mode defaults as coefficient multipliers (1.0-10.0x)
    // Music: balanced, moderate distance + compensation
    // Cinema: immersive, closer distance, stronger compensation
    switch (mode) {
        case 0: m_speakerDistance = 3.0f; m_masterGain = 2.0f; m_outputLevelDB = 2.0f; break;  // V9.3: Music
        case 1: m_speakerDistance = 2.0f; m_masterGain = 2.0f; m_outputLevelDB = 2.0f; break;  // V9.3: Cinema
        case 2: m_speakerDistance = 1.5f; m_masterGain = 2.0f; m_outputLevelDB = 2.0f; break;  // V9.3: Game
    }
    m_objectCount = (int32_t)m_speakers.size();
    m_firstFrame = true;
    LOGI("Layout=%d (%d objects) distCoef=%.1fx outCoef=%.1fx", mode, m_objectCount, m_speakerDistance, m_outputLevelDB);
}

void UpmixEngine::setSpeakerDistance(float coeff) {
    m_speakerDistance = std::max(1.0f, std::min(5.0f, coeff));
}

void UpmixEngine::setOutputLevel(float coeff) {
    m_outputLevelDB = std::max(0.5f, std::min(6.0f, coeff));
}

// ============================================================
// Main process: STFT → PCE → allocate → ISTFT per object
// ============================================================
// ============================================================
// Main process: 时域分离 (Y=5 0169 simplification)
// 放弃 STFT/PCE/ISTFT 管线，回到简单时域分离
// 消灭所有 NaN 风险，确保声音输出后再迭代
// ============================================================
// ============================================================
// Main process: Soft Matrix-Inspired Steering (Y=5 0170)
// Reference: GWBasic/soft_matrix DefaultMatrix::steer()
// Phase diff -> front/back, amplitude ratio -> left/right
// Every div and arg() guarded with epsilon
// ============================================================
// Main process: Soft Matrix Steering v2 (Y=5 0171)
// Distance-Aware Clean Steering (Y=5 0173)
// ============================================================

// ============================================================
// Main process: Clean Steering (Y=5 0172)
// Fix: clean energy-preserving routing, no per-sample hard switches
// ============================================================
#define DEBUG_UPMIX 0
#define UPMIX_TRACE 0  // 0175 diagnosis: per-stage signal level trace  // set to 1 for diag logs

// ============================================================
// Main process: Distance-Aware Clean Steering (Y=5 0173)
// Per-channel dB gain + ITD delay from speaker distance
// ============================================================
#define DEBUG_UPMIX 0
#define UPMIX_TRACE 0    // 0175: per-stage signal level trace
#define UPMIX_CH_DIAG 1  // 0177v2: per-channel peak (every 80th hop)

#define DEBUG_UPMIX 0
#define UPMIX_TRACE 0  // 0175 diagnosis: per-stage signal level trace

#define DEBUG_UPMIX 0
#define UPMIX_TRACE 0  // 0175 diagnosis: per-stage signal level trace

std::vector<VirtualObject> UpmixEngine::process(const float* stereoInput, int64_t numFrames) {
    static int callCount = 0;
    if (++callCount == 1 || callCount % 50 == 0)
        LOGI("UPMIX-ENTRY#%d: frames=%lld objects=%d mode=%d", callCount, (long long)numFrames, m_objectCount, m_layoutMode);

    const int hopSize = 256, winSize = 512;
    const int numHops = (int)((numFrames + hopSize - 1) / hopSize);

    // Output objects
    std::vector<VirtualObject> objects(m_objectCount);
    for (int i = 0; i < m_objectCount; i++) {
        objects[i].audioData.resize(numFrames, 0.0f);
        objects[i].azimuth_deg = m_speakers[i].azimuth;
        objects[i].elevation_deg = m_speakers[i].elevation;
        objects[i].gain = m_speakers[i].gain;
        objects[i].distance = m_speakerDistance;
    }

    // Per-channel gain constants
    const float COMP = 2.0f, ctrScale = 0.707f;
    float dbLinear = std::pow(10.0f, m_outputLevelDB / 20.0f);
    float distAtten = std::pow(3.0f / (m_speakerDistance < 0.1f ? 0.1f : m_speakerDistance), 0.35f);

    // Hann window
    static std::vector<float> hann(winSize);
    static bool wInit = false;
    if (!wInit) {
        for (int i = 0; i < winSize; i++) hann[i] = 0.5f*(1.0f-std::cos(2.0f*PI*i/(winSize-1)));
        wInit = true;
    }

    // FFT scratch (complex)
    static std::vector<std::complex<float>> Lfft(winSize), Rfft(winSize);

    // "Upmix FFT" buffer — per-hop complex gains applied here, then IFFT'd immediately
    static std::vector<std::complex<float>> u0(winSize),u1(winSize),u2(winSize),
        u3(winSize),u4(winSize),u5(winSize),u6(winSize),u7(winSize),u8(winSize);

    // Time-domain OLA tail buffers (carry 256 samples to next hop)
    static std::vector<float> tail0(hopSize,0),tail1(hopSize,0),tail2(hopSize,0),
        tail3(hopSize,0),tail4(hopSize,0),tail5(hopSize,0),tail6(hopSize,0),
        tail7(hopSize,0),tail8(hopSize,0);

    const float olaScale = 2.0f; // Hann 50% OLA gain (IFFT already divides by N)

    for (int hop = 0; hop < numHops; hop++) {
        int64_t base = (int64_t)hop * hopSize;

        // 1. Load windowed samples
        for (int i = 0; i < hopSize; i++) {
            int64_t idx = base + i;
            float L = (idx<numFrames)?stereoInput[idx*2]:0.0f, R=(idx<numFrames)?stereoInput[idx*2+1]:0.0f;
            Lfft[i].real(hann[i]*L); Lfft[i].imag(0);
            Rfft[i].real(hann[i]*R); Rfft[i].imag(0);
        }
        for (int i = hopSize; i < winSize; i++) {
            int64_t pdx = base + (i - hopSize);
            float L=(pdx<numFrames)?stereoInput[pdx*2]:0.0f, R=(pdx<numFrames)?stereoInput[pdx*2+1]:0.0f;
            Lfft[i].real(hann[i]*L); Lfft[i].imag(0);
            Rfft[i].real(hann[i]*R); Rfft[i].imag(0);
        }

        // 2. Forward FFT
        fwdFFT(Lfft.data(), winSize);
        fwdFFT(Rfft.data(), winSize);

#if UPMIX_TRACE
        { float absL=0,absR=0;
          for(int i=0;i<winSize;i++){absL+=std::abs(Lfft[i]);absR+=std::abs(Rfft[i]);}
          LOGI("TRACE-FFT #%d: sumMag L=%.4f R=%.4f",hop,absL,absR);}
#endif

        // 3. Zero U-buffers for this hop
        for (int b=0; b<winSize; b++) u0[b]=u1[b]=u2[b]=u3[b]=u4[b]=u5[b]=u6[b]=u7[b]=u8[b]=std::complex<float>(0,0);

        // 4. Per-bin M/S Steering (Y=5 0177): per-mode allocation + temporal smooth
        // Y=5 0177: per-mode frequency allocation tables
        // Music: tight front image, natural surround bleed
        // Cinema: moderate width, immersive surrounds
        // Game: precise directional cues, strong height
        struct Alloc { float front, surround, height; };
        Alloc* allocTable = nullptr;
        static Alloc musicAlloc[4] = {
            {0.95f,0.05f,0.00f}, // <300Hz: bass stays center
            {0.82f,0.15f,0.03f}, // 300-2kHz: vocal range, mostly front
            {0.65f,0.28f,0.07f}, // 2-8kHz: presence, moderate surround
            {0.50f,0.35f,0.15f}  // >8kHz: air, more spread
        };
        static Alloc cinemaAlloc[4] = {
            {0.92f,0.08f,0.00f},
            {0.70f,0.24f,0.06f},
            {0.55f,0.35f,0.10f},
            {0.40f,0.42f,0.18f}
        };
        static Alloc gameAlloc[4] = {
            {0.93f,0.07f,0.00f},
            {0.75f,0.18f,0.07f},
            {0.60f,0.28f,0.12f},
            {0.45f,0.35f,0.20f}
        };
        switch(m_layoutMode){case 0:allocTable=musicAlloc;break;case 1:allocTable=cinemaAlloc;break;default:allocTable=gameAlloc;break;}

        // Y=5 0177v2: dual-axis smoothing
        //   Temporal (α=0.08): prevents per-bin frame-to-frame jumps
        //   Spectral  (3-bin average): prevents adjacent bin discontinuities → ringing
        static std::vector<float> smoothFront(winSize,0.95f), smoothSurr(winSize,0.05f), smoothHeight(winSize,0.0f);
        static std::vector<float> specFront(winSize), specSurr(winSize), specHeight(winSize);
        const float tmAlpha = 0.10f;
        const int specRadius = 2; // ±2 bins ≈ ±187Hz smoothing

        for (int b = 0; b < winSize; b++) {
            float freqHz = (float)b * 48000.0f / (float)winSize;
            int band = (freqHz<300)?0:(freqHz<2000)?1:(freqHz<8000)?2:3;
            auto& a = allocTable[band];
            smoothFront[b] += tmAlpha*(a.front - smoothFront[b]);
            smoothSurr[b]  += tmAlpha*(a.surround - smoothSurr[b]);
            smoothHeight[b]+= tmAlpha*(a.height - smoothHeight[b]);
        }

        // 5. Spectral smoothing (per-bin boxcar, separate pass for correct averaging)
        for (int b = 0; b < winSize; b++) {
            float sf=0,ss=0,sh=0; int cnt=0;
            for (int db=-specRadius;db<=specRadius;db++) {
                int nb=b+db; if(nb>=0&&nb<winSize){sf+=smoothFront[nb];ss+=smoothSurr[nb];sh+=smoothHeight[nb];cnt++;}
            }
            specFront[b]=sf/cnt; specSurr[b]=ss/cnt; specHeight[b]=sh/cnt;
        }

        // 6. Decision-Directed Routing (0177v3): exclusive front/surround per bin
        // Fix: phantom center interference → comb filtering in binaural render
        // Each bin routed EITHER to front (L/R/C) OR surround (LS/RS) based on directRatio
        for (int b = 0; b < winSize; b++) {
            auto Mid  = Lfft[b] + Rfft[b];
            auto Side = Lfft[b] - Rfft[b];

            float midE  = std::norm(Mid) + 1e-12f;
            float sideE = std::norm(Side) + 1e-12f;
            float directRatio = midE / (midE + sideE);

            float Lr=Lfft[b].real(),Li=Lfft[b].imag(),Rr=Rfft[b].real(),Ri=Rfft[b].imag();
            float dotLR = Lr*Rr + Li*Ri;
            float backWeight = (dotLR < 0.0f) ? std::min(-dotLR/(midE+1e-12f), 0.8f) : 0.0f;

            float absL=std::sqrt(Lr*Lr+Li*Li), absR=std::sqrt(Rr*Rr+Ri*Ri);
            float sumA=absL+absR+1e-12f, panInst=(absL-absR)/sumA;

            float frontF = specFront[b], surrF = specSurr[b], hF = specHeight[b];
            float gain = dbLinear * COMP * distAtten;

            // Decision: directional (>0.65) → front only; ambient (<0.35) → surround only
            float dirBlend;
            if (directRatio > 0.65f)      dirBlend = 1.0f;  // pure front
            else if (directRatio < 0.35f)  dirBlend = 0.0f;  // pure surround/height
            else                           dirBlend = (directRatio - 0.35f) / 0.30f; // linear blend

            float ambBlend = 1.0f - dirBlend;

            // Front path (L/R/C): scaled by dirBlend
            float frontW = frontF * dirBlend;
            float lWeight = frontW * (1.0f - panInst * 0.5f);
            float rWeight = frontW * (1.0f + panInst * 0.5f);
            u0[b] = Mid * lWeight * m_speakers[0].gain * gain;
            u1[b] = Mid * rWeight * m_speakers[1].gain * gain;

            // C: only truly directional content (dirBlend × frontF), no phantom overlap
            u2[b] = Mid * frontW * 0.5f * ctrScale * m_speakers[2].gain * gain;

            if (b <= 1) u3[b] = Mid * 0.5f * m_speakers[3].gain * gain;

            // Surround/Height path: scaled by ambBlend, frequency-steered
            float sWeight = surrF * ambBlend * (1.0f - backWeight * 0.3f + backWeight * 0.7f);
            u4[b] =  Side * sWeight * m_speakers[4].gain * gain;
            u5[b] = -Side * sWeight * m_speakers[5].gain * gain;

            float hWeight = hF * ambBlend * backWeight;
            u6[b] =  Side * hWeight * m_speakers[6].gain * gain;
            u7[b] = -Side * hWeight * m_speakers[7].gain * gain;

            if (m_objectCount > 8)
                u8[b] = Mid * hF * ambBlend * backWeight * 0.3f * m_speakers[8].gain * gain;
        }

#if UPMIX_TRACE
        if(hop<3||hop%50==0){ float mx=0;
          for(int b=0;b<winSize;b++)mx=std::max(mx,std::abs(u0[b]));
          LOGI("TRACE-POST #%d: u0_max=%.6f gain=%.3f",
               hop,mx,dbLinear*COMP*distAtten);}
#endif

        // 5. IFFT all channels → time domain
        invFFT(u0.data(),winSize);invFFT(u1.data(),winSize);invFFT(u2.data(),winSize);
        invFFT(u3.data(),winSize);invFFT(u4.data(),winSize);invFFT(u5.data(),winSize);
        invFFT(u6.data(),winSize);invFFT(u7.data(),winSize);
        if(m_objectCount>8)invFFT(u8.data(),winSize);

#if UPMIX_TRACE
        if(hop<3||hop%50==0){ float mx=0;
          for(int i=0;i<winSize;i++){mx=std::max(mx,std::max(std::abs(u0[i].real()),std::abs(u0[i].imag())));}
          LOGI("TRACE-IFFT #%d: afterIFFT u0[0..3]=%.6f %.6f %.6f %.6f max=%.4f scale=%.6f",
               hop,u0[0].real(),u0[1].real(),u0[2].real(),u0[3].real(),mx,olaScale);}
#endif

        // 6. OLA in time domain: timeBuf[0..255] + previous tail → output
        //    timeBuf[256..511] → save as next hop's tail
        for(int i=0;i<hopSize;i++){
            int64_t idx=base+i;
            if(idx>=numFrames)break;
            float s=olaScale;
            objects[0].audioData[idx]=(u0[i].real()+tail0[i])*s;tail0[i]=u0[i+hopSize].real();
            objects[1].audioData[idx]=(u1[i].real()+tail1[i])*s;tail1[i]=u1[i+hopSize].real();
            if(m_objectCount>2){objects[2].audioData[idx]=(u2[i].real()+tail2[i])*s;tail2[i]=u2[i+hopSize].real();}
            if(m_objectCount>3){objects[3].audioData[idx]=(u3[i].real()+tail3[i])*s;tail3[i]=u3[i+hopSize].real();}
            if(m_objectCount>4){objects[4].audioData[idx]=(u4[i].real()+tail4[i])*s;tail4[i]=u4[i+hopSize].real();
                               objects[5].audioData[idx]=(u5[i].real()+tail5[i])*s;tail5[i]=u5[i+hopSize].real();}
            if(m_objectCount>6){objects[6].audioData[idx]=(u6[i].real()+tail6[i])*s;tail6[i]=u6[i+hopSize].real();
                               objects[7].audioData[idx]=(u7[i].real()+tail7[i])*s;tail7[i]=u7[i+hopSize].real();}
            if(m_objectCount>8){objects[8].audioData[idx]=(u8[i].real()+tail8[i])*s;tail8[i]=u8[i+hopSize].real();}
        }

#if UPMIX_TRACE
        if(hop<3||hop%50==0){ float mx=0;
          for(int i=0;i<hopSize;i++)mx=std::max(mx,std::abs(objects[0].audioData[base+i]));
          LOGI("TRACE-OUT #%d: obj0[0..3]=%.6f %.6f %.6f %.6f peak=%.4f tail[0]=%.6f",
               hop,objects[0].audioData[base],objects[0].audioData[base+1],
               objects[0].audioData[base+2],objects[0].audioData[base+3],mx,tail0[0]);}
#endif
    }

    // Y=5 0177v2 diag: per-channel peak check
#if UPMIX_CH_DIAG
    { static int dc=0; dc++;
      if(dc==1||dc%20==0){
        float pk[9]={0};
        for(int c=0;c<m_objectCount&&c<9;c++)
          for(auto&s:objects[c].audioData){float a=s>=0?s:-s;if(a>pk[c])pk[c]=a;}
        LOGI("UPMIX-CH#%d: L=%.4f R=%.4f C=%.4f LFE=%.4f LS=%.4f RS=%.4f LH=%.4f RH=%.4f HT=%.4f",
             dc,pk[0],pk[1],pk[2],pk[3],pk[4],pk[5],pk[6],pk[7],pk[8]);
      }
    }
#endif

    // Allpass + NaN (unchanged from 0174)
    if(m_objectCount>4)for(int64_t n=0;n<numFrames;n++){
        objects[4].audioData[n]=m_decorr[0].process(objects[4].audioData[n]);
        objects[5].audioData[n]=m_decorr[1].process(objects[5].audioData[n]);
    }
    if(m_objectCount>6)for(int64_t n=0;n<numFrames;n++){
        objects[6].audioData[n]=m_decorr[2].process(objects[6].audioData[n]);
        objects[7].audioData[n]=m_decorr[3].process(objects[7].audioData[n]);
    }
    if(m_objectCount>8)for(int64_t n=0;n<numFrames;n++)
        objects[8].audioData[n]=m_decorr[4].process(objects[8].audioData[n]);

    int nc=0;for(auto&o:objects)for(auto&s:o.audioData)if(s!=s){s=0.0f;nc++;}
    if(nc>0){static int gc=0;if(++gc<=3)LOGI("UPMIX-NAN0175: fixed %d",nc);}
    return objects;
}

void UpmixEngine::reset() {
    for (auto& buf : m_olaBuf) std::fill(buf.begin(), buf.end(), 0.0f);
    m_prevPan.assign(m_prevPan.size(), 0.0f);
    m_firstFrame = true;
    for (auto& d : m_decorr) { d.x1 = d.x2 = d.y1 = d.y2 = 0; }
}
