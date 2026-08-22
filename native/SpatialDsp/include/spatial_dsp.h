#ifndef SPATIAL_DSP_H
#define SPATIAL_DSP_H

/**
 * @file spatial_dsp.h
 * @brief 360 空间音效纯 DSP 模块 — C API (供 JNI/FFI 桥接)
 *
 * 输入: 立体声 interleaved float32 PCM
 * 输出: 立体声 interleaved float32 PCM (空间化)
 *
 * 管线: upmix(M/S 9ch) → HRTF binaural render → EQ → Reverb → Limiter
 * bypass=1 时纯直通 (memcpy), 零处理。
 */
#ifdef __cplusplus
extern "C" {
#endif

typedef struct SpatialDsp SpatialDsp;

/** 创建 DSP 实例 */
SpatialDsp* ssp_create(void);

/** 销毁 DSP 实例 */
void ssp_destroy(SpatialDsp* dsp);

/** 配置采样率 + 帧大小 (建议 48000/256), 初始化全部模块。返回 0=成功 */
int ssp_configure(SpatialDsp* dsp, int sampleRate, int framesPerBurst);

/** 从文件加载 CIPIC V9 HRIR 资产 (33MB bin)。返回 0=成功 */
int ssp_load_hrir_file(SpatialDsp* dsp, const char* path);

/** 核心处理: inStereo/outStereo 可为同一指针 (in-place) */
void ssp_process(SpatialDsp* dsp, const float* inStereo, float* outStereo, int numFrames);

/**
 * 5.1 多声道输入处理 (DTS-WAV 直通):
 *   in 为 6ch interleaved (FL FR FC LFE BL BR, WAVEFORMATEXTENSIBLE 顺序)
 *   out 为 2ch interleaved (立体声, 可 in-place 不适用)
 *   bypass=1 → ITU-R BS.775 下混立体声; bypass=0 → 原始声道映射 9 对象
 *   (L/R/C/LFE/LS/RS + 环绕高度派生) 后走 renderer→EQ→Reverb→Limiter
 */
void ssp_process_5_1(SpatialDsp* dsp, const float* in6, float* outStereo, int numFrames);

/** 清空内部状态 (格式切换时调用) */
void ssp_flush(SpatialDsp* dsp);

/* ============ 参数控制 (线程安全由调用方保证, 建议非音频线程调用) ============ */

/** bypass=1 直通, bypass=0 正常处理 */
void ssp_set_bypass(SpatialDsp* dsp, int bypass);

/** 查询当前 bypass 状态 (调试用, 返回 0/1/-1) */
int ssp_get_bypass(SpatialDsp* dsp);

/** enabled=1 上混, layoutMode: 0=Music 1=Cinema 2=Game */
void ssp_set_upmix(SpatialDsp* dsp, int enabled, int layoutMode);

/** 上混增益: masterGain / speakerDistance / outputLevel (默认 2.0/2.0/2.0) */
void ssp_set_upmix_gains(SpatialDsp* dsp, float masterGain, float speakerDistance, float outputLevel);

/** HRTF: enabled / group(0..14) / outputGain(0.2~2.0) */
void ssp_set_hrtf(SpatialDsp* dsp, int enabled, int group, float outputGain);

/** EQ: enabled + 10 段增益 dB (gainsDb 数组长度 10, 频率固定 10 段) */
void ssp_set_eq(SpatialDsp* dsp, int enabled, const float* gainsDb);

/** 齿音抑制 (sibilance): 高频 shelf 增益 dB, 0=关闭, 负值衰减 (默认 -2.5 @8kHz) */
void ssp_set_hf_shelf(SpatialDsp* dsp, float gainDb);

/** De-esser 齿音动态抑制: enabled / thresholdDb (默认 -30) / ratio (默认 3) */
void ssp_set_deesser(SpatialDsp* dsp, int enabled, float thresholdDb, float ratio);

/** Reverb: enabled + 参数 */
void ssp_set_reverb(SpatialDsp* dsp, int enabled,
                    float rt60, float roomSize, float damping,
                    float diffusion, float preDelayMs, float gainDb);

/** 头部追踪: yawDeg/pitchDeg (度), active=1 启用旋转 */
void ssp_set_head_rotation(SpatialDsp* dsp, float yawDeg, float pitchDeg, int active);

/** 声场宽度 (影响上混关闭时 L/R 夹角 30°→45°) */
void ssp_set_wide(SpatialDsp* dsp, int wide);

#ifdef __cplusplus
}
#endif

#endif // SPATIAL_DSP_H
