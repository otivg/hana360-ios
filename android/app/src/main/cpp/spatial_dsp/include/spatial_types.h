#ifndef SPATIAL_TYPES_H
#define SPATIAL_TYPES_H

/**
 * @file spatial_types.h
 * @brief 360 DSP 模块公共类型定义 (从 Baseus audio_engine 提取, 去除引擎耦合)
 */
#include <cstdint>

/**
 * @brief HRTF 个性化参数
 */
struct HrtfParams {
    float headWidth_mm = 152.0f;
    float headHeight_mm = 225.0f;
    float earWidth_mm = 35.0f;
    float earHeight_mm = 62.0f;
    float interauralDist_mm = 165.0f;
    float shoulderWidth_mm = 420.0f;
    float conchaDepth_mm = 12.0f;
    float earRotation_deg = 15.0f;

    bool isPersonalized = false;

    bool isValid() const {
        return headWidth_mm >= 120.0f && headWidth_mm <= 200.0f
            && headHeight_mm >= 180.0f && headHeight_mm <= 280.0f
            && earWidth_mm >= 20.0f && earWidth_mm <= 55.0f
            && earHeight_mm >= 35.0f && earHeight_mm <= 85.0f
            && interauralDist_mm >= 120.0f && interauralDist_mm <= 200.0f;
    }
};

#endif // SPATIAL_TYPES_H
