/**
 * dts_decode.c — DTS-WAV 解码器封装（dcadec）— V2 内存化版
 *
 * 管线（V2，2026-08-21 优化：消除临时文件 IO，foobar2000 packet_decoder 模式）：
 *   WAV 文件（DTS 比特流 14-bit 打包伪装 PCM）
 *     → 解析 WAV 头 + 14-bit 位流还原（同步字对齐）→ 标准 DTS 字节流（内存 buffer）
 *     → 内存帧切分（同步字 + dcadec_frame_parse_header）→ dcadec_context_parse/filter
 *     → 5.1/7.1 多声道 PCM → 6ch interleaved float32
 *
 * 对比 V1（临时文件版）：
 *   - V1: restoreDts14 写临时文件 → dcadec_stream_open 读文件（53MB 磁盘 IO）
 *   - V2: restoreDts14Mem 输出内存 → 帧切分直解（零磁盘 IO，open 提速 10×+）
 *
 * 注意：
 *   - dcadec_context_parse 要求 data 4 字节对齐 + size ≤ MAX_PACKET_SIZE (0x104000)
 *   - dcadec 输出按 WAVEFORMATEXTENSIBLE 声道顺序（FL FR FC LFE BL BR ...），
 *     channel_mask 指示实际存在的声道
 */
#include "dts_decode.h"
#include "dca_context.h"
#include "dca_frame.h"
#include "common.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

// ---- WAV 解析 + 14-bit 还原（内存版）----

typedef struct {
    int64_t dataOffset;
    int64_t dataSize;
    int sampleRate;
} WavInfo;

static int parseWavInfo(FILE *fp, WavInfo *info) {
    uint8_t hdr[44];
    if (fread(hdr, 1, 44, fp) != 44) return -1;
    if (memcmp(hdr, "RIFF", 4) || memcmp(hdr + 8, "WAVE", 4)) return -1;
    // fmt 块（标准 16 字节 fmt + data 在 36）
    if (memcmp(hdr + 36, "data", 4)) {
        // 非标准偏移：扫描 chunk
        int64_t pos = 12;
        while (pos + 8 <= 44) {
            fseek(fp, pos, SEEK_SET);
            uint8_t cid[4]; uint32_t sz;
            if (fread(cid, 1, 4, fp) != 4) return -1;
            if (fread(&sz, 4, 1, fp) != 1) return -1;
            if (!memcmp(cid, "data", 4)) {
                info->dataOffset = pos + 8;
                info->dataSize = sz;
                break;
            }
            pos += 8 + sz + (sz & 1);
        }
        if (info->dataOffset <= 0) return -1;
    } else {
        info->dataOffset = 44;
        info->dataSize = (int64_t)hdr[40] | ((int64_t)hdr[41] << 8) |
                         ((int64_t)hdr[42] << 16) | ((int64_t)hdr[43] << 24);
    }
    // fmt 采样率（offset 24 起 4 字节 LE）
    info->sampleRate = (int)(hdr[24] | (hdr[25] << 8) | (hdr[26] << 16) | ((uint32_t)hdr[27] << 24));
    if (info->sampleRate <= 0) info->sampleRate = 44100;
    return 0;
}

/**
 * V2: 14-bit 位流还原 + 同步字对齐，输出到【内存 buffer】（替代 V1 的临时文件）。
 * [outBuf]/[outLen] 返回 malloc 的 DTS 字节流（调用方 free）。
 * 返回 0 成功 / -1 失败（无同步字=非 DTS）。
 */
