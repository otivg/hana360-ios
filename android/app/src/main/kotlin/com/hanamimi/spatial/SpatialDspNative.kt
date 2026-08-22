package com.hanamimi.spatial

/**
 * 360 空间音效 DSP — JNI 桥接
 *
 * 包装 libspatial_dsp.so 的 C API (ssp_*), 由 JNI_OnLoad 显式注册。
 * 线程纪律: process/processDirect 由 Media3 音频线程调用 (零分配);
 * 其余 setter 由 UI/控制线程调用。
 */
class SpatialDspNative {

    init {
        System.loadLibrary("spatial_dsp")
    }

    // ============ 生命周期 ============
    external fun create(): Long
    external fun destroy(handle: Long)
    external fun configure(handle: Long, sampleRate: Int, framesPerBurst: Int): Int
    external fun loadHrirFile(handle: Long, path: String): Int
    external fun process(handle: Long, inStereo: FloatArray, outStereo: FloatArray, numFrames: Int)
    external fun processDirect(handle: Long, inBuf: java.nio.ByteBuffer, outBuf: java.nio.ByteBuffer, numFrames: Int)
    external fun flush(handle: Long)

    // ============ 参数控制 ============
    external fun setBypass(handle: Long, bypass: Boolean)
    external fun setUpmix(handle: Long, enabled: Boolean, layoutMode: Int)
    external fun setUpmixGains(handle: Long, masterGain: Float, speakerDistance: Float, outputLevel: Float)
    external fun setHrtf(handle: Long, enabled: Boolean, group: Int, outputGain: Float)
    external fun setEq(handle: Long, enabled: Boolean, gainsDb: FloatArray)
    external fun setReverb(
        handle: Long, enabled: Boolean,
        rt60: Float, roomSize: Float, damping: Float, diffusion: Float, preDelayMs: Float, gainDb: Float,
    )
    external fun setHeadRotation(handle: Long, yawDeg: Float, pitchDeg: Float, active: Boolean)
    external fun setWide(handle: Long, wide: Boolean)
}
