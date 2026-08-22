/**
 * @file binaural_convolution.cpp
 * @brief Y=5: 双耳卷积引擎实现
 *
 * 核心: 直接时域 HRIR 卷积 + overlap-add 跨帧混合
 */

#include "binaural_convolution.h"
#include "dsp_platform.h"
#include <chrono>
#include <cmath>
#include <cstring>
#include <algorithm>

#define LOGI(...) DSP_LOGI(__VA_ARGS__)

// ============================================================
// 构造/初始化
// ============================================================

BinauralConvEngine::BinauralConvEngine()
    : m_hrirL(HRIR_LENGTH, 0.0f)
    , m_hrirR(HRIR_LENGTH, 0.0f)
{}

void BinauralConvEngine::initialize(int32_t sampleRate, int32_t frameSize) {
    m_sampleRate = sampleRate;
    m_frameSize = frameSize;

    m_workBufL.resize(frameSize * 2, 0.0f);
    m_workBufR.resize(frameSize * 2, 0.0f);
    m_tailL.resize(HRIR_LENGTH, 0.0f);
    m_tailR.resize(HRIR_LENGTH, 0.0f);

    // 默认参数 → 预计算 HRIR 缓存
    setHrtfParams(HrtfParams{});

    LOGI("BinauralConv initialized: %dHz, %d frames, HRIR=%d taps",
         sampleRate, frameSize, HRIR_LENGTH);
}

void BinauralConvEngine::setHrtfParams(const HrtfParams& params) {
    HrirSynthesisParams synParams(params);
    m_synthesizer.setParams(synParams);
    m_synthesizer.precomputeCache();
}

// ============================================================
// 渲染: 空间音频 ON
// ============================================================