static int restoreDts14Mem(const char *wavPath, uint8_t **outBuf, size_t *outLen) {
    FILE *fp = fopen(wavPath, "rb");
    if (!fp) return -1;
    WavInfo wi;
    if (parseWavInfo(fp, &wi) < 0) { fclose(fp); return -1; }

    // 读整个 data 区（16-bit LE 样本）
    int64_t sampleBytes = wi.dataSize;
    int16_t *samples = (int16_t *)malloc((size_t)sampleBytes);
    if (!samples) { fclose(fp); return -1; }
    fseek(fp, wi.dataOffset, SEEK_SET);
    size_t got = fread(samples, 1, (size_t)sampleBytes, fp);
    fclose(fp);
    int64_t n = got / 2;
    if (n < 1024) { free(samples); return -1; }

    // 跳过静音前导
    int64_t start = 0;
    while (start < n - 64 && samples[start] == 0) start++;
    int64_t active = n - start;
    if (active < 1024) { free(samples); return -1; }
    const int16_t *s = samples + start;

    // 第一遍：找第一个同步字 0x7FFE8001 的样本索引（同步字从 14-bit 样本边界开始）
    uint64_t buf = 0;
    int nbits = 0;
    int64_t syncSample = -1;
    for (int64_t i = 0; i < active; i++) {
        uint64_t v = (uint64_t)(s[i] & 0x3FFF);
        buf = ((buf << 14) | v) & ((1ULL << 42) - 1);
        if (nbits < 42) nbits += 14;
        if (nbits >= 42) {
            if ((buf >> 10) == 0x7FFE8001ULL) {
                syncSample = i - 2;
                break;
            }
        }
    }
    if (syncSample < 0) { free(samples); return -1; }  // 非 DTS

    // 第二遍：从 syncSample 开始按 8-bit 打包输出到内存（同步字字节对齐）
    // 输出上限 = active * 14 / 8 + 8（保守）
    size_t cap = (size_t)(active / 8 * 14) + 64;
    uint8_t *out = (uint8_t *)malloc(cap);
    if (!out) { free(samples); return -1; }
    buf = 0; nbits = 0;
    size_t w = 0;
    for (int64_t i = syncSample; i < active; i++) {
        uint64_t v = (uint64_t)(s[i] & 0x3FFF);
        buf = (buf << 14) | v;
        nbits += 14;
        while (nbits >= 8) {
            if (w >= cap) { free(samples); free(out); return -1; }
            out[w++] = (uint8_t)((buf >> (nbits - 8)) & 0xFF);
            nbits -= 8;
            buf &= (1ULL << nbits) - 1;
        }
    }
    if (nbits > 0 && w < cap) {
        out[w++] = (uint8_t)((buf << (8 - nbits)) & 0xFF);
    }
    free(samples);
    *outBuf = out;
    *outLen = w;
    return 0;
}

// ---- 解码器封装（V2 内存帧切分）----

struct DtsDecoder {
    struct dcadec_context *ctx;
    uint8_t *dtsBytes;      // 14-bit 还原后的 DTS 字节流（内存）
    size_t dtsLen;          // 字节流长度
    size_t dtsPos;          // 当前读取位置（下一帧起始）
    uint8_t *packetBuf;     // 4 字节对齐的帧缓冲（复用，避免每帧 malloc）
    size_t packetCap;
    size_t packetSize;      // 当前帧实际大小（dcadec_context_parse 用）
    int sampleRate;
    int channels;
    int channelMask;
    double durationSec;
};

/**
 * 内存帧切分：从 dtsPos 开始找下一个 DTS core 同步字 0x7FFE8001，
 * 解析帧头得到帧大小，切出完整帧（含可能紧随的 EXSS）。
 * 返回 1 找到帧（*frameSize = 需喂给 parse 的字节数）/ 0 EOF / 负 错误。
 */
static int nextFrame(DtsDecoder *d) {
    if (!d || !d->dtsBytes) return -1;
    size_t i = d->dtsPos;
    const size_t len = d->dtsLen;
    // 找同步字（字节级，BE 0x7ffe8001）
    while (i + 4 <= len) {
        if (d->dtsBytes[i] == 0x7f && d->dtsBytes[i + 1] == 0xfe &&
            d->dtsBytes[i + 2] == 0x80 && d->dtsBytes[i + 3] == 0x01) {
            break;
        }
        i++;
    }
    if (i + 4 > len) return 0;  // EOF（无更多同步字）
    // 读 16 字节帧头
    if (i + DCADEC_FRAME_HEADER_SIZE > len) return 0;
    size_t rawFrameSize;
    int ret = dcadec_frame_parse_header(d->dtsBytes + i, &rawFrameSize);
    if (ret < 0) {
        // 坏帧头：跳过 1 字节继续找
        d->dtsPos = i + 1;
        return -2;
    }
    // ⚠️ 关键：只取 rawFrameSize（实际帧字节数）作为 parse 大小和前进步长。
    // dcadec_frame_buffer_size() 返回的 bufSize 含对齐 padding（缓冲预留），
    // 若传给 dcadec_context_parse 会把 padding 误当 EXSS 数据解析 → 帧样本减半
    // （512 而非 1024）→ 播放内容变 2 倍速；dtsPos 前进也必须用 rawFrameSize，
    // 否则每帧多跳 padding → 累积丢帧。
    if (i + rawFrameSize > len) return 0;  // 帧不完整（尾部截断）
    // 拷贝到 4 字节对齐缓冲（dcadec_context_parse 要求对齐；多留 padding 防 OOB）
    if (d->packetCap < rawFrameSize + 64) {
        free(d->packetBuf);
        d->packetBuf = (uint8_t *)malloc(rawFrameSize + 64);
        d->packetCap = rawFrameSize + 64;
        if (!d->packetBuf) { d->packetCap = 0; return -1; }
    }
    memcpy(d->packetBuf, d->dtsBytes + i, rawFrameSize);
    d->packetSize = rawFrameSize;
    d->dtsPos = i + rawFrameSize;
    return 1;
}

