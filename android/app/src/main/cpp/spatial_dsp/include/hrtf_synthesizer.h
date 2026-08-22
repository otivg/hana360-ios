#ifndef HRTF_SYNTHESIZER_H
#define HRTF_SYNTHESIZER_H

#include "spatial_types.h"
#include <cstdint>
#include <vector>

// Forward-declare Android types (declared in android/asset_manager.h)
struct AAssetManager;

static constexpr int HRIR_LENGTH = 256;
static constexpr int HRIR_SR = 48000;
static constexpr int NUM_DIRECTIONS = 72;  // V9.4: 72 azimuths (every 5°, bilinear interp)

struct HrirSynthesisParams {
    float headRadiusM;
    float earHeightL;
    float earHeightR;
    float shoulderWidth;
    float earRotation;

    HrirSynthesisParams();
    HrirSynthesisParams(const HrtfParams& p);
};

class HrtfSynthesizer {
public:
    HrtfSynthesizer();

    /** V9.1: Init HRIR asset (call once from JNI) */
    static bool initAsset(AAssetManager* mgr);
    /** 360-PORT: Init HRIR from a raw file path (alternative to AAssetManager) */
    static bool initAssetPath(const char* path);
    static void freeAsset();
    /** 360-PORT: Directly select one of the 15 CIPIC groups (0..14) */
    void setGroup(int group);

    void setParams(const HrirSynthesisParams& params);

    /** Main API: synthesize HRIR for given direction */
    void synthesize(float azimuth, float elevation,
                    float* hrirLeft, float* hrirRight) const;

    void precomputeCache();

    /** V9.2: Cached HRIR lookup (mutable for lazy rebuild) */
    void getCached(float azimuth, float* hrirLeft, float* hrirRight);

    /** V9.1: match anthropometry to closest group */
    int getMatchedGroup() const { return m_matchedGroup; }

private:
    HrirSynthesisParams m_params;
    int m_matchedGroup = 0;

    float m_cacheL[NUM_DIRECTIONS][HRIR_LENGTH];
    float m_cacheR[NUM_DIRECTIONS][HRIR_LENGTH];
    float m_normFactor[NUM_DIRECTIONS];
    bool m_cacheValid = false;

    void synthesizeOne(float azimuth, float elevation,
                       float* hrirL, float* hrirR) const;
    static void createWindowedSinc(float* hrir, int length,
                                    float fcLow, float fcHigh, float sampleRate);
    void recacheNeeded() { m_cacheValid = false; }
};

#endif
