#ifndef THX_PARAMS_H
#define THX_PARAMS_H

#include <cstdint>

/**
 * @brief PEQ 滤波器类型
 */
enum class EqFilterType : int32_t {
    Peak = 0,       // Bell / Peaking
    LowShelf = 1,   // Low Shelf
    HighShelf = 2,  // High Shelf
    LowPass = 3,    // Low Pass
    HighPass = 4,   // High Pass
};

/**
 * @brief 单段 PEQ 参数
 */
struct EqBand {
    EqFilterType type = EqFilterType::Peak;
    float freqHz = 1000.0f;   // 中心/截止频率
    float gainDb = 0.0f;      // 增益 (dB), shelf/pass 忽略
    float q = 1.0f;           // Q 值 (带宽)
};

/**
 * @brief 音频预设枚举 (扩展 AudioMode)
 */
enum class AudioPreset : int32_t {
    Music = 0,
    Cinema = 1,
    Game = 2,
    Voice = 3,
    Custom = 99,
};

/**
 * @brief 完整 THX Spatial Audio 参数集
 *
 * 三大板块:
 * - Global: 全局开关/增益/宽度
 * - Direct EQ: 10-band PEQ
 * - Reverb: 简化 Schroeder 混响
 */
struct ThxParams {
    // === Global ===
    bool enable = true;            // 空间音频总开关
    bool wide = true;              // 虚拟声场宽度
    float outputGain = 1.0f;       // 最终输出增益 [0.0, 2.0]
    bool testRotation = false;     // 测试旋转 (调试用)

    // === Direct EQ ===
    bool directEqEnable = false;   // EQ 总开关
    EqBand directEq[10];           // 10-band PEQ

    // === Reverb ===
    bool reverbEnable = false;     // 混响开关
    float reverbGainDb = -6.0f;    // 混响增益 [-60, 0] dB
    float reverbRt60 = 0.5f;       // RT60 混响时间 [0.1, 10.0] s
    float reverbRoomSize = 10.0f;  // 虚拟房间大小 [1.0, 50.0]
    float reverbDamping = 0.5f;    // 高频衰减 [0.0, 1.0]
    float reverbDiffusion = 0.7f;  // 早期反射扩散 [0.0, 1.0]
    float reverbPreDelayMs = 20.0f;// 预延迟 [0, 200] ms

    /**
     * @brief 获取默认参数 (Music 预设)
     */
    static ThxParams defaultParams() {
        ThxParams p;
        p.directEq[0] = { EqFilterType::LowShelf, 31.0f, 0.0f, 0.7f };
        p.directEq[1] = { EqFilterType::Peak, 62.0f, 0.0f, 1.0f };
        p.directEq[2] = { EqFilterType::Peak, 125.0f, 0.0f, 1.0f };
        p.directEq[3] = { EqFilterType::Peak, 250.0f, 0.0f, 1.0f };
        p.directEq[4] = { EqFilterType::Peak, 500.0f, 0.0f, 1.0f };
        p.directEq[5] = { EqFilterType::Peak, 1000.0f, 0.0f, 1.0f };
        p.directEq[6] = { EqFilterType::Peak, 2000.0f, 0.0f, 1.0f };
        p.directEq[7] = { EqFilterType::Peak, 4000.0f, 0.0f, 1.0f };
        p.directEq[8] = { EqFilterType::Peak, 8000.0f, 0.0f, 1.0f };
        p.directEq[9] = { EqFilterType::HighShelf, 16000.0f, 0.0f, 0.7f };
        return p;
    }

    /**
     * @brief 工厂预设
     */
    static ThxParams cinemaPreset() {
        ThxParams p = defaultParams();
        p.directEqEnable = true;
        p.directEq[0].gainDb = 4.0f;    // sub rumble
        p.directEq[5].gainDb = 2.0f;    // dialogue presence
        p.directEq[9].gainDb = 3.0f;    // air/sparkle
        p.reverbEnable = true;
        p.reverbRt60 = 0.8f;
        p.reverbRoomSize = 20.0f;
        p.reverbGainDb = -8.0f;
        return p;
    }

    static ThxParams gamePreset() {
        ThxParams p = defaultParams();
        p.directEqEnable = true;
        p.directEq[0].gainDb = 2.0f;    // subtle bass
        p.directEq[7].gainDb = 3.0f;    // footsteps detail
        p.directEq[7].q = 1.5f;
        p.reverbEnable = false;
        return p;
    }

    static ThxParams voicePreset() {
        ThxParams p = defaultParams();
        p.directEqEnable = true;
        p.directEq[1].type = EqFilterType::HighPass;
        p.directEq[1].freqHz = 80.0f;   // cut rumble
        p.directEq[4].freqHz = 2500.0f;
        p.directEq[4].gainDb = 3.0f;    // intelligibility
        p.directEq[8].type = EqFilterType::HighShelf;
        p.directEq[8].freqHz = 6000.0f;
        p.directEq[8].gainDb = 2.0f;    // clarity
        p.reverbEnable = false;
        return p;
    }
};

#endif // THX_PARAMS_H