DtsDecoder *dts_decoder_open(const char *wavPath, int *outSampleRate, int *outChannels) {
    if (!wavPath) return NULL;

    uint8_t *dtsBytes = NULL;
    size_t dtsLen = 0;
    if (restoreDts14Mem(wavPath, &dtsBytes, &dtsLen) < 0) return NULL;

    struct dcadec_context *ctx = dcadec_context_create(0);
    if (!ctx) { free(dtsBytes); return NULL; }

    DtsDecoder *d = (DtsDecoder *)calloc(1, sizeof(DtsDecoder));
    if (!d) { dcadec_context_destroy(ctx); free(dtsBytes); return NULL; }
    d->ctx = ctx;
    d->dtsBytes = dtsBytes;
    d->dtsLen = dtsLen;
    d->dtsPos = 0;
    d->sampleRate = 44100;
    d->channels = 2;
    // 时长估算：WAV data 区按 16bit/2ch 的时长 ≈ DTS 流时长（DTS 填满容器）
    FILE *wf = fopen(wavPath, "rb");
    if (wf) {
        WavInfo wi;
        if (parseWavInfo(wf, &wi) == 0 && wi.sampleRate > 0) {
            d->durationSec = (double)wi.dataSize / ((double)wi.sampleRate * 4.0);
        }
        fclose(wf);
    }

    if (outSampleRate) *outSampleRate = 44100;
    if (outChannels) *outChannels = 2;
    return d;
}

double dts_decoder_duration(DtsDecoder *d) {
    if (!d) return 0;
    return d->durationSec;
}

/** 通用解码核心：每帧 parse+filter，输出到 6ch interleaved（planesTo6ch 逻辑）。 */
static int decodeFrames(DtsDecoder *d, float *out6, int maxFrames) {
    if (!d || !d->ctx || !out6 || maxFrames <= 0) return -1;
    int written = 0;
    while (written < maxFrames) {
        int fr = nextFrame(d);
        if (fr == 0) break;   // EOF
        if (fr < 0) continue; // 坏帧：跳过继续找下一帧

        if (dcadec_context_parse(d->ctx, d->packetBuf, d->packetSize) < 0) {
            // 坏帧，跳过继续
            continue;
        }
        int nsamples, channel_mask, sample_rate, bits_per_sample, profile;
        int **samples = NULL;
        if (dcadec_context_filter(d->ctx, &samples, &nsamples, &channel_mask,
                                  &sample_rate, &bits_per_sample, &profile) < 0 ||
            !samples || nsamples <= 0) {
            continue;
        }
        d->sampleRate = sample_rate > 0 ? sample_rate : d->sampleRate;
        d->channelMask = channel_mask;
        // V9.6: 不截断帧！DTS core 帧固定 1024 样本，若 maxFrames 非帧整数倍，
        // 截断会丢样本 + 帧边界不连续 → 规律性 pop/噼啪（chunk 22050 = 21×1024+546）。
        // 完整写入整帧（调用方 buffer 须留 ≥1024 样本余量），written 可能略超 maxFrames。
        float scale = (bits_per_sample >= 24) ? (1.0f / 8388608.0f) : (1.0f / 32768.0f);
        // 声道平面 → 6ch interleaved（WAVEFORMATEXTENSIBLE: FL FR FC LFE BL BR），缺失补 0
        const int hasFL = channel_mask & 1;
        const int hasFR = channel_mask & 2;
        const int hasFC = channel_mask & 4;
        const int hasLFE = channel_mask & 8;
        const int hasBL = channel_mask & 16;
        const int hasBR = channel_mask & 32;
        for (int i = 0; i < nsamples; i++) {
            int pi = 0;
            float v[6] = {0, 0, 0, 0, 0, 0};
            if (hasFL) { v[0] = samples[pi][i] * scale; pi++; }
            if (hasFR) { v[1] = samples[pi][i] * scale; pi++; }
            if (hasFC) { v[2] = samples[pi][i] * scale; pi++; }
            if (hasLFE) { v[3] = samples[pi][i] * scale; pi++; }
            if (hasBL) { v[4] = samples[pi][i] * scale; pi++; }
            if (hasBR) { v[5] = samples[pi][i] * scale; pi++; }
            out6[(written + i) * 6 + 0] = v[0];
            out6[(written + i) * 6 + 1] = v[1];
            out6[(written + i) * 6 + 2] = v[2];
            out6[(written + i) * 6 + 3] = v[3];
            out6[(written + i) * 6 + 4] = v[4];
            out6[(written + i) * 6 + 5] = v[5];
        }
        written += nsamples;
    }
    return written;
}

