package com.hanamimi.spatial

import android.content.Context
import java.io.File

/**
 * 360 空间音效 DSP — 单例桥
 *
 * 职责:
 *  - 持有 SpatialDspNative handle
 *  - HRIR 资产 (assets/cipic_v9_hrir.bin) 首次复制到 filesDir
 *  - bypass 标志 (360 OFF = 直通; Media3 AudioProcessor.isActive 依赖它)
 *  - 参数 setter (UI 线程) / processDirect (音频线程)
 *
 * 线程纪律: 音频线程仅调用 processDirect (C 层零分配/零锁);
 * 其余 setter 由 UI/控制线程调用 (float/bool 写入, ARM64 原子)。
 */
object SpatialDspBridge {

    @Volatile var bypass: Boolean = true
        set(value) {
            field = value
            android.util.Log.i("SpatialDsp", "bypass → $value (360 ${if (value) "OFF" else "ON"})")
            if (handle != 0L) native.setBypass(handle, value)
        }

    @Volatile private var handle: Long = 0L
    @Volatile private var configured = false

    private val native = SpatialDspNative()
    private val HRIR_ASSET = "cipic_v9_hrir.bin"

    @Synchronized
    fun init(context: Context) {
        if (configured) return
        handle = native.create()
        if (handle == 0L) {
            android.util.Log.e("SpatialDsp", "native create failed")
            return
        }

        // 1. Copy HRIR asset → filesDir (一次)
        val hrirFile = File(context.filesDir, HRIR_ASSET)
        if (!hrirFile.exists() || hrirFile.length() < 1_000_000L) {
            try {
                context.assets.open(HRIR_ASSET).use { input ->
                    hrirFile.outputStream().use { output -> input.copyTo(output) }
                }
            } catch (e: Exception) {
                android.util.Log.e("SpatialDsp", "HRIR asset copy failed", e)
            }
        }

        // 2. Configure (默认 48kHz; 实际采样率在 onInputFormatChanged 时重配)
        if (native.configure(handle, 48000, 256) == 0) {
            native.loadHrirFile(handle, hrirFile.absolutePath)
        }
        native.setBypass(handle, true)
        configured = true
        android.util.Log.i("SpatialDsp", "bridge initialized")
    }

    /** Media3 音频线程: 就地处理 interleaved float32 立体声 (零拷贝) */
    fun processDirect(inBuf: java.nio.ByteBuffer, outBuf: java.nio.ByteBuffer, frames: Int) {
        if (handle != 0L && !bypass) native.processDirect(handle, inBuf, outBuf, frames)
    }

    /** Media3 音频线程: FloatArray 版 (int16 输入转换后使用) */
    fun processFloats(inOut: FloatArray, frames: Int) {
        if (handle != 0L && !bypass) native.process(handle, inOut, inOut, frames)
    }

    /** Media3 flush (格式切换/暂停) → 清空 DSP 内部状态 */
    fun flush() {
        if (handle != 0L) native.flush(handle)
    }

    /** 采样率/声道变化 → 重配 DSP */
    fun onFormatChanged(sampleRate: Int, channels: Int) {
        if (handle != 0L && configured && sampleRate > 0) {
            native.configure(handle, sampleRate, 256)
        }
    }

    // ============ 参数控制 (MethodChannel 由 M4 UI 层注册) ============
    fun setUpmix(enabled: Boolean, layoutMode: Int) {
        if (handle != 0L) native.setUpmix(handle, enabled, layoutMode)
    }
    fun setUpmixGains(masterGain: Float, speakerDistance: Float, outputLevel: Float) {
        if (handle != 0L) native.setUpmixGains(handle, masterGain, speakerDistance, outputLevel)
    }
    fun setHrtf(enabled: Boolean, group: Int, outputGain: Float) {
        if (handle != 0L) native.setHrtf(handle, enabled, group, outputGain)
    }
    fun setEq(enabled: Boolean, gainsDb: FloatArray) {
        if (handle != 0L) native.setEq(handle, enabled, gainsDb)
    }
    fun setReverb(
        enabled: Boolean, rt60: Float, roomSize: Float, damping: Float,
        diffusion: Float, preDelayMs: Float, gainDb: Float,
    ) {
        if (handle != 0L) native.setReverb(handle, enabled, rt60, roomSize, damping, diffusion, preDelayMs, gainDb)
    }
    fun setHeadRotation(yawDeg: Float, pitchDeg: Float, active: Boolean) {
        if (handle != 0L) native.setHeadRotation(handle, yawDeg, pitchDeg, active)
    }
    fun setWide(wide: Boolean) {
        if (handle != 0L) native.setWide(handle, wide)
    }
}
