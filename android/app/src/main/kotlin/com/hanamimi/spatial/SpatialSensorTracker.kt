package com.hanamimi.spatial

import android.content.Context
import android.hardware.Sensor
import android.hardware.SensorEvent
import android.hardware.SensorEventListener
import android.hardware.SensorManager
import android.os.SystemClock

/**
 * 头部追踪 — 手机旋转矢量传感器 (20Hz 节流 + EMA 平滑)
 *
 * ROTATION_VECTOR + remap (AXIS_X, AXIS_Z): 竖握时
 *   - o[0] = 绕竖直轴旋转 → 左右转头 (yaw)
 *   - o[1] = 绕左右耳轴旋转 → 点头/抬头 (pitch)
 * 符号约定: 头部右转 yaw>0 (与 Baseus set_head_rotation 约定一致, 真机可微调)。
 */
class SpatialSensorTracker(context: Context) {

    private val sensorManager =
        context.getSystemService(Context.SENSOR_SERVICE) as SensorManager

    private var sensor: Sensor? = null
    private var listener: SensorEventListener? = null

    private var lastUpdate = 0L
    private var smoothYaw = 0f
    private var smoothPitch = 0f

    fun start() {
        if (listener != null) return
        sensor = sensorManager.getDefaultSensor(Sensor.TYPE_ROTATION_VECTOR)
        if (sensor == null) return

        listener = object : SensorEventListener {
            override fun onSensorChanged(event: SensorEvent) {
                val now = SystemClock.elapsedRealtime()
                if (now - lastUpdate < 50) return  // 20Hz 节流
                lastUpdate = now

                val r = FloatArray(9)
                val out = FloatArray(9)
                val o = FloatArray(3)
                // API 36: getRotationMatrixFromVector 返回 void (无效数据时 R 保持单位阵, 无害)
                SensorManager.getRotationMatrixFromVector(r, event.values)
                // 竖握手机: 绕世界竖直轴 = 左右转头, 绕设备横向轴 = 点头
                SensorManager.remapCoordinateSystem(
                    r, SensorManager.AXIS_X, SensorManager.AXIS_Z, out)
                SensorManager.getOrientation(out, o)

                val yawDeg = -Math.toDegrees(o[0].toDouble()).toFloat()
                val pitchDeg = -Math.toDegrees(o[1].toDouble()).toFloat()

                // EMA 平滑 (真机调参: alpha 越大越灵敏)
                smoothYaw = 0.6f * yawDeg + 0.4f * smoothYaw
                smoothPitch = 0.6f * pitchDeg + 0.4f * smoothPitch

                SpatialDspBridge.setHeadRotation(smoothYaw, smoothPitch, true)
            }

            override fun onAccuracyChanged(sensor: Sensor?, accuracy: Int) {}
        }
        sensorManager.registerListener(
            listener, sensor,
            SensorManager.SENSOR_DELAY_GAME,   // ~50Hz 采样, 节流后 20Hz 输出
        )
        smoothYaw = 0f; smoothPitch = 0f
        android.util.Log.i("SpatialDsp", "sensor tracking started")
    }

    fun stop() {
        listener?.let { sensorManager.unregisterListener(it) }
        listener = null
        smoothYaw = 0f; smoothPitch = 0f
        SpatialDspBridge.setHeadRotation(0f, 0f, false)
    }
}
