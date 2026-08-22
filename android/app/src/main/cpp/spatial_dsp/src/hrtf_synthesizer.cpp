/**
 * @file hrtf_synthesizer.cpp (V9.1)
 * @brief CIPIC Subject 021 (KEMAR) 3D HRIR with 15-group warping.
 */
#include "hrtf_synthesizer.h"
#include "cipic_hrir_v9.h"
#include <android/asset_manager.h>
#include <android/asset_manager_jni.h>
#include <android/log.h>
#include <cstdio>
#include <cmath>
#include <cstring>
#include <algorithm>

#define TAG "HrtfV9"
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, TAG, __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, TAG, __VA_ARGS__)

// ============================================================
// Global HRIR storage (shared across all HrtfSynthesizer instances)
// ============================================================
static float* g_hrir_all = nullptr;
static int g_hrir_loaded = 0;
static bool g_cacheNeedsRebuild = false;
static float g_az_vals[CIPIC_V9_NUM_AZIMUTHS];
static float g_el_vals[CIPIC_V9_NUM_ELEVATIONS];

// ============================================================
// CIPIC V9 runtime init
// ============================================================

static void ensure_globals() {
    static bool done = false;
    if (done) return;
    const float az_raw[CIPIC_V9_NUM_AZIMUTHS] = {
        -80.f, -65.f, -55.f, -45.f, -40.f, -35.f, -30.f, -25.f, -20.f, -15.f, -10.f, -5.f, 0.f,
         5.f,  10.f,  15.f,  20.f,  25.f,  30.f,  35.f,  40.f,  45.f,  55.f,  65.f,  80.f
    };
    memcpy(g_az_vals, az_raw, sizeof(az_raw));
    for (int i = 0; i < CIPIC_V9_NUM_ELEVATIONS; i++)
        g_el_vals[i] = -45.0f + i * 5.625f;
    done = true;
}

bool HrtfSynthesizer::initAsset(AAssetManager* mgr) {
    if (g_hrir_loaded) return true;
    ensure_globals();

    AAsset* a = AAssetManager_open(mgr, CIPIC_V9_ASSET_PATH, AASSET_MODE_BUFFER);
    if (!a) { LOGE("No asset: %s", CIPIC_V9_ASSET_PATH); return false; }

    off_t sz = AAsset_getLength(a);
    size_t expected = 16 + (CIPIC_V9_NUM_GROUPS + 1)
        * CIPIC_V9_NUM_AZIMUTHS * CIPIC_V9_NUM_ELEVATIONS
        * CIPIC_V9_HRIR_LENGTH * 2 * sizeof(float);
    if ((size_t)sz < expected) { LOGE("Asset size mismatch"); AAsset_close(a); return false; }

    int hdr[4]; AAsset_read(a, hdr, 16);
    if (hdr[0] != CIPIC_V9_NUM_GROUPS || hdr[1] != CIPIC_V9_NUM_AZIMUTHS
        || hdr[2] != CIPIC_V9_NUM_ELEVATIONS || hdr[3] != CIPIC_V9_HRIR_LENGTH) {
        LOGE("Header mismatch"); AAsset_close(a); return false;
    }


    int total = (hdr[0] + 1) * hdr[1] * hdr[2] * hdr[3] * 2;
    g_hrir_all = new float[total];
    int rd = AAsset_read(a, g_hrir_all, total * sizeof(float));
    AAsset_close(a);
    g_hrir_loaded = 1;
    g_cacheNeedsRebuild = true;
    LOGI("HRIR loaded: %d floats (%.1f MB)", total, (total * 4.0f) / (1024*1024));
    return rd == total * 4;
}

void HrtfSynthesizer::freeAsset() {
    delete[] g_hrir_all; g_hrir_all = nullptr; g_hrir_loaded = 0;
}

// 360-PORT: Load HRIR binary from a raw file path (header 16B + float data)
bool HrtfSynthesizer::initAssetPath(const char* path) {
    if (g_hrir_loaded) return true;
    if (!path) { LOGE("initAssetPath: null path"); return false; }
    ensure_globals();

    FILE* f = fopen(path, "rb");
    if (!f) { LOGE("initAssetPath: cannot open %s", path); return false; }

    int hdr[4] = {0};
    if (fread(hdr, 4, 4, f) != 4) { LOGE("initAssetPath: read header failed"); fclose(f); return false; }
    if (hdr[0] != CIPIC_V9_NUM_GROUPS || hdr[1] != CIPIC_V9_NUM_AZIMUTHS
        || hdr[2] != CIPIC_V9_NUM_ELEVATIONS || hdr[3] != CIPIC_V9_HRIR_LENGTH) {
        LOGE("initAssetPath: header mismatch (%d,%d,%d,%d)", hdr[0], hdr[1], hdr[2], hdr[3]);
        fclose(f); return false;
    }

    int total = (hdr[0] + 1) * hdr[1] * hdr[2] * hdr[3] * 2;
    g_hrir_all = new float[total];
    size_t rd = fread(g_hrir_all, sizeof(float), total, f);
    fclose(f);
    if (rd != (size_t)total) {
        LOGE("initAssetPath: read %zu/%d floats", rd, total);
        delete[] g_hrir_all; g_hrir_all = nullptr;
        return false;
    }
    g_hrir_loaded = 1;
    g_cacheNeedsRebuild = true;
    LOGI("HRIR loaded (path): %d floats (%.1f MB)", total, (total * 4.0f) / (1024*1024));
    return true;
}

