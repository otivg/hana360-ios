#ifndef HRTF_DATA_H
#define HRTF_DATA_H

#include <cstdint>
#include <string>
#include <vector>

/**
 * @brief HRTF 参数数据结构
 *
 * 包含从用户拍照中提取的人体测量参数，
 * 以及由此计算出的 HRTF 滤波系数。
 */

// 人体测量参数
struct AnthropometricParams {
    float headWidth_mm = 152.0f;
    float headHeight_mm = 225.0f;
    float leftEarWidth_mm = 35.0f;
    float leftEarHeight_mm = 62.0f;
    float rightEarWidth_mm = 35.0f;
    float rightEarHeight_mm = 62.0f;
    float interauralDist_mm = 165.0f;
    float shoulderWidth_mm = 420.0f;
    float leftConchaDepth_mm = 12.0f;
    float rightConchaDepth_mm = 12.0f;
    float leftEarRotation_deg = 15.0f;
    float rightEarRotation_deg = 15.0f;
    float ipd_mm = 63.0f;  // 瞳间距
};

// ITD 曲线 (16 个方位角采样点)
struct ITDCurve {
    static constexpr int NUM_POINTS = 16;
    float values[NUM_POINTS] = {0};  // 单位: 微秒 (μs)
};

// ILD 曲线 (16 个频率采样点)
struct ILDCurve {
    static constexpr int NUM_POINTS = 16;
    float values[NUM_POINTS] = {0};  // 单位: dB×10
};

// 频谱修正曲线 (32 个频率采样点)
struct SpectralCorrection {
    static constexpr int NUM_POINTS = 32;
    float values[NUM_POINTS] = {0};  // 单位: dB×10
};

/**
 * @brief BLE 传输用紧凑 HRTF 数据包 (≤512 bytes)
 */
struct HrtfBlePacket {
    uint32_t protocolVersion = 1;    // 协议版本
    uint16_t packetLength = 350;     // 数据包总长度
    uint16_t paramCount = 8;
    uint32_t timestamp = 0;          // Unix epoch
    uint32_t checksum = 0;           // CRC32

    // 人体测量参数 (整数编码)
    uint16_t headWidth_mm_x10;
    uint16_t headHeight_mm_x10;
    uint16_t earWidth_mm_x10;
    uint16_t earHeight_mm_x10;
    uint16_t earDistance_mm_x10;
    uint16_t shoulderWidth_mm_x10;
    uint8_t  conchaDepthLevel;       // 0-255
    uint8_t  earRotation_deg;

    // HRTF 系数
    ITDCurve itdLeft;
    ITDCurve itdRight;
    ILDCurve ildLeft;
    ILDCurve ildRight;
    SpectralCorrection specLeft;
    SpectralCorrection specRight;

    // 预留扩展
    uint8_t reserved[64];

    /**
     * @brief 从人体测量参数生成 BLE 数据包
     */
    static HrtfBlePacket fromAnthropometric(const AnthropometricParams& params);

    /**
     * @brief 计算 CRC32 校验和
     */
    uint32_t computeChecksum() const;

    /**
     * @brief 序列化为二进制字节数组 (≤512 bytes)
     */
    std::vector<uint8_t> serialize() const;
};

/**
 * @brief HRTF 参数计算器
 *
 * 基于人体测量参数，使用 Woodworth 公式和回归模型
 * 计算个性化的 ITD、ILD 和频谱修正曲线
 */
class HrtfCalculator {
public:
    /**
     * @brief 从人体测量参数计算 ITD 曲线
     * @param params 人体测量参数
     * @param azimuth 方位角 (度)
     * @return ITD 值 (微秒)
     */
    static float computeITD(const AnthropometricParams& params, float azimuth);

    /**
     * @brief 从人体测量参数计算 ILD
     * @param params 人体测量参数
     * @param azimuth 方位角 (度)
     * @param frequency 频率 (Hz)
     * @return ILD 值 (dB)
     */
    static float computeILD(const AnthropometricParams& params, float azimuth, float frequency);

    /**
     * @brief 计算耳廓缺口频率偏移
     * @param earHeight_mm 耳廓高度
     * @param earWidth_mm 耳廓宽度
     * @return 第一缺口频率 (Hz)
     */
    static float computePinnaNotchFreq(float earHeight_mm, float earWidth_mm);

    /**
     * @brief 生成完整的 ITD 曲线 (16 点)
     */
    static ITDCurve generateITDCurve(const AnthropometricParams& params);

    /**
     * @brief 生成完整的 ILD 曲线 (16 点, 对数频率分布)
     */
    static ILDCurve generateILDCurve(const AnthropometricParams& params);

    /**
     * @brief 生成频谱修正曲线 (32 点)
     */
    static SpectralCorrection generateSpectralCorrection(const AnthropometricParams& params);

    /**
     * @brief 使用通用默认参数 (不个性化)
     */
    static AnthropometricParams getDefaultParams();

    /**
     * @brief 验证参数是否在合理范围内
     */
    static bool validateParams(const AnthropometricParams& params);
};

#endif // HRTF_DATA_H
