#ifndef DSP_PLATFORM_H
#define DSP_PLATFORM_H

/**
 * @file dsp_platform.h
 * @brief 跨平台日志垫片 (Android / iOS / macOS)
 *
 * Android 构建保持原 __android_log_print 行为; 其他平台输出到 stderr。
 * 移植自 Android spatial_dsp (iOS-hanamimi 工作区), Android 仓库不动。
 */
#ifdef __ANDROID__
#include <android/log.h>
#define DSP_LOGI(...) __android_log_print(ANDROID_LOG_INFO, "SpatialDsp", __VA_ARGS__)
#define DSP_LOGE(...) __android_log_print(ANDROID_LOG_ERROR, "SpatialDsp", __VA_ARGS__)
#else
#include <cstdio>
#define DSP_LOGI(...) std::fprintf(stderr, "[SpatialDsp] " __VA_ARGS__)
#define DSP_LOGE(...) std::fprintf(stderr, "[SpatialDsp:ERR] " __VA_ARGS__)
#endif

#endif // DSP_PLATFORM_H