// 360-PORT: Direct group selection (0..CIPIC_V9_NUM_GROUPS-1) → rebuild cache
void HrtfSynthesizer::setGroup(int group) {
    if (group < 0 || group >= CIPIC_V9_NUM_GROUPS) {
        LOGE("setGroup: out of range %d", group);
        return;
    }
    m_matchedGroup = group;
    m_cacheValid = false;
    if (g_hrir_loaded) precomputeCache();
    LOGI("HRTF group set: %d", group);
}

static const float* cipic_lookup(int group, int az, int el, int ear) {
    if (!g_hrir_all) return nullptr;
    int base = ((group + 1) * CIPIC_V9_NUM_AZIMUTHS * CIPIC_V9_NUM_ELEVATIONS
                + az * CIPIC_V9_NUM_ELEVATIONS + el)
               * CIPIC_V9_HRIR_LENGTH * 2 + ear;
    return g_hrir_all + base;
}

// V9.4: O(1) direction lookup for 72-grid (every 2.5° from -80° to +80°)
static int find_az(float deg) {
    constexpr float step = 2.5f;
    constexpr float base = -80.0f;
    int idx = (int)std::round((std::clamp(deg, -80.0f, 80.0f) - base) / step);
    if (idx < 0) idx = 0;
    if (idx >= NUM_DIRECTIONS) idx = NUM_DIRECTIONS - 1;
    return idx;
}

static int find_el(float deg) {
    deg = std::clamp(deg, -45.0f, 230.625f);
    int bi = 0; float bd = 1e9f;
    for (int i = 0; i < CIPIC_V9_NUM_ELEVATIONS; i++) {
        float d = std::fabs(deg - g_el_vals[i]);
        if (d < bd) { bd = d; bi = i; }
    }
    return bi;
}

// ============================================================
// HrirSynthesisParams
// ============================================================

HrirSynthesisParams::HrirSynthesisParams() {
    HrtfParams d;
    headRadiusM = (d.interauralDist_mm / 1000.0f) / 2.0f;
    earHeightL = d.earWidth_mm;
    earHeightR = d.earWidth_mm;
    shoulderWidth = d.shoulderWidth_mm;
    earRotation = d.earRotation_deg;
}

HrirSynthesisParams::HrirSynthesisParams(const HrtfParams& p) {
    headRadiusM = (p.interauralDist_mm / 1000.0f) / 2.0f;
    earHeightL = p.earWidth_mm;
    earHeightR = p.earWidth_mm;
    shoulderWidth = p.shoulderWidth_mm;
    earRotation = p.earRotation_deg;
}

// ============================================================
// HrtfSynthesizer
// ============================================================

HrtfSynthesizer::HrtfSynthesizer() : m_params(), m_matchedGroup(0) {
    memset(m_cacheL, 0, sizeof(m_cacheL));
    memset(m_cacheR, 0, sizeof(m_cacheR));
    m_cacheValid = false;
}

void HrtfSynthesizer::setParams(const HrirSynthesisParams& params) {
    m_params = params;
    // Match to closest group via head width + pinna height + concha depth
    float best = 1e9f;
    m_matchedGroup = 0;
    for (int g = 0; g < CIPIC_V9_NUM_GROUPS; g++) {
        float dx = params.earHeightL - cipic_v9_group_info[g][5] / 10.0f;
        float dy = params.earRotation - cipic_v9_group_info[g][6] / 10.0f;
        float d = dx*dx + dy*dy;
        if (d < best) { best = d; m_matchedGroup = g; }
    }
    LOGI("Group match: %d (earH=%.0f concha=%.0f)", m_matchedGroup, params.earHeightL, params.earRotation);
    m_cacheValid = false;
}

