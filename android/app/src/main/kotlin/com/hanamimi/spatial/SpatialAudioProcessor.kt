package com.hanamimi.spatial

import androidx.media3.common.C
import androidx.media3.common.audio.AudioProcessor
import androidx.media3.common.audio.AudioProcessor.AudioFormat
import java.nio.ByteBuffer
import java.nio.ByteOrder

/**
 * Media3 AudioProcessor — 将 DSP 挂入 ExoPlayer 音频链 (media3 1.4.x 新版 API)
 *
 * V3.0.7: 按 Media3 官方 BaseAudioProcessor 模式重写 (修复播放卡 loading)
 *
 * 关键语义修正:
 * 1. isEnded() = inputEnded && outputBuffer==EMPTY — 播放中恒 false!
 *    (旧实现 isEnded()=output==null → getOutput 后返回 true → Media3 认为链结束 → 卡 loading)
 * 2. queueInput 处理 Media3 传入 buffer 的 position 偏移 (可能非 0)
 * 3. 独立输出 buffer (官方 replaceOutputBuffer 模式), 不复用输入 buffer
 * 4. int16/float32 双格式支持: int16 → float32 → DSP → int16
 */
class SpatialAudioProcessor : AudioProcessor {

    private var inputFormat = AudioFormat.NOT_SET
    private var outputBuffer: ByteBuffer = AudioProcessor.EMPTY_BUFFER
    private var inputEnded = false

    // 音频线程复用 buffer (避免 GC)
    private var reusableOut: ByteBuffer? = null
    private var scratch: FloatArray? = null

    private fun ensureOutput(cap: Int) {
        val cur = reusableOut
        if (cur == null || cur.capacity() < cap) {
            reusableOut = ByteBuffer.allocateDirect(cap).order(ByteOrder.nativeOrder())
        }
        outputBuffer = reusableOut!!
    }

    private fun ensureScratch(n: Int) {
        if (scratch == null || scratch!!.size < n) scratch = FloatArray(n)
    }

    override fun configure(inputFormat: AudioFormat): AudioFormat {
        this.inputFormat = inputFormat
        SpatialDspBridge.onFormatChanged(inputFormat.sampleRate, inputFormat.channelCount)
        android.util.Log.i("SpatialDsp",
            "processor configure: ${inputFormat.sampleRate}Hz/${inputFormat.channelCount}ch/enc=${inputFormat.encoding}/bpf=${inputFormat.bytesPerFrame}")
        // 透传: 已是立体声则原样, 否则强制立体声 (Media3 自动重采样/下混)
        return if (inputFormat.channelCount == 2) inputFormat
        else AudioFormat(inputFormat.sampleRate, 2, inputFormat.encoding)
    }

    // Media3 只在 configure 时查询一次 isActive() — 恒 true 始终挂链,
    // bypass 检查移至 queueInput 内部 (V3.0.4 决策)
    override fun isActive(): Boolean = true

    private var qCount = 0
    override fun queueInput(inputBuffer: ByteBuffer) {
        val start = inputBuffer.position()
        val len = inputBuffer.limit() - start
        val bpf = inputFormat.bytesPerFrame
        val frames = if (bpf > 0) len / bpf else 0
        if (++qCount % 200 == 1) {
            android.util.Log.i("SpatialDsp",
                "queueInput #$qCount pos=$start len=$len bpf=$bpf frames=$frames enc=${inputFormat.encoding} bypass=${SpatialDspBridge.bypass}")
        }

        if (frames <= 0) {
            // 无有效帧 — 直通空输出
            ensureOutput(0)
            outputBuffer.clear().flip()
            return
        }

        val n = frames * 2  // stereo samples
        if (!SpatialDspBridge.bypass) {
            when (inputFormat.encoding) {
                C.ENCODING_PCM_FLOAT -> {
                    // float32: 拷贝到 scratch → DSP → 写独立输出
                    ensureScratch(n)
                    val s = scratch!!
                    var pos = start
                    for (i in 0 until n) { s[i] = inputBuffer.getFloat(pos); pos += 4 }
                    SpatialDspBridge.processFloats(s, frames)
                    ensureOutput(len)
                    outputBuffer.clear()
                    for (i in 0 until n) outputBuffer.putFloat(s[i])
                    outputBuffer.flip()
                }
                C.ENCODING_PCM_16BIT -> {
                    // int16 → float32 → DSP → int16
                    ensureScratch(n)
                    val s = scratch!!
                    var pos = start
                    for (i in 0 until n) {
                        s[i] = inputBuffer.getShort(pos).toFloat() / 32768f
                        pos += 2
                    }
                    SpatialDspBridge.processFloats(s, frames)
                    ensureOutput(len)
                    outputBuffer.clear()
                    for (i in 0 until n) {
                        val v = (s[i] * 32768f).toInt().coerceIn(-32768, 32767)
                        outputBuffer.putShort(v.toShort())
                    }
                    outputBuffer.flip()
                }
                else -> {
                    // 其他编码 (8bit/24bit等): 直通复制
                    passthrough(inputBuffer, start, len)
                }
            }
        } else {
            // bypass: 原样直通
            passthrough(inputBuffer, start, len)
        }
        // V3.0.9 FIX: 官方 ChannelMapping.queueInput 末尾会 inputBuffer.position(limit)
        // 标记"已消费输入"。Media3 processData 比较 remaining() 前后变化判断链是否有进展,
        // 不推进 position → 链判定无进展 → 数据流断裂 (44.1kHz 只播 100ms 就停)。
        inputBuffer.position(inputBuffer.limit())
    }

    private fun passthrough(inputBuffer: ByteBuffer, start: Int, len: Int) {
        ensureOutput(len)
        outputBuffer.clear()
        val d = inputBuffer.duplicate() as ByteBuffer
        d.position(start).limit(start + len)
        outputBuffer.put(d)
        outputBuffer.flip()
    }

    override fun queueEndOfStream() {
        inputEnded = true
    }

    private var gCount = 0
    override fun getOutput(): ByteBuffer {
        val o = outputBuffer
        outputBuffer = AudioProcessor.EMPTY_BUFFER
        if (++gCount % 200 == 1) {
            android.util.Log.i("SpatialDsp",
                "getOutput #$gCount remaining=${o.remaining()} isEMPTY=${o === AudioProcessor.EMPTY_BUFFER}")
        }
        return o
    }

    override fun isEnded(): Boolean =
        inputEnded && outputBuffer === AudioProcessor.EMPTY_BUFFER

    override fun flush() {
        outputBuffer = AudioProcessor.EMPTY_BUFFER
        inputEnded = false
        SpatialDspBridge.flush()
    }

    override fun reset() {
        outputBuffer = AudioProcessor.EMPTY_BUFFER
        inputEnded = false
    }
}
