/**
 * @file main.cpp — M1 冒烟测试 (macOS CLI)
 * @brief 验证 spatial_dsp 在非 Android 平台 (clang/libc++) 编译并正确工作。
 *
 * 断言:
 *  1. bypass=1 → 输出与输入逐位一致 (memcpy 直通)
 *  2. 加载 HRIR + upmix/HRTF 启用 → 输出非静音且与输入不同, 无 NaN/Inf
 *  3. 头部旋转 (0°,0°) vs (30°,0°) → 输出不同
 *  4. EQ + Reverb 开启 → 处理不崩溃, 无 NaN
 *
 * 用法: ssp_smoke <cipic_v9_hrir.bin 路径>
 * 退出码: 0 = 全部通过
 */
#include <cmath>
#include <cstdio>
#include <cstring>
#include <vector>

#include "spatial_dsp.h"

static int g_failures = 0;

static void check(bool ok, const char* what) {
    if (ok) {
        std::printf("  [PASS] %s\n", what);
    } else {
        std::printf("  [FAIL] %s\n", what);
        g_failures++;
    }
}

static bool hasNaN(const float* buf, int n) {
    for (int i = 0; i < n; i++)
        if (std::isnan(buf[i]) || std::isinf(buf[i])) return true;
    return false;
}

static double rms(const float* buf, int n) {
    double s = 0.0;
    for (int i = 0; i < n; i++) s += (double)buf[i] * buf[i];
    return std::sqrt(s / n);
}

static bool sameBuffer(const float* a, const float* b, int n) {
    for (int i = 0; i < n; i++)
        if (a[i] != b[i]) return false;
    return true;
}

static double diffRms(const float* a, const float* b, int n) {
    double s = 0.0;
    for (int i = 0; i < n; i++) {
        double d = (double)a[i] - b[i];
        s += d * d;
    }
    return std::sqrt(s / n);
}

int main(int argc, char** argv) {
    if (argc < 2) {
        std::printf("usage: %s <cipic_v9_hrir.bin>\n", argv[0]);
        return 2;
    }
    const char* hrirPath = argv[1];

    constexpr int kSR = 48000;
    constexpr int kFrames = 256;
    constexpr int kBursts = 120; // 多帧, 覆盖 STFT 稳态
    const int total = kFrames * kBursts;

    std::printf("=== SpatialDsp M1 smoke test ===\n");

    SpatialDsp* dsp = ssp_create();
    check(dsp != nullptr, "ssp_create");
    check(ssp_configure(dsp, kSR, kFrames) == 0, "ssp_configure(48000, 256)");

    // 1kHz 正弦输入 (双声道交织)
    std::vector<float> input(total * 2);
    for (int i = 0; i < total; i++) {
        float v = 0.5f * std::sin(2.0f * M_PI * 1000.0f * i / kSR);
        input[i * 2] = v;
        input[i * 2 + 1] = v;
    }

    // --- 1. bypass 直通 ---
    std::printf("\n[1] bypass passthrough\n");
    std::vector<float> outBypass(total * 2, 0.f);
    ssp_set_bypass(dsp, 1);
    ssp_process(dsp, input.data(), outBypass.data(), total);
    check(sameBuffer(input.data(), outBypass.data(), total * 2),
          "bypass output == input (bit-exact)");

    // --- 2. HRIR 加载 + upmix/HRTF 启用 ---
    std::printf("\n[2] HRIR load + upmix/HRTF processing\n");
    check(ssp_load_hrir_file(dsp, hrirPath) == 0, "ssp_load_hrir_file");
    ssp_set_bypass(dsp, 0);
    ssp_set_upmix(dsp, 1, 0);          // Music layout
    ssp_set_upmix_gains(dsp, 2.0f, 2.0f, 2.0f);
    ssp_set_hrtf(dsp, 1, 4, 0.5f);     // 男·中头·中耳, gain 0.5
    ssp_flush(dsp);

    std::vector<float> outFx(total * 2, 0.f);
    ssp_process(dsp, input.data(), outFx.data(), total);
    check(!hasNaN(outFx.data(), total * 2), "processed output has no NaN/Inf");
    check(rms(outFx.data(), total * 2) > 1e-4, "processed output is non-silent");
    check(diffRms(outFx.data(), outBypass.data(), total * 2) > 1e-4,
          "processed output differs from bypass");

    // --- 3. 头部旋转影响输出 ---
    std::printf("\n[3] head rotation\n");
    std::vector<float> outRot0(total * 2, 0.f), outRot30(total * 2, 0.f);
    ssp_set_head_rotation(dsp, 0.f, 0.f, 1);
    ssp_flush(dsp);
    ssp_process(dsp, input.data(), outRot0.data(), total);
    ssp_set_head_rotation(dsp, 30.f, 0.f, 1);
    ssp_flush(dsp);
    ssp_process(dsp, input.data(), outRot30.data(), total);
    check(!hasNaN(outRot30.data(), total * 2), "rotated output has no NaN");
    check(diffRms(outRot0.data(), outRot30.data(), total * 2) > 1e-4,
          "rotation changes output (0deg vs 30deg)");

    // --- 4. EQ + Reverb ---
    std::printf("\n[4] EQ + reverb stability\n");
    float gains[10] = {3.f, 2.f, 1.f, 0.f, -1.f, -2.f, 0.f, 1.f, 2.f, 3.f};
    ssp_set_eq(dsp, 1, gains);
    ssp_set_reverb(dsp, 1, 0.3f, 8.0f, 0.5f, 0.7f, 20.0f, -12.0f);
    ssp_flush(dsp);
    std::vector<float> outAll(total * 2, 0.f);
    ssp_process(dsp, input.data(), outAll.data(), total);
    check(!hasNaN(outAll.data(), total * 2), "EQ+reverb output has no NaN/Inf");
    check(rms(outAll.data(), total * 2) > 1e-4, "EQ+reverb output is non-silent");

    ssp_destroy(dsp);
    check(true, "ssp_destroy");

    std::printf("\n=== %s (%d failures) ===\n",
                g_failures == 0 ? "ALL PASS" : "FAILED", g_failures);
    return g_failures == 0 ? 0 : 1;
}
