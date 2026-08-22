/**
 * @file jni_spatial_dsp.cpp
 * @brief JNI 桥 — 将 ssp_* C API 注册到 com.hanamimi.spatial.SpatialDspNative
 *
 * 使用 JNI_OnLoad + RegisterNatives 显式注册 (抗 R8 混淆/名称变更)。
 */
#include <jni.h>
#include <android/log.h>

#include "spatial_dsp.h"

#define TAG "SpatialDspJNI"
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO, TAG, __VA_ARGS__)
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, TAG, __VA_ARGS__)

static SpatialDsp* h(jlong ptr) { return reinterpret_cast<SpatialDsp*>(ptr); }

extern "C" {

static jlong JNICALL nativeCreate(JNIEnv*, jobject) {
    return reinterpret_cast<jlong>(ssp_create());
}

static void JNICALL nativeDestroy(JNIEnv*, jobject, jlong ptr) {
    ssp_destroy(h(ptr));
}

static jint JNICALL nativeConfigure(JNIEnv*, jobject, jlong ptr, jint sr, jint fpb) {
    return (jint)ssp_configure(h(ptr), sr, fpb);
}

static jint JNICALL nativeLoadHrirFile(JNIEnv* env, jobject, jlong ptr, jstring path) {
    const char* cpath = env->GetStringUTFChars(path, nullptr);
    if (!cpath) return -1;
    int r = ssp_load_hrir_file(h(ptr), cpath);
    env->ReleaseStringUTFChars(path, cpath);
    return r;
}

// FloatArray 版 (测试/调试用)
static void JNICALL nativeProcess(JNIEnv* env, jobject, jlong ptr, jfloatArray in, jfloatArray out, jint frames) {
    jfloat* i = env->GetFloatArrayElements(in, nullptr);
    jfloat* o = env->GetFloatArrayElements(out, nullptr);
    if (i && o) ssp_process(h(ptr), i, o, frames);
    if (o) env->ReleaseFloatArrayElements(out, o, 0);
    if (i) env->ReleaseFloatArrayElements(in, i, JNI_ABORT);
}

// Direct ByteBuffer 版 (零拷贝, Media3 音频线程用)
static void JNICALL nativeProcessDirect(JNIEnv* env, jobject, jlong ptr, jobject inBuf, jobject outBuf, jint frames) {
    float* in = (float*)env->GetDirectBufferAddress(inBuf);
    float* out = (float*)env->GetDirectBufferAddress(outBuf);
    if (!in || !out) { LOGE("processDirect: non-direct buffer"); return; }
    ssp_process(h(ptr), in, out, frames);
}

static void JNICALL nativeFlush(JNIEnv*, jobject, jlong ptr) { ssp_flush(h(ptr)); }
static void JNICALL nativeSetBypass(JNIEnv*, jobject, jlong ptr, jboolean b) { ssp_set_bypass(h(ptr), b ? 1 : 0); }
static void JNICALL nativeSetUpmix(JNIEnv*, jobject, jlong ptr, jboolean en, jint layout) { ssp_set_upmix(h(ptr), en ? 1 : 0, layout); }
static void JNICALL nativeSetUpmixGains(JNIEnv*, jobject, jlong ptr, jfloat mg, jfloat sd, jfloat ol) { ssp_set_upmix_gains(h(ptr), mg, sd, ol); }
static void JNICALL nativeSetHrtf(JNIEnv*, jobject, jlong ptr, jboolean en, jint g, jfloat og) { ssp_set_hrtf(h(ptr), en ? 1 : 0, g, og); }

static void JNICALL nativeSetEq(JNIEnv* env, jobject, jlong ptr, jboolean en, jfloatArray gains) {
    jfloat* g = env->GetFloatArrayElements(gains, nullptr);
    if (g) { ssp_set_eq(h(ptr), en ? 1 : 0, g); env->ReleaseFloatArrayElements(gains, g, JNI_ABORT); }
}

static void JNICALL nativeSetReverb(JNIEnv*, jobject, jlong ptr, jboolean en,
                                    jfloat rt60, jfloat room, jfloat damp, jfloat diff, jfloat pd, jfloat gdb) {
    ssp_set_reverb(h(ptr), en ? 1 : 0, rt60, room, damp, diff, pd, gdb);
}

static void JNICALL nativeSetHeadRotation(JNIEnv*, jobject, jlong ptr, jfloat yaw, jfloat pitch, jboolean active) {
    ssp_set_head_rotation(h(ptr), yaw, pitch, active ? 1 : 0);
}

static void JNICALL nativeSetWide(JNIEnv*, jobject, jlong ptr, jboolean wide) {
    ssp_set_wide(h(ptr), wide ? 1 : 0);
}

// ==================== 显式注册 ====================

static const JNINativeMethod kMethods[] = {
    {"create",            "()J",                       (void*)nativeCreate},
    {"destroy",           "(J)V",                      (void*)nativeDestroy},
    {"configure",         "(JII)I",                    (void*)nativeConfigure},
    {"loadHrirFile",      "(JLjava/lang/String;)I",    (void*)nativeLoadHrirFile},
    {"process",           "(J[F[FI)V",                 (void*)nativeProcess},
    {"processDirect",     "(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V", (void*)nativeProcessDirect},
    {"flush",             "(J)V",                      (void*)nativeFlush},
    {"setBypass",         "(JZ)V",                     (void*)nativeSetBypass},
    {"setUpmix",          "(JZI)V",                    (void*)nativeSetUpmix},
    {"setUpmixGains",     "(JFFF)V",                   (void*)nativeSetUpmixGains},
    {"setHrtf",           "(JZIF)V",                   (void*)nativeSetHrtf},
    {"setEq",             "(JZ[F)V",                   (void*)nativeSetEq},
    {"setReverb",         "(JZFFFFFF)V",               (void*)nativeSetReverb},
    {"setHeadRotation",   "(JFFZ)V",                   (void*)nativeSetHeadRotation},
    {"setWide",           "(JZ)V",                     (void*)nativeSetWide},
};

JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM* vm, void*) {
    JNIEnv* env = nullptr;
    if (vm->GetEnv((void**)&env, JNI_VERSION_1_6) != JNI_OK) return JNI_ERR;
    jclass cls = env->FindClass("com/hanamimi/spatial/SpatialDspNative");
    if (!cls) { LOGE("JNI_OnLoad: class com/hanamimi/spatial/SpatialDspNative not found"); return JNI_ERR; }
    if (env->RegisterNatives(cls, kMethods, (int)(sizeof(kMethods) / sizeof(kMethods[0]))) != JNI_OK) {
        LOGE("JNI_OnLoad: RegisterNatives failed");
        return JNI_ERR;
    }
    LOGI("JNI_OnLoad: SpatialDspNative registered (%d methods)", (int)(sizeof(kMethods)/sizeof(kMethods[0])));
    return JNI_VERSION_1_6;
}

} // extern "C"