void BinauralConvEngine::render(const std::vector<VirtualObject>& objects,
                                 float* outputStereo, int64_t numFrames) {
    auto t0 = std::chrono::high_resolution_clock::now();

    // DIAG: object data check
    static int64_t convDiag = 0;
    if (++convDiag % 80 == 0) {
        int withData = 0; float maxGain = 0;
        for (auto& o : objects) {
            if (!o.audioData.empty() && o.gain > 0.001f) withData++;
            maxGain = std::max(maxGain, o.gain);
        }
        float firstSample = objects.empty() ? 0.f : (objects[0].audioData.empty() ? 0.f : objects[0].audioData[0]);
        LOGI("DIAG conv#%lld: %d objects, withData=%d, maxGain=%.3f, firstSample=%.4f",
             (long long)convDiag, (int)objects.size(), withData, maxGain, firstSample);
    }

    // 清零输出 + 载入前帧尾部 (cap at HRIR_LENGTH to avoid OOB)
    int64_t tailLen = std::min(numFrames, (int64_t)HRIR_LENGTH);
    for (int64_t i = 0; i < numFrames; i++) {
        outputStereo[i * 2]     = (i < tailLen) ? m_tailL[i] : 0.0f;
        outputStereo[i * 2 + 1] = (i < tailLen) ? m_tailR[i] : 0.0f;
    }

    // 清除尾部缓冲 (准备本帧)
    std::memset(m_tailL.data(), 0, HRIR_LENGTH * sizeof(float));
    std::memset(m_tailR.data(), 0, HRIR_LENGTH * sizeof(float));

    // 对每个虚拟对象进行 HRTF 卷积
    for (const auto& obj : objects) {
        if (obj.gain < 0.001f) continue;

        // 获取该方向的 HRIR（V9.5: elevation≠0 的对象走 synthesize 3D 查表，
        // 支持 DTS 高度对象 45°/90°；水平对象走 getCached 快路径）
        if (obj.elevation_deg != 0.0f) {
            m_synthesizer.synthesize(obj.azimuth_deg, obj.elevation_deg,
                                     m_hrirL.data(), m_hrirR.data());
        } else {
            m_synthesizer.getCached(obj.azimuth_deg, m_hrirL.data(), m_hrirR.data());
        }

        // Y=5 0166: NaN 来源定位
        static int64_t hchk=0; hchk++;
        if(hchk>=9000&&hchk<=9010){bool nf=false;for(int j=0;j<HRIR_LENGTH;j++)if(std::isnan(m_hrirL[j])||std::isnan(m_hrirR[j]))nf=true;
            float ap=0;for(auto&s:obj.audioData)ap=std::max(ap,std::fabs(s));
            LOGI("NAN-SRC#%lld: az=%.1f gain=%.3f adPeak=%.6f adSize=%lld hrirNaN=%d",
                 (long long)hchk,obj.azimuth_deg,obj.gain,ap,(long long)obj.audioData.size(),nf?1:0);}

    // V9.4: Pre-extract audio data for faster indexed access + unrolled convolution
    std::vector<float> objBuf(numFrames);
    for (int64_t i = 0; i < numFrames; i++)
        objBuf[i] = (i < (int64_t)obj.audioData.size()) ? obj.audioData[i] : 0.0f;

    // 全卷积: 输出长度 = N + L - 1
    int64_t totalOut = numFrames + HRIR_LENGTH - 1;
    for (int64_t n = 0; n < totalOut; n++) {
        float accL = 0.0f, accR = 0.0f;
        int64_t kStart = std::max((int64_t)0, n - numFrames + 1);
        int64_t kEnd = std::min(n, (int64_t)HRIR_LENGTH - 1);

        // V9.4: Unrolled 4× per inner loop iteration
        int64_t k = kStart;
        for (; k + 3 <= kEnd; k += 4) {
            accL += objBuf[n - (k+0)] * m_hrirL[k+0] + objBuf[n - (k+1)] * m_hrirL[k+1]
                  + objBuf[n - (k+2)] * m_hrirL[k+2] + objBuf[n - (k+3)] * m_hrirL[k+3];
            accR += objBuf[n - (k+0)] * m_hrirR[k+0] + objBuf[n - (k+1)] * m_hrirR[k+1]
                  + objBuf[n - (k+2)] * m_hrirR[k+2] + objBuf[n - (k+3)] * m_hrirR[k+3];
        }
        for (; k <= kEnd; k++) {
            accL += objBuf[n - k] * m_hrirL[k];
            accR += objBuf[n - k] * m_hrirR[k];
        }

        accL *= obj.gain;
        accR *= obj.gain;

            // Y=5 0166: 精确定位 NaN 产生点
            static int64_t nc=0; nc++;
            if(nc>=9000&&nc<=9010){
                int isnanL=std::isnan(accL)?1:0, isnanR=std::isnan(accR)?1:0;
                if(isnanL||isnanR) LOGI("NAN-ACC#%lld: n=%lld accL=%f accR=%f gain=%.4f",
                    (long long)nc,(long long)n,(double)accL,(double)accR,obj.gain);
            }

            if (n < numFrames) {
                outputStereo[n * 2]     += accL;
                outputStereo[n * 2 + 1] += accR;
            } else {
                int64_t tailIdx = n - numFrames;
                if (tailIdx < HRIR_LENGTH) {
                    m_tailL[tailIdx] += accL;
                    m_tailR[tailIdx] += accR;
                }
            }
        }
    }

    // V9.3: object count norm moved to BinauralRenderer (uniform for HRTF ON+OFF)

    // V9.3: output gain moved to BinauralRenderer (post NaN-guard)

    // Y=5 0167: NaN sanitization — replace NaN/Inf with 0
    // -ffast-math removed but guard against any remaining NaN propagation
    static int64_t nanFixCnt = 0;
    for (int64_t i = 0; i < numFrames * 2; i++) {
        if (!std::isfinite(outputStereo[i])) {
            outputStereo[i] = 0.0f;
            nanFixCnt++;
        }
    }
    if (nanFixCnt > 0) {
        static int64_t reportCnt = 0;
        if (++reportCnt <= 5)
            LOGI("NAN-FIX: replaced %lld NaN/Inf values in output", (long long)nanFixCnt);
    }

    // Y=5 0165: 检查卷积是否产生非零输出
    static int64_t convCnt = 0; convCnt++;
    if (convCnt == 551 || convCnt == 552 || convCnt == 553 || convCnt % 200 == 0) {
        float maxAbs = 0; for (int64_t i=0;i<numFrames*2;i++) maxAbs=std::max(maxAbs,std::fabs(outputStereo[i]));
        LOGI("DIAG-CONV#%lld: numFrames=%lld outPeak=%.6f tailPeak=[%.6f %.6f]",
             (long long)convCnt, (long long)numFrames, maxAbs,
             (m_tailL.empty()?0.f:*std::max_element(m_tailL.begin(),m_tailL.end(),[](float a,float b){return std::fabs(a)<std::fabs(b);})),
             (m_tailR.empty()?0.f:*std::max_element(m_tailR.begin(),m_tailR.end(),[](float a,float b){return std::fabs(a)<std::fabs(b);})));
    }

    auto t1 = std::chrono::high_resolution_clock::now();
    m_lastRenderTimeMs = std::chrono::duration<float, std::milli>(t1 - t0).count();
}



// ============================================================
// 渲染: 空间音频 OFF (直通)
// ============================================================

void BinauralConvEngine::renderPassthrough(const float* inputStereo,
                                            float* outputStereo,
                                            int64_t numFrames) {
    std::memcpy(outputStereo, inputStereo, numFrames * 2 * sizeof(float));
}
