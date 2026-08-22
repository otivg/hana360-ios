#ifndef REVERB_H
#define REVERB_H

#include <cstdint>
#include <vector>

/**
 * @brief 简化 Schroeder 混响器
 *
 * 拓扑: Input → [Comb1] → [Comb2] → [AP1] → [AP2] → [LPF] → Output
 *          ↑ 反馈                          ↑ 反馈
 *
 * 参数:
 * - rt60: 混响时间, 控制 comb 反馈系数
 * - roomSize: 房间大小, 控制延迟长度
 * - damping: 高频衰减, 控制 LPF 截止频率
 * - diffusion: 扩散度, 控制 allpass 反馈系数
 * - preDelay: 预延迟, 直达声到早期反射的间隔
 */
class Reverb {
public:
    Reverb();

    /**
     * @brief 初始化混响器
     * @param sampleRate 采样率
     */
    void initialize(int32_t sampleRate);

    /**
     * @brief 设置参数
     */
    void setParams(float rt60, float roomSize, float damping,
                   float diffusion, float preDelayMs, float gainDb,
                   int32_t sampleRate);

    /**
     * @brief 开启/关闭
     */
    void setEnabled(bool enabled) { m_enabled = enabled; }
    bool isEnabled() const { return m_enabled; }

    /**
     * @brief 处理立体声帧 (interleaved LRLRLR...)
     * @param stereoInOut 输入输出同址
     * @param numFrames 帧数
     *
     * 将混响信号与干信号混合: output = dry * dryGain + wet * wetGain
     */
    void processStereo(float* stereoInOut, int64_t numFrames);

    /**
     * @brief 重置内部缓冲区
     */
    void reset();

private:
    // Comb filter (内联)
    struct CombFilter {
        std::vector<float> buffer;
        int bufSize = 0;
        int idx = 0;
        float feedback = 0.0f;

        void setup(int delayLen, float fb) {
            bufSize = delayLen;
            buffer.assign(bufSize, 0.0f);
            idx = 0;
            feedback = fb;
        }

        float process(float x) {
            float y = buffer[idx];
            // 低通内嵌: y = lowpass(y, damping)
            buffer[idx] = x + y * feedback;
            idx = (idx + 1) % bufSize;
            return y;
        }

        void reset() {
            std::fill(buffer.begin(), buffer.end(), 0.0f);
            idx = 0;
        }
    };

    // Allpass filter (内联)
    struct AllpassFilter {
        std::vector<float> buffer;
        int bufSize = 0;
        int idx = 0;
        float feedback = 0.0f;

        void setup(int delayLen, float fb) {
            bufSize = delayLen;
            buffer.assign(bufSize, 0.0f);
            idx = 0;
            feedback = fb;
        }

        float process(float x) {
            float bufOut = buffer[idx];
            float y = -x + bufOut;
            buffer[idx] = x + bufOut * feedback;
            idx = (idx + 1) % bufSize;
            return y;
        }

        void reset() {
            std::fill(buffer.begin(), buffer.end(), 0.0f);
            idx = 0;
        }
    };

    // Pre-delay buffer
    struct PreDelay {
        std::vector<float> bufferL;
        std::vector<float> bufferR;
        int bufSize = 0;
        int writeIdx = 0;

        void setup(int delaySamples) {
            bufSize = delaySamples > 0 ? delaySamples : 1;
            bufferL.assign(bufSize, 0.0f);
            bufferR.assign(bufSize, 0.0f);
            writeIdx = 0;
        }

        float readL() const {
            return bufferL[(writeIdx + 1) % bufSize];
        }
        float readR() const {
            return bufferR[(writeIdx + 1) % bufSize];
        }
        void write(float left, float right) {
            bufferL[writeIdx] = left;
            bufferR[writeIdx] = right;
            writeIdx = (writeIdx + 1) % bufSize;
        }

        void reset() {
            std::fill(bufferL.begin(), bufferL.end(), 0.0f);
            std::fill(bufferR.begin(), bufferR.end(), 0.0f);
            writeIdx = 0;
        }
    };

    CombFilter m_combL[2], m_combR[2];
    AllpassFilter m_allpassL[2], m_allpassR[2];
    PreDelay m_preDelay;
    float m_dampingLPF[2][2] = {{0.0f}};  // [L/R][prev/curr]
    float m_dampingCoeff = 0.0f;

    float m_dryGain = 1.0f;
    float m_wetGain = 0.0f;
    bool m_enabled = false;
    bool m_initialized = false;

    // 计算反馈系数: RT60 = -3 * Td / log10(feedback) → feedback = 10^(-3*Td/RT60)
    static float rt60ToFeedback(float rt60, float delaySec);
};

#endif // REVERB_H
