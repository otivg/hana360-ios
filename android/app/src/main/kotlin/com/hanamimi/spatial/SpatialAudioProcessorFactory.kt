package com.hanamimi.spatial

import androidx.media3.common.audio.AudioProcessor

/**
 * 360 DSP AudioProcessor 工厂 — 由 patched just_audio 插件按类名反射调用 create()
 * (见 third_party/just_audio AudioPlayer.setupCustomAudioProcessor)
 *
 * 约定: 插件通过反射调用无参 create() 方法获取 AudioProcessor 实例。
 */
class SpatialAudioProcessorFactory {
    fun create(): AudioProcessor = SpatialAudioProcessor()
}
