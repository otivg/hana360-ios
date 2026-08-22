package com.hanamimi.spatial

import android.content.Context
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

/**
 * 360 空间音效 MethodChannel ("hanamimi/spatial_dsp")
 *
 * Dart → Native 参数下发; enable/disable 控制 DSP bypass;
 * startTracking/stopTracking 控制传感器头部追踪。
 */
class SpatialDspChannel(context: Context) : MethodChannel.MethodCallHandler {

    private val tracker = SpatialSensorTracker(context)

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        android.util.Log.i("SpatialDsp", "channel call: ${call.method}")
        try {
            when (call.method) {
                "enable" -> { SpatialDspBridge.bypass = false; result.success(null) }
                "disable" -> { SpatialDspBridge.bypass = true; tracker.stop(); result.success(null) }

                "setUpmix" -> {
                    val a = call.arguments as Map<*, *>
                    SpatialDspBridge.setUpmix(a["enabled"] as? Boolean ?: true, (a["layoutMode"] as? Number)?.toInt() ?: 1)
                    result.success(null)
                }
                "setUpmixGains" -> {
                    val a = call.arguments as Map<*, *>
                    SpatialDspBridge.setUpmixGains(
                        (a["masterGain"] as? Number)?.toFloat() ?: 2f,
                        (a["speakerDistance"] as? Number)?.toFloat() ?: 2f,
                        (a["outputLevel"] as? Number)?.toFloat() ?: 2f,
                    )
                    result.success(null)
                }
                "setHrtf" -> {
                    val a = call.arguments as Map<*, *>
                    SpatialDspBridge.setHrtf(
                        a["enabled"] as? Boolean ?: true,
                        (a["group"] as? Number)?.toInt() ?: 0,
                        (a["outputGain"] as? Number)?.toFloat() ?: 0.5f,
                    )
                    result.success(null)
                }
                "setEq" -> {
                    val a = call.arguments as Map<*, *>
                    val gains = (a["gains"] as? List<*>)?.mapNotNull { (it as? Number)?.toFloat() }?.toFloatArray()
                        ?: FloatArray(10) { 0f }
                    SpatialDspBridge.setEq(a["enabled"] as? Boolean ?: false, gains)
                    result.success(null)
                }
                "setReverb" -> {
                    val a = call.arguments as Map<*, *>
                    SpatialDspBridge.setReverb(
                        enabled = a["enabled"] as? Boolean ?: true,
                        rt60 = (a["rt60"] as? Number)?.toFloat() ?: 0.3f,
                        roomSize = (a["roomSize"] as? Number)?.toFloat() ?: 8f,
                        damping = (a["damping"] as? Number)?.toFloat() ?: 0.5f,
                        diffusion = (a["diffusion"] as? Number)?.toFloat() ?: 0.7f,
                        preDelayMs = (a["preDelayMs"] as? Number)?.toFloat() ?: 20f,
                        gainDb = (a["gainDb"] as? Number)?.toFloat() ?: -12f,
                    )
                    result.success(null)
                }
                "setHeadRotation" -> {
                    val a = call.arguments as Map<*, *>
                    SpatialDspBridge.setHeadRotation(
                        (a["yaw"] as? Number)?.toFloat() ?: 0f,
                        (a["pitch"] as? Number)?.toFloat() ?: 0f,
                        a["active"] as? Boolean ?: false,
                    )
                    result.success(null)
                }
                "setWide" -> {
                    SpatialDspBridge.setWide(call.arguments as? Boolean ?: true)
                    result.success(null)
                }
                "startTracking" -> { tracker.start(); result.success(null) }
                "stopTracking" -> { tracker.stop(); result.success(null) }
                "getDefaults" -> result.success(
                    mapOf(
                        "layoutMode" to 1, "masterGain" to 2.0, "speakerDistance" to 2.0,
                        "outputLevel" to 2.0, "hrtfGroup" to 0, "hrtfGain" to 0.5,
                        "eqEnabled" to false, "reverbEnabled" to true,
                    )
                )
                else -> result.notImplemented()
            }
        } catch (e: Exception) {
            result.error("spatial_dsp", e.message, null)
        }
    }
}