void HrtfSynthesizer::precomputeCache() {
    if (!g_hrir_loaded) {
        LOGE("HRIR not loaded");
        memset(m_cacheL, 0, sizeof(m_cacheL));
        memset(m_cacheR, 0, sizeof(m_cacheR));
        return;
    }

    int el_horiz = 8; // elevation 0°
    float maxPk = 0.0f;
    float sumPk = 0.0f; int countPk = 0;
    float srcPk[CIPIC_V9_NUM_AZIMUTHS] = {};
    // V9.2: Use group-warped HRIRs, fallback to reference
    int grp = (m_matchedGroup >= 0) ? m_matchedGroup : 0;
    for (int i = 0; i < CIPIC_V9_NUM_AZIMUTHS; i++) {
        float pk = 0.0f;
        const float* rL = cipic_lookup(grp, i, el_horiz, 0);
        const float* rR = cipic_lookup(grp, i, el_horiz, 1);
        if (!rL || !rR) continue;
        for (int j = 0; j < CIPIC_V9_HRIR_LENGTH; j++) {
            pk = std::max(pk, std::fabs(rL[j]));
            pk = std::max(pk, std::fabs(rR[j]));
        }
        srcPk[i] = pk;
        maxPk = std::max(maxPk, pk);
        sumPk += pk; countPk++;
    }
    // V9.3: use average peak across all directions (prevents per-direction 5-20× boost)
    float avgPk = (countPk > 0) ? sumPk / (float)countPk : 1.0f;
    if (avgPk < 1e-10f) avgPk = 1.0f;

    // V9.4: 72-direction cache via bilinear interpolation from 25 CIPIC sources
    constexpr float azStep = 2.5f;
    for (int d = 0; d < NUM_DIRECTIONS; d++) {
        m_normFactor[d] = 1.0f / avgPk;
        float targetAz = -80.0f + d * azStep;

        // Find two nearest CIPIC source directions
        float srcFrac = (targetAz - g_az_vals[0]) / (g_az_vals[CIPIC_V9_NUM_AZIMUTHS-1] - g_az_vals[0]);
        srcFrac = std::clamp(srcFrac, 0.0f, 1.0f);
        float srcIdx = srcFrac * (CIPIC_V9_NUM_AZIMUTHS - 1);
        int si0 = (int)srcIdx;
        int si1 = std::min(si0 + 1, CIPIC_V9_NUM_AZIMUTHS - 1);
        float t = srcIdx - (float)si0;

        const float* rL0 = cipic_lookup(grp, si0, el_horiz, 0);
        const float* rL1 = cipic_lookup(grp, si1, el_horiz, 0);
        const float* rR0 = cipic_lookup(grp, si0, el_horiz, 1);
        const float* rR1 = cipic_lookup(grp, si1, el_horiz, 1);
        float n = m_normFactor[d];
        for (int j = 0; j < CIPIC_V9_HRIR_LENGTH; j++) {
            float l0 = rL0 ? rL0[j] : 0.0f;
            float l1 = rL1 ? rL1[j] : 0.0f;
            float r0 = rR0 ? rR0[j] : 0.0f;
            float r1 = rR1 ? rR1[j] : 0.0f;
            m_cacheL[d][j] = (l0 + (l1 - l0) * t) * n;
            m_cacheR[d][j] = (r0 + (r1 - r0) * t) * n;
        }
    }
    m_cacheValid = true;
    LOGI("Cache: grp=%d dirs=%d taps=%d peak=%.3f", grp, NUM_DIRECTIONS, HRIR_LENGTH, maxPk);
}

void HrtfSynthesizer::synthesize(float azimuth, float elevation,
                                  float* hrirLeft, float* hrirRight) const {
    memset(hrirLeft, 0, HRIR_LENGTH * sizeof(float));
    memset(hrirRight, 0, HRIR_LENGTH * sizeof(float));
    if (!g_hrir_loaded) return;

    int ai = find_az(azimuth);
    int ei = find_el(elevation);
    int grp = (m_matchedGroup >= 0) ? m_matchedGroup : 0;  // V9.2: group-warped
    const float* sL = cipic_lookup(grp, ai, ei, 0);
    const float* sR = cipic_lookup(grp, ai, ei, 1);
    if (!sL || !sR) return;

    float n = 1.0f;  // V9.3: auto-norm
    for (int j = 0; j < CIPIC_V9_HRIR_LENGTH && j < HRIR_LENGTH; j++) {
        hrirLeft[j] = sL[j] * n;
        hrirRight[j] = sR[j] * n;
    }
}

void HrtfSynthesizer::getCached(float azimuth, float* hrirLeft, float* hrirRight) {
    // V9.3: always rebuild if cache invalid and HRIR loaded
    if (!m_cacheValid && g_hrir_loaded) {
        const_cast<HrtfSynthesizer*>(this)->precomputeCache();
    }
    memset(hrirLeft, 0, HRIR_LENGTH * sizeof(float));
    memset(hrirRight, 0, HRIR_LENGTH * sizeof(float));
    if (!m_cacheValid || azimuth < -80.0f || azimuth > 80.0f) return;

    int ai = find_az(azimuth);
    if (ai >= NUM_DIRECTIONS) return;
    memcpy(hrirLeft, m_cacheL[ai], HRIR_LENGTH * sizeof(float));
    memcpy(hrirRight, m_cacheR[ai], HRIR_LENGTH * sizeof(float));
}

void HrtfSynthesizer::synthesizeOne(float azimuth, float elevation,
                                     float* hrirL, float* hrirR) const {
    synthesize(azimuth, elevation, hrirL, hrirR);
}

void HrtfSynthesizer::createWindowedSinc(float* hrir, int length,
                                          float fcLow, float fcHigh, float sampleRate) {
    memset(hrir, 0, length * sizeof(float));
}