int dts_decoder_read(DtsDecoder *d, float *out, int maxFrames) {
    if (!d || !out || maxFrames <= 0) return -1;
    // 临时 6ch 缓冲 → 下混立体声（V9.6: 留 1024 帧余量，decodeFrames 不截断帧）
    float *multi = (float *)malloc((size_t)(maxFrames + 1024) * 6 * sizeof(float));
    if (!multi) return -1;
    int n = decodeFrames(d, multi, maxFrames);
    // ITU-R BS.775 下混
    const float C = 0.7071f;
    for (int i = 0; i < n; i++) {
        out[i * 2]     = multi[i * 6] + C * multi[i * 6 + 2] + C * multi[i * 6 + 4];
        out[i * 2 + 1] = multi[i * 6 + 1] + C * multi[i * 6 + 2] + C * multi[i * 6 + 5];
    }
    free(multi);
    return n;
}

int dts_decoder_read_multi(DtsDecoder *d, float *out6, int maxFrames) {
    return decodeFrames(d, out6, maxFrames);
}

int dts_decoder_seek(DtsDecoder *d, double seconds) {
    if (!d) return -1;
    // 比例定位（DTS CBR 流：字节比例 ≈ 时间比例，O(1)，替代逐帧跳）
    // 从目标字节附近向前回退一点找同步字，确保落在完整帧起点
    dcadec_context_clear(d->ctx);
    if (seconds <= 0) {
        d->dtsPos = 0;
        return 0;
    }
    double dur = d->durationSec;
    if (dur <= 0) dur = (double)d->dtsLen / 44100.0 / 4.0;
    if (dur <= 0) { d->dtsPos = 0; return 0; }
    size_t target = (size_t)((double)d->dtsLen * (seconds / dur));
    // 回退 64KB 找同步字（避免落在帧中间；64KB ≈ 0.4s @44.1k 足够覆盖最大帧）
    size_t start = (target > 65536) ? (target - 65536) : 0;
    size_t i = start;
    const size_t len = d->dtsLen;
    while (i + 4 <= len) {
        if (d->dtsBytes[i] == 0x7f && d->dtsBytes[i + 1] == 0xfe &&
            d->dtsBytes[i + 2] == 0x80 && d->dtsBytes[i + 3] == 0x01) {
            break;
        }
        i++;
    }
    d->dtsPos = (i + 4 <= len) ? i : 0;
    return 0;
}

void dts_decoder_close(DtsDecoder *d) {
    if (!d) return;
    if (d->ctx) dcadec_context_destroy(d->ctx);
    free(d->dtsBytes);
    free(d->packetBuf);
    free(d);
}

int dts_probe_info(const char *wavPath, int *sr, int *channels, int *bits, int *kbps) {
    if (!wavPath) return -1;
    uint8_t *dtsBytes = NULL;
    size_t dtsLen = 0;
    if (restoreDts14Mem(wavPath, &dtsBytes, &dtsLen) < 0) return -1;
    struct dcadec_context *ctx = dcadec_context_create(0);
    if (!ctx) { free(dtsBytes); return -1; }

    int result = -1;
    // 找第一个帧头
    size_t i = 0;
    while (i + 4 <= dtsLen) {
        if (dtsBytes[i] == 0x7f && dtsBytes[i + 1] == 0xfe &&
            dtsBytes[i + 2] == 0x80 && dtsBytes[i + 3] == 0x01) break;
        i++;
    }
    if (i + DCADEC_FRAME_HEADER_SIZE <= dtsLen) {
        size_t rawFrameSize;
        if (dcadec_frame_parse_header(dtsBytes + i, &rawFrameSize) >= 0) {
            // 用 rawFrameSize（实际帧长）而非 bufSize（含 padding）
            if (i + rawFrameSize <= dtsLen && dcadec_context_parse(ctx, dtsBytes + i, rawFrameSize) >= 0) {
                struct dcadec_core_info *info = dcadec_context_get_core_info(ctx);
                if (info) {
                    if (sr) *sr = info->sample_rate;
                    if (channels) *channels = info->nchannels + (info->lfe_present ? 1 : 0);
                    if (bits) *bits = info->source_pcm_res;
                    if (kbps) *kbps = (info->bit_rate > 0) ? (int)((long long)info->bit_rate / 1000) : 0;
                    result = 0;
                    dcadec_context_free_core_info(info);
                }
            }
        }
    }
    dcadec_context_destroy(ctx);
    free(dtsBytes);
    return result;
}
