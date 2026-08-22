#ifndef DTS_DECODE_H
#define DTS_DECODE_H

#include <stddef.h>

#ifdef __cplusplus
extern "C" {
#endif

/// DTS-WAV 解码器封装（dcadec）
///
/// 处理 DTS-CD 伪装 PCM 的 WAV（DTS Coherent Acoustics 1411kbps 44100Hz 5.1/7.1）：
///   1. 解析 WAV 头，data 区是 16-bit 样本（DTS 比特流 14-bit 打包：每样本低 14 位）
///   2. 14-bit 位流还原（同步字对齐）→ 标准 DTS 字节流
///   3. dcadec 解码 → 5.1/7.1 多声道 PCM
///   4. 下混立体声 → interleaved float32
typedef struct DtsDecoder DtsDecoder;

/// 打开 DTS-WAV。失败（非 DTS / 解码器初始化失败）返回 NULL。
/// [outSampleRate]/[outChannels] 输出解码采样率与声道数（输出立体声时 channels=2）。
DtsDecoder *dts_decoder_open(const char *wavPath, int *outSampleRate, int *outChannels);

/// 解码到 interleaved float32 立体声（L R L R ...）。
/// [out] 容量 [maxFrames]*2 个 float。返回实际帧数；0 = EOF；负 = 错误。
int dts_decoder_read(DtsDecoder *d, float *out, int maxFrames);

/// 解码到 interleaved float32 5.1（FL FR FC LFE BL BR，WAVEFORMATEXTENSIBLE 顺序）。
/// [out] 容量 [maxFrames]*6 个 float。缺失声道补 0。返回实际帧数；0 = EOF；负 = 错误。
int dts_decoder_read_multi(DtsDecoder *d, float *out6, int maxFrames);

/// 只读探测 DTS-WAV 信息（Nerd Mode）：解析第一帧返回 core 参数。
/// [sr]/[channels]/[bits]/[kbps] 输出采样率/声道数(含LFE)/位深/码率(kbps)。
/// 返回 0 成功 / -1 失败（非 DTS）。
int dts_probe_info(const char *wavPath, int *sr, int *channels, int *bits, int *kbps);

/// 总时长（秒），基于 WAV data 大小估算。
double dts_decoder_duration(DtsDecoder *d);

/// 重新定位（秒）。内部重建解码器（DTS 帧定位按帧索引近似）。
int dts_decoder_seek(DtsDecoder *d, double seconds);

void dts_decoder_close(DtsDecoder *d);

#ifdef __cplusplus
}
#endif

#endif /* DTS_DECODE_H */
