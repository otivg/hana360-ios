import Foundation
import AVFoundation
import SpatialDsp
import DtsDecode

// Swift 6 strictly forbids NSLock.lock()/unlock() in `@Sendable` closures
// (e.g. AVAudioPlayerNode.scheduleBuffer's completion). Wrap them in a
// normal method so the compiler doesn't see the bare lock()/unlock() calls.
private extension NSLock {
    @discardableResult
    func withLock<T>(_ body: () throws -> T) rethrows -> T {
        lock()
        defer { unlock() }
        return try body()
    }
}

/// M3: Standard-architecture playback engine.
///
/// Apple-recommended pipeline (developer.apple.com/documentation/avfaudio):
///
///   AVAudioFile (standard decoder, auto format conversion)
///     → read(into: AVAudioPCMBuffer, commonFormat: .pcmFormatFloat32)
///     → DSP (ssp_process on interleaved float32)
///     → AVAudioPlayerNode.scheduleBuffer (standard scheduling)
///     → AVAudioEngine → mainMixer → output
///
/// Why this is better than the prototype:
///   - AVAudioFile decodes MP3/AAC/ALAC/FLAC/WAV *correctly*.
///   - seek is trivial: set AVAudioFile.framePosition then read.
///   - AVAudioPlayerNode completion handler is the standard, deadlock-free
///     way to know when playback finished.
///
/// Decode fallback: ExtAudioFile/AVAudioFile rejects some MPEG-2 Layer III
/// variants (24 kHz mono files produced by FFmpeg) that AVAssetReader CAN
/// decode. When AVAudioFile init throws we transparently fall back to an
/// AVAssetReader → LinearPCM float32 pipeline so every playable file keeps
/// working (the user's real-world files must never end up silent).
///
/// DSP (shared SpatialDsp*) is applied per-buffer before scheduling; when
/// the DSP singleton is unavailable (nil) the buffer passes through
/// untouched so playback never depends on the 360 chain.
/// `@unchecked Sendable`: all mutable state is guarded by `stateLock` or
/// only touched on `decodeQueue` / `MainActor`. We promise thread-safety
/// so Task closures (decode restart on route change, etc.) can capture self.
final class AudioEngine: @unchecked Sendable {

    // MARK: - State

    enum PlaybackState: Int {
        case idle = 0
        case loading = 1
        case playing = 2
        case paused = 3
        case completed = 4
    }

    static let channels = 2

    // MARK: - Callbacks (delivered on main queue)

    var onStateChanged: ((PlaybackState) -> Void)?
    var onCompleted: (() -> Void)?
    var onDurationKnown: ((Double) -> Void)?
    var onPositionUpdate: ((Double, Double) -> Void)?
    /// 加载到无法按 PCM 播放的格式（当前：DTS-WAV 伪装 PCM，CoreAudio 无解码器）。
    /// 参数为格式名（如 "DTS"），供 UI 提示用户。
    var onUnsupportedFormat: ((String) -> Void)?

    // MARK: - DSP (shared singleton injected by owner)

    private var dsp: OpaquePointer?
    func attachDSP(_ dsp: OpaquePointer) { self.dsp = dsp }

    // MARK: - Engine graph

    private let engine = AVAudioEngine()
    private let playerNode = AVAudioPlayerNode()
    private let outputFormat: AVAudioFormat

    // MARK: - Decode

    private var decodeQueue: DispatchQueue?
    private var audioFile: AVAudioFile?
    private var loadedURL: URL?
    private var totalFrames: AVAudioFramePosition = 0
    private var fileSampleRate: Double = 48000.0
    /// DTS-WAV 解码器（dcadec）。非 nil 时走 dtsDecodeLoop 播放路径。
    private var dtsDecoder: OpaquePointer?

    // MARK: - Pipeline counters
    // Shared between the decode thread and the audio-thread completion
    // handler — every access goes through [stateLock].
    private let stateLock = NSLock()
    private var decodeCancelled = false
    private var decodeLoopActive = false
    private var readFrames: AVAudioFramePosition = 0      // frames pulled from file
    private var consumedFrames: AVAudioFramePosition = 0  // frames actually played
    private var completedFired = false
    private var lastReportedPos = 0.0
    private var desiredVolume: Float = 1.0
    /// V3: DTS 播放 buffer 池（in-flight 有界，scheduleBuffer 引用语义必须保持
    /// buffer 有效直到播放完成；completion 释放回池，解码循环只在有空闲时继续）
    private let dtsPoolLock = NSLock()
    private var dtsPoolFree: [Bool] = []
    /// Bumped on load/seek/stop so completion handlers from *previous*
    /// scheduled buffers (still pending after playerNode.stop()) can tell
    /// they are stale and must not touch the counters.
    private var generation: Int64 = 0

    /// User's pause intent. The decode loop starts on its own queue; if
    /// the user paused right as a track auto-advanced, the loop must NOT
    /// auto-play over that pause (4.0.20 play/pause desync bug: icon shows
    /// paused, audio keeps playing). Guarded by stateLock.
    private var userPaused = false

    // MARK: - Lifecycle

    private var routeChangeObserver: NSObjectProtocol?

    /// Debug log that ALSO appends to a sandbox file so we can pull it from
    /// a real device (devicectl has no live syslog stream). Path:
    /// <Documents>/hanamimi_engine.log
    private let debugLogURL = FileManager.default.urls(
        for: .documentDirectory, in: .userDomainMask
    ).first!.appendingPathComponent("hanamimi_engine.log")
    private func logDebug(_ msg: String) {
        NSLog("[AudioEngine] \(msg)")
        let line = "\(Date()) \(msg)\n"
        if let handle = try? FileHandle(forWritingTo: debugLogURL) {
            handle.seekToEndOfFile()
            handle.write(line.data(using: .utf8)!)
            try? handle.close()
        } else {
            try? line.data(using: .utf8)?.write(to: debugLogURL)
        }
    }

    init() {
        outputFormat = AVAudioFormat(standardFormatWithSampleRate: 48000.0,
                                     channels: AVAudioChannelCount(Self.channels))!
        engine.attach(playerNode)
        // Initial connection uses a default format; load() reconnects with
        // the file's real processing format so scheduled buffers always
        // match the node's connection format.
        engine.connect(playerNode, to: engine.mainMixerNode, format: outputFormat)
        engine.prepare()
        decodeQueue = DispatchQueue(label: "hanamimi.engine.decode", qos: .userInitiated)
        try? "--- engine log start ---\n".data(using: .utf8)?.write(to: debugLogURL)

        // Route changes (speaker ⇄ Bluetooth / wired) tear down the engine's
        // output graph and DISCARD already-scheduled player buffers, while
        // our decode loop still thinks ≤2s are queued (read−consumed) — so
        // nothing new is scheduled and the new device stays silent until a
        // seek re-primes it. On a route change while playing we therefore
        // restart the pipeline from the current position (same path seek
        // uses) so audio flows on the new device immediately.
        routeChangeObserver = NotificationCenter.default.addObserver(
            forName: AVAudioSession.routeChangeNotification,
            object: nil,
            queue: .main
        ) { [weak self] note in
            self?.handleRouteChange(note)
        }
    }

    deinit {
        if let obs = routeChangeObserver {
            NotificationCenter.default.removeObserver(obs)
        }
        stateLock.lock(); decodeCancelled = true; stateLock.unlock()
        playerNode.stop()
        engine.stop()
    }

    // MARK: - Audio route change

    private func handleRouteChange(_ note: Notification) {
        let reasonRaw = note.userInfo?[AVAudioSessionRouteChangeReasonKey] as? UInt ?? 0
        let reason = AVAudioSession.RouteChangeReason(rawValue: reasonRaw)
        let session = AVAudioSession.sharedInstance()
        let routes = session.currentRoute.outputs.map { $0.portName }.joined(separator: ", ")
        logDebug("routeChange reason=\(reasonRaw) (\(reason.map(String.init(describing:)) ?? "?")), "
            + "outputs=[\(routes)], engineRunning=\(engine.isRunning), "
            + "nodePlaying=\(playerNode.isPlaying), audioFile=\(audioFile != nil)")
        guard audioFile != nil else { return }
        let wasPlaying = playerNode.isPlaying || engine.isRunning
        logDebug("routeChange wasPlaying=\(wasPlaying) — restarting pipeline")
        ensureSessionActive()
        let pos: Double = {
            stateLock.lock(); defer { stateLock.unlock() }
            return Double(consumedFrames) / fileSampleRate
        }()
        restartPipeline(at: pos, play: wasPlaying)
        logDebug("routeChange restart issued pos=\(pos)")
    }

    /// Re-primes the pipeline from [seconds] without touching transport
    /// semantics. Used by route changes (speaker ⇄ Bluetooth / wired):
    /// the engine rebuilds its output graph and discards already-scheduled
    /// player buffers, while our decode loop still counts them as queued
    /// (read − consumed) — so nothing new gets scheduled and the new
    /// device stays silent until a seek re-primes it. Restarting from the
    /// current position clears the stale queue accounting and feeds fresh
    /// buffers to the new route. [play] restores playback afterwards
    /// (route change during pause keeps it paused; the next play() gets
    /// fresh buffers).
    private func restartPipeline(at seconds: Double, play: Bool) {
        guard let file = audioFile else { return }
        let target = AVAudioFramePosition(max(0, seconds) * file.processingFormat.sampleRate)

        stateLock.lock()
        decodeCancelled = true
        generation += 1
        stateLock.unlock()
        playerNode.stop()
        // CRITICAL for route changes: the engine's output graph is invalid
        // after the route switch. A plain engine.start() on a still-"running"
        // engine is a NO-OP (returns true without rebuilding), so the new
        // device stays silent while our log shows "engine started". Fully
        // stopping tears down the audio graph; decodeLoop's engine.start()
        // then really rebuilds it for the new route.
        engine.stop()
        waitForDecodeLoopExit()

        stateLock.lock()
        file.framePosition = min(target, file.length)
        readFrames = min(target, totalFrames)
        consumedFrames = min(target, totalFrames)
        lastReportedPos = Double(consumedFrames) / fileSampleRate
        completedFired = false
        decodeCancelled = false
        stateLock.unlock()
        if let d = dsp { ssp_flush(d) }
        // Re-connect the player node after the graph teardown so the rebuilt
        // engine routes audio to the NEW output device. Use the float32
        // deinterleaved format (same sample rate as the file) — see load().
        engine.connect(playerNode, to: engine.mainMixerNode,
                       format: Self.dspFormat(for: file.processingFormat))
        engine.prepare()

        decodeQueue?.async { [weak self] in self?.decodeLoop() }
        if play {
            DispatchQueue.main.async { [weak self] in
                // Pre-activate the session so decodeLoop's engine.start()
                // succeeds immediately. DO NOT playerNode.play() here: the
                // node must stay stopped until decodeLoop schedules its
                // first buffer — decodeLoop only runs engine.start()+
                // play() when !playerNode.isPlaying. Playing early makes
                // isPlaying=true, decodeLoop skips starting the engine,
                // and (the engine having been stopped by the route change)
                // playback stays silent until the user seeks — the exact
                // on-device bug the 4.0.11 route-change fix showed.
                self?.ensureSessionActive()
            }
        }
    }

    // MARK: - Load

    /// Opens [url] with AVAudioFile (auto-decoding any supported format) and
    /// starts the background decode loop. Position resets.
    func load(url: URL) {
        stateLock.lock()
        decodeCancelled = true
        generation += 1
        stateLock.unlock()
        playerNode.stop()
        engine.stop()
        // Wait for the previous decode loop to fully exit so the new file's
        // loop isn't rejected by the single-instance guard.
        waitForDecodeLoopExit()
        loadedURL = url
        audioFile = nil
        closeDtsDecoder()
        resetCounters()

        do {
            // NOTE: do NOT pass commonFormat / interleaved here. Forcing
            // .pcmFormatFloat32 / non-interleaved on a source whose decoder
            // can't produce that combination (notably some MP3s) makes the
            // initializer throw — silently aborting load with no
            // onDurationKnown event while the engine later transitions to
            // .playing (giving the user a playing icon with 0:00 / 0:00 and
            // no audio). The original-format file + a connect with
            // file.processingFormat lets AVAudioPlayerNode do the conversion
            // for us.
            let file = try AVAudioFile(forReading: url)
            // DTS-WAV 检测：DTS-CD 压缩流（1411kbps 44100Hz 5.1/7.1）伪装成 PCM WAV，
            // CoreAudio 无 DTS 解码器。检测到则走 dcadec 解码播放（DtsDecode pod）。
            if DtsWavDetector.isDtsWav(url: url) {
                logDebug("DTS-WAV DETECTED — starting dcadec decode: \(url.lastPathComponent)")
                startDtsPlayback(url: url)
                return
            }
            audioFile = file
            totalFrames = file.length
            fileSampleRate = file.processingFormat.sampleRate
            stateLock.lock(); decodeCancelled = false; stateLock.unlock()

            // CRITICAL: scheduleBuffer requires the buffer's format to match
            // the node's connection format. A 44.1 kHz file has a 44.1 kHz
            // processingFormat — reconnect with a float32 deinterleaved
            // version of it so every scheduled buffer (always float32
            // deinterleaved) matches; AVAudioEngine converts to the
            // hardware sample rate.
            let dspFmt = Self.dspFormat(for: file.processingFormat)
            engine.disconnectNodeOutput(playerNode)
            engine.connect(playerNode, to: engine.mainMixerNode,
                           format: dspFmt)
            engine.prepare()

            let duration = Double(file.length) / file.processingFormat.sampleRate
            NSLog("[AudioEngine] loaded url=\(url.lastPathComponent) "
                + "frames=\(file.length) sampleRate=\(file.processingFormat.sampleRate) "
                + "ch=\(file.processingFormat.channelCount) duration=\(duration)s")
            DispatchQueue.main.async { [weak self] in
                self?.onStateChanged?(.loading)
                self?.onDurationKnown?(duration)
            }
            decodeQueue?.async { [weak self] in self?.decodeLoop() }
        } catch {
            NSLog("[AudioEngine] AVAudioFile init FAILED for \(url.lastPathComponent): \(error) "
                + "— falling back to AVAssetReader")
            Task { [self] in
                await self.startAssetReaderFallback(url: url)
            }
        }
    }

    // MARK: - DTS-WAV playback (dcadec)

    /// DTS-WAV 播放：dts_decoder_open → 后台 dtsDecodeLoop。
    private func startDtsPlayback(url: URL) {
        // 关闭上一个 DTS 解码器
        closeDtsDecoder()
        var sr: Int32 = 0
        var ch: Int32 = 0
        let path = url.path
        guard let dts = path.withCString({ dts_decoder_open($0, &sr, &ch) }), sr > 0 else {
            logDebug("dts_decoder_open FAILED for \(url.lastPathComponent)")
            DispatchQueue.main.async { [weak self] in self?.onStateChanged?(.idle) }
            return
        }
        dtsDecoder = dts
        let rate = Double(sr)
        fileSampleRate = rate
        let dur = dts_decoder_duration(dts)
        totalFrames = AVAudioFramePosition(dur * rate)
        stateLock.lock(); decodeCancelled = false; stateLock.unlock()

        let fmt = AVAudioFormat(commonFormat: .pcmFormatFloat32,
                                sampleRate: rate, channels: 2, interleaved: false)!
        engine.disconnectNodeOutput(playerNode)
        engine.connect(playerNode, to: engine.mainMixerNode, format: fmt)
        engine.prepare()

        logDebug("DTS playback ready: sr=\(sr) ch=\(ch) duration=\(String(format: "%.2f", dur))s")
        DispatchQueue.main.async { [weak self] in
            self?.onStateChanged?(.loading)
            self?.onDurationKnown?(dur)
        }
        decodeQueue?.async { [weak self] in self?.dtsDecodeLoop() }
    }

    private func closeDtsDecoder() {
        if let d = dtsDecoder {
            dts_decoder_close(d)
            dtsDecoder = nil
        }
    }

    /// DTS 解码循环：dts_decoder_read → 360 DSP → scheduleBuffer（立体声 44.1k）。
    private func dtsDecodeLoop() {
        guard let dts = dtsDecoder else { return }
        stateLock.lock()
        guard !decodeCancelled, !decodeLoopActive else {
            stateLock.unlock()
            return
        }
        decodeLoopActive = true
        stateLock.unlock()
        defer { stateLock.lock(); decodeLoopActive = false; stateLock.unlock() }

        let framesPerChunk = Int(fileSampleRate / 2)
        let fmt = AVAudioFormat(commonFormat: .pcmFormatFloat32,
                                sampleRate: fileSampleRate, channels: 2, interleaved: false)!
        // V9.6: DTS core 帧 = 1024 样本，decodeFrames 不截断帧（written 可能略超
        // maxFrames 一个帧）→ 全部 buffer 留 1024 样本余量防越界。
        let dtsFrame = 1024
        let bufFrames = framesPerChunk + dtsFrame
        // 5.1 缓冲（DTS 原始多声道）+ 立体声输出缓冲
        var multi = [Float](repeating: 0, count: bufFrames * 6)
        var interleaved = [Float](repeating: 0, count: bufFrames * 2)
        var dtsDspCount = 0
        // V3: in-flight 有界缓冲池。
        // AVAudioPlayerNode.scheduleBuffer 是【引用语义】——buffer 必须保持有效直到
        // completionHandler 触发（播放完成）。环形轮转复用会覆写未播完的 buffer →
        // 播放错乱/无声。正确做法：预分配 N 个 buffer，每个带 inFlight 标记（类成员
        // dtsPoolFree，completion 释放），解码循环只在有空闲 buffer 时继续，
        // 全部在用 → sleep 等待（天然流控，播放速度严格由引擎驱动）。
        // 同时用 queuedFrames 上限（2s）防止解码线程空转抢 CPU。
        let poolCount = 8
        let outPool = (0..<poolCount).compactMap { _ in
            AVAudioPCMBuffer(pcmFormat: fmt, frameCapacity: AVAudioFrameCount(bufFrames))
        }
        guard outPool.count == poolCount else { return }
        dtsPoolLock.lock()
        dtsPoolFree = [Bool](repeating: true, count: poolCount)
        dtsPoolLock.unlock()
        let maxQueuedFrames = Int64(fileSampleRate) * 2  // 最多超前 2s
        // 找第一个空闲 buffer；无 → -1（线程安全）
        func firstFree() -> Int {
            dtsPoolLock.lock()
            defer { dtsPoolLock.unlock() }
            for i in 0..<poolCount where dtsPoolFree[i] { return i }
            return -1
        }

        while true {
            stateLock.lock()
            let cancelled = decodeCancelled
            stateLock.unlock()
            if cancelled { break }

            // 流控：队列（已读未播）≥ 2s → 等待消费，避免 decodeLoop 空转抢 CPU
            stateLock.lock()
            let queuedNow = readFrames - consumedFrames
            stateLock.unlock()
            if queuedNow >= maxQueuedFrames {
                Thread.sleep(forTimeInterval: 0.02)
                continue
            }

            let n = dts_decoder_read_multi(dts, &multi, Int32(framesPerChunk))
            if n <= 0 {
                // EOF — 等待队列排空
                stateLock.lock()
                let queued = readFrames - consumedFrames
                stateLock.unlock()
                if queued <= 0 {
                    if !completedFired {
                        completedFired = true
                        logDebug("DTS EOF completed FIRED (read=\(readFrames) consumed=\(consumedFrames))")
                        DispatchQueue.main.async { [weak self] in self?.onCompleted?() }
                    }
                    break
                } else {
                    Thread.sleep(forTimeInterval: 0.02)
                    continue
                }
            }
            let frames = Int(n)

            // 找空闲 buffer（in-flight 保护：绝不覆写未播完的 buffer）
            let poolIdx = firstFree()
            guard poolIdx >= 0 else {
                // 全部在用 → 等待播放消费后释放（引擎驱动，严格实时）
                Thread.sleep(forTimeInterval: 0.02)
                continue
            }
            let out = outPool[poolIdx]
            dtsPoolLock.lock()
            dtsPoolFree[poolIdx] = false
            dtsPoolLock.unlock()

            if let dspPtr = dsp {
                // 360 处理：5.1 直通映射 upmix 9 对象（bypass=1 时 DSP 内 ITU 下混立体声）
                dtsDspCount += 1
                if dtsDspCount % 100 == 1 {
                    // NSLog 进 unified log（DSP 内部 LOGI 走 stderr 不进 unified log，
                    // 必须从这里上报 bypass 状态，否则模拟器上无法实时确认 360 开关生效）
                    NSLog("[AudioEngine] DTS-DSP #%d frames=%d bypass=%d", dtsDspCount, frames, ssp_get_bypass(dspPtr))
                }
                ssp_process_5_1(dspPtr, multi, &interleaved, Int32(frames))
            } else {
                // 无 DSP：ITU-R BS.775 下混立体声
                let C: Float = 0.7071
                for i in 0..<frames {
                    interleaved[i * 2] = multi[i * 6] + C * multi[i * 6 + 2] + C * multi[i * 6 + 4]
                    interleaved[i * 2 + 1] = multi[i * 6 + 1] + C * multi[i * 6 + 2] + C * multi[i * 6 + 5]
                }
            }

            out.frameLength = AVAudioFrameCount(frames)
            guard let outS = out.floatChannelData else { break }
            for i in 0..<frames {
                outS[0][i] = interleaved[i * 2]
                outS[1][i] = interleaved[i * 2 + 1]
            }

            let chunkFrames = Int64(out.frameLength)
            stateLock.lock()
            readFrames += chunkFrames
            let gen = generation
            stateLock.unlock()

            playerNode.scheduleBuffer(out) { [weak self] in
                guard let self = self else { return }
                // 播放完成 → 释放 buffer 回池（poolIdx 本 loop 生命周期内唯一）
                self.dtsPoolLock.lock()
                if poolIdx < self.dtsPoolFree.count {
                    self.dtsPoolFree[poolIdx] = true
                }
                self.dtsPoolLock.unlock()
                let update = self.stateLock.withLock { () -> (Bool, Int64, Int64)? in
                    guard gen == self.generation else { return nil }
                    self.consumedFrames += chunkFrames
                    return (true, self.consumedFrames, self.totalFrames)
                }
                guard let (_, consumed, total) = update else { return }
                let pos = Double(consumed) / self.fileSampleRate
                if pos - self.lastReportedPos >= 0.1 {
                    self.lastReportedPos = pos
                    let dur = Double(total) / self.fileSampleRate
                    DispatchQueue.main.async {
                        self.onPositionUpdate?(pos, dur)
                    }
                }
            }

            if !playerNode.isPlaying {
                let shouldAutoPlay = stateLock.withLock { !userPaused }
                if shouldAutoPlay {
                    ensureSessionActive()
                    do {
                        try engine.start()
                        playerNode.play()
                        logDebug("DTS engine started, node playing")
                        DispatchQueue.main.async { [weak self] in self?.onStateChanged?(.playing) }
                    } catch {
                        logDebug("DTS engine.start FAILED: \(error)")
                    }
                }
            }
        }
    }

    // MARK: - AVAssetReader fallback decode

    private var fallbackReader: AVAssetReader?
    private var fallbackOutput: AVAssetReaderTrackOutput?
    private var fallbackFormat: AVAudioFormat?

    /// ExtAudioFile (AVAudioFile) rejects some MPEG-2 Layer III variants
    /// that AVAssetReader still decodes. This opens the same URL through an
    /// AVAssetReaderTrackOutput forced to float32 planar PCM and feeds the
    /// identical scheduleBuffer pipeline, so playback survives any file
    /// AVAudioFile can't open.
    private func startAssetReaderFallback(url: URL) async {
        let asset = AVURLAsset(url: url)
        guard let track = try? await asset.loadTracks(withMediaType: .audio).first else {
            NSLog("[AudioEngine] fallback: no audio track in \(url.lastPathComponent)")
            DispatchQueue.main.async { [weak self] in self?.onStateChanged?(.idle) }
            return
        }
        do {
            let reader = try AVAssetReader(asset: asset)
            // Prefer the real sample rate / channel count from the track.
            var sampleRate = 44100.0
            var channels = 2
            let formatDescs = (try? await track.load(.formatDescriptions)) ?? []
            if let fd = formatDescs.first,
               let asbd = CMAudioFormatDescriptionGetStreamBasicDescription(fd)?.pointee {
                if asbd.mSampleRate > 0 { sampleRate = asbd.mSampleRate }
                if asbd.mChannelsPerFrame > 0 { channels = Int(asbd.mChannelsPerFrame) }
            } else if let scale = try? await track.load(.naturalTimeScale), scale > 0 {
                sampleRate = Double(scale)
            }
            let settings: [String: Any] = [
                AVFormatIDKey: kAudioFormatLinearPCM,
                AVLinearPCMBitDepthKey: 32,
                AVLinearPCMIsFloatKey: true,
                AVLinearPCMIsNonInterleaved: true,
                AVLinearPCMIsBigEndianKey: false,
                AVSampleRateKey: sampleRate,
                AVNumberOfChannelsKey: channels,
            ]
            let output = AVAssetReaderTrackOutput(track: track, outputSettings: settings)
            output.alwaysCopiesSampleData = true
            guard reader.canAdd(output) else {
                NSLog("[AudioEngine] fallback: cannot add output")
                DispatchQueue.main.async { [weak self] in self?.onStateChanged?(.idle) }
                return
            }
            reader.add(output)
            guard reader.startReading() else {
                NSLog("[AudioEngine] fallback: startReading failed \(String(describing: reader.error))")
                DispatchQueue.main.async { [weak self] in self?.onStateChanged?(.idle) }
                return
            }
            fallbackReader = reader
            fallbackOutput = output
            let fmt = AVAudioFormat(commonFormat: .pcmFormatFloat32,
                                    sampleRate: sampleRate,
                                    channels: AVAudioChannelCount(channels),
                                    interleaved: false)!
            fallbackFormat = fmt
            fileSampleRate = sampleRate
            // Must use withLock: Swift 6 forbids bare NSLock.lock()/unlock() in ANY
            // async function body (not just after `await`).
            stateLock.withLock { decodeCancelled = false }
            let dur = (try? await asset.load(.duration)) ?? .zero
            let duration = CMTimeGetSeconds(dur)
            totalFrames = AVAudioFramePosition(duration * sampleRate)

            engine.disconnectNodeOutput(playerNode)
            engine.connect(playerNode, to: engine.mainMixerNode, format: fmt)
            engine.prepare()

            NSLog("[AudioEngine] fallback READY url=\(url.lastPathComponent) sr=\(sampleRate) "
                + "ch=\(channels) duration=\(duration)s")
            DispatchQueue.main.async { [weak self] in
                self?.onStateChanged?(.loading)
                self?.onDurationKnown?(duration)
            }
            decodeQueue?.async { [weak self] in self?.assetReaderLoop() }
        } catch {
            NSLog("[AudioEngine] fallback init threw: \(error)")
            DispatchQueue.main.async { [weak self] in self?.onStateChanged?(.idle) }
        }
    }

    /// Decode loop for the AVAssetReader fallback path: pulls CMSampleBuffers
    /// (float32 planar PCM), applies DSP, schedules on the node. Mirrors
    /// decodeLoop's pacing/completion bookkeeping.
    private func assetReaderLoop() {
        guard let output = fallbackOutput, let fmt = fallbackFormat else { return }
        stateLock.lock()
        guard !decodeCancelled, !decodeLoopActive else {
            stateLock.unlock()
            return
        }
        decodeLoopActive = true
        stateLock.unlock()

        defer {
            stateLock.lock(); decodeLoopActive = false; stateLock.unlock()
        }

        let capacity = AVAudioFrameCount(fmt.sampleRate / 2)
        let chans = Int(fmt.channelCount)
        let framesPerSecond = fmt.sampleRate

        while true {
            stateLock.lock()
            let cancelled = decodeCancelled
            let read = readFrames
            let consumed = consumedFrames
            stateLock.unlock()
            if cancelled { break }

            let remaining = totalFrames - read
            if remaining <= 0 {
                // Same tail-done logic as decodeLoop: node stopped while the
                // engine still runs = finished; paused → engine paused too.
                // EOF — the node drains its scheduled buffers. Completion is
                // detected via the QUEUE depth (read - consumed): every
                // scheduled buffer has played. NOT via playerNode.isPlaying —
                // AVAudioPlayerNode stays "playing" after its buffers finish
                // (it just runs silent), so isPlaying never flips false and
                // the completed event would never fire. Paused playback has
                // queued > 0, so a pause at the tail never auto-advances.
                let queuedFrames = read - consumed
                if queuedFrames <= 0 {
                    if !completedFired {
                        completedFired = true
                        logDebug("EOF completed FIRED (read=\(read) consumed=\(consumed)/total=\(totalFrames))")
                        DispatchQueue.main.async { [weak self] in self?.onCompleted?() }
                    }
                    break
                } else {
                    Thread.sleep(forTimeInterval: 0.02)
                    continue
                }
            }

            let queued = read - consumed
            if queued > Int64(framesPerSecond * 2.0) {
                Thread.sleep(forTimeInterval: 0.01)
                continue
            }

            guard let sb = output.copyNextSampleBuffer() else {
                // True EOF (AVAssetReader ended). asset.duration can
                // overestimate, so treat reaching nil as read-complete and
                // fall through to the EOF branch above — otherwise
                // onCompleted never fires and the queue stalls.
                logDebug("fallback: copyNextSampleBuffer nil (EOF) read=\(read)/total=\(totalFrames)")
                stateLock.lock()
                readFrames = totalFrames
                stateLock.unlock()
                continue
            }
            defer { CMSampleBufferInvalidate(sb) }
            let frameCount = Int(CMSampleBufferGetNumSamples(sb))
            guard frameCount > 0,
                  let block = CMSampleBufferGetDataBuffer(sb) else { continue }

            // Copy the block's bytes out (float32 planar PCM).
            let length = CMBlockBufferGetDataLength(block)
            guard length > 0 else { continue }
            var data = [UInt8](repeating: 0, count: length)
            CMBlockBufferCopyDataBytes(block, atOffset: 0,
                                       dataLength: length, destination: &data)
            let floats = data.withUnsafeBytes { $0.bindMemory(to: Float.self) }

            // Planar float32: channel 0 samples then channel 1 samples.
            var interleaved = [Float](repeating: 0, count: frameCount * Self.channels)
            if chans >= 2 {
                for i in 0..<frameCount {
                    interleaved[i * 2] = floats[i]
                    interleaved[i * 2 + 1] = floats[frameCount + i]
                }
            } else {
                for i in 0..<frameCount {
                    interleaved[i * 2] = floats[i]
                    interleaved[i * 2 + 1] = floats[i]
                }
            }

            if let dspPtr = dsp {
                ssp_process(dspPtr, interleaved, &interleaved, Int32(frameCount))
            }
            let vol: Float = {
                stateLock.lock(); defer { stateLock.unlock() }
                return desiredVolume
            }()
            if vol != 1.0 {
                for i in 0..<(frameCount * Self.channels) { interleaved[i] *= vol }
            }

            guard let out = AVAudioPCMBuffer(pcmFormat: fmt, frameCapacity: capacity) else { break }
            out.frameLength = AVAudioFrameCount(frameCount)
            guard let outSamples = out.floatChannelData else {
                NSLog("[AudioEngine] fallback: out.floatChannelData nil")
                break
            }
            for i in 0..<frameCount {
                outSamples[0][i] = interleaved[i * 2]
                outSamples[1][i] = interleaved[i * 2 + 1]
            }

            let chunkFrames = Int64(out.frameLength)
            stateLock.lock()
            readFrames += chunkFrames
            let gen = generation
            stateLock.unlock()

            playerNode.scheduleBuffer(out) { [weak self] in
                guard let self = self else { return }
                // Capture lock state once into a tuple; the lock is released
                // when withLock returns so the closure stays async-safe.
                let update = self.stateLock.withLock { () -> (Bool, Int64, Int64)? in
                    guard gen == self.generation else { return nil }
                    self.consumedFrames += chunkFrames
                    return (true, self.consumedFrames, self.totalFrames)
                }
                guard let (_, consumed, total) = update else { return }
                let pos = Double(consumed) / self.fileSampleRate
                if pos - self.lastReportedPos >= 0.1 {
                    self.lastReportedPos = pos
                    let dur = Double(total) / self.fileSampleRate
                    DispatchQueue.main.async {
                        self.onPositionUpdate?(pos, dur)
                    }
                }
            }

            if !playerNode.isPlaying {
                let shouldAutoPlay = stateLock.withLock { !userPaused }
                if shouldAutoPlay {
                    ensureSessionActive()
                    do {
                        try engine.start()
                        playerNode.play()
                        logDebug("fallback engine started, node playing")
                        DispatchQueue.main.async { [weak self] in self?.onStateChanged?(.playing) }
                    } catch {
                        logDebug("fallback engine.start FAILED: \(error)")
                    }
                }
            }
        }
        fallbackReader?.cancelReading()
        fallbackReader = nil
        fallbackOutput = nil
    }

    // MARK: - Decode loop (background, single instance)

    /// Pulls PCM from the file, applies DSP, schedules buffers on the player
    /// node, and keeps ≤ 2s queued ahead of playback. Exactly one instance
    /// runs at a time (guard on [decodeLoopActive]); the completion handler
    /// never recurses here — it only advances [consumedFrames].
    private func decodeLoop() {
        guard let file = audioFile else {
            NSLog("[AudioEngine] decodeLoop: audioFile is nil")
            return
        }
        stateLock.lock()
        guard !decodeCancelled, !decodeLoopActive else {
            stateLock.unlock()
            NSLog("[AudioEngine] decodeLoop: skipped (cancelled/active)")
            return
        }
        decodeLoopActive = true
        stateLock.unlock()

        defer {
            stateLock.lock(); decodeLoopActive = false; stateLock.unlock()
        }

        let framesPerChunk = AVAudioFrameCount(file.processingFormat.sampleRate / 2)
        let capacity = AVAudioFrameCount(framesPerChunk)
        let pcmFormat = file.processingFormat
        // 播放管线统一 float32 deinterleaved（同采样率）。线性 PCM 文件
        // （16/24-bit WAV）的 processingFormat 可能是 Int16/Int24 或
        // interleaved（Apple 文档：PCM 保持 native format），此时
        // floatChannelData/int16ChannelData 行为不可靠 → 用 AVAudioConverter
        // 显式转成 float32 deinterleaved（仅位深/交错转换，不重采样）。
        // macOS/iOS 上已是 float32 deinterleaved 时 converter=nil，走原路径。
        let dspFmt = Self.dspFormat(for: pcmFormat)
        let converter: AVAudioConverter? =
            (pcmFormat == dspFmt) ? nil : AVAudioConverter(from: pcmFormat, to: dspFmt)
        NSLog("[AudioEngine] decodeLoop start: sr=\(pcmFormat.sampleRate) ch=\(pcmFormat.channelCount) "
            + "interleaved=\(pcmFormat.isInterleaved) commonFormat=\(pcmFormat.commonFormat.rawValue) "
            + "converter=\(converter != nil) format=\(pcmFormat)")
        guard let scratch = AVAudioPCMBuffer(pcmFormat: pcmFormat, frameCapacity: capacity) else {
            NSLog("[AudioEngine] decodeLoop: scratch buffer alloc FAILED")
            return
        }
        let chans = Int(pcmFormat.channelCount)
        let hasStereo = chans >= 2
        let framesPerSecond = file.processingFormat.sampleRate
        var chunksScheduled = 0

        while true {
            stateLock.lock()
            let cancelled = decodeCancelled
            let read = readFrames
            let consumed = consumedFrames
            stateLock.unlock()
            if cancelled { break }

            let remaining = totalFrames - read
            if remaining <= 0 {
                // EOF — the node drains its scheduled buffers. Completion is
                // keyed off the NODE (stopped) + ENGINE (still running):
                //   • tail played → node stops, engine keeps running → fire
                //   • paused at the tail → engine paused too → keep waiting
                // consumed-vs-totalFrames is NOT reliable here because
                // AVAudioFile.length can overestimate (encoder padding).
                // EOF — the node drains its scheduled buffers. Completion is
                // detected via the QUEUE depth (read - consumed): every
                // scheduled buffer has played. NOT via playerNode.isPlaying —
                // AVAudioPlayerNode stays "playing" after its buffers finish
                // (it just runs silent), so isPlaying never flips false and
                // the completed event would never fire. Paused playback has
                // queued > 0, so a pause at the tail never auto-advances.
                let queuedFrames = read - consumed
                if queuedFrames <= 0 {
                    if !completedFired {
                        completedFired = true
                        logDebug("EOF completed FIRED (read=\(read) consumed=\(consumed)/total=\(totalFrames))")
                        DispatchQueue.main.async { [weak self] in self?.onCompleted?() }
                    }
                    break
                } else {
                    Thread.sleep(forTimeInterval: 0.02)
                    continue
                }
            }

            // Keep ≤ 2s of decoded audio queued on the node.
            let queued = read - consumed
            if queued > Int64(framesPerSecond * 2.0) {
                Thread.sleep(forTimeInterval: 0.01)
                continue
            }

            do {
                try file.read(into: scratch, frameCount: framesPerChunk)
            } catch {
                NSLog("[AudioEngine] file.read FAILED: \(error)")
                break
            }
            guard scratch.frameLength > 0 else {
                // True EOF. AVAudioFile.length can overestimate (encoder
                // padding), so read() can hit 0 frames while readFrames is
                // still < totalFrames — if we just break here the completed
                // event never fires and the queue won't auto-advance.
                logDebug("read 0 frames — real EOF (read=\(read)/total=\(totalFrames))")
                stateLock.lock()
                readFrames = totalFrames
                stateLock.unlock()
                continue
            }
            let frames = Int(scratch.frameLength)

            // 统一转成 interleaved float32 给 DSP。三种来源：
            // 1) converter 兜底：processingFormat 非 float32 deinterleaved（Int16/Int24/
            //    interleaved 等）→ AVAudioConverter 显式转 float32 deinterleaved（只转
            //    位深/交错，不重采样；不依赖 floatChannelData/int16ChannelData 行为）
            // 2) float32 deinterleaved → 直接读 floatChannelData（4.0.36 原路径）
            // 3) float32 interleaved → 单 plane 交错读取（f32[0] 即交错数据）
            var interleaved = [Float](repeating: 0, count: frames * Self.channels)
            if let conv = converter {
                guard let out32 = AVAudioPCMBuffer(pcmFormat: dspFmt, frameCapacity: capacity) else { break }
                var cvtErr: NSError?
                var fed = false
                let st = conv.convert(to: out32, error: &cvtErr) { _, status in
                    if fed { status.pointee = .endOfStream; return nil }
                    fed = true
                    status.pointee = .haveData
                    return scratch
                }
                guard st != .error, let c32 = out32.floatChannelData, out32.frameLength > 0 else {
                    logDebug("decodeLoop: converter FAILED \(String(describing: cvtErr))")
                    break
                }
                let n32 = Int(out32.frameLength)
                if hasStereo {
                    for i in 0..<n32 {
                        interleaved[i * 2] = c32[0][i]
                        interleaved[i * 2 + 1] = c32[1][i]
                    }
                } else {
                    for i in 0..<n32 {
                        interleaved[i * 2] = c32[0][i]
                        interleaved[i * 2 + 1] = c32[0][i]
                    }
                }
            } else if let f32 = scratch.floatChannelData {
                if pcmFormat.isInterleaved {
                    // float32 interleaved：单 plane 交错数据
                    if hasStereo {
                        for i in 0..<frames {
                            interleaved[i * 2] = f32[0][i * 2]
                            interleaved[i * 2 + 1] = f32[0][i * 2 + 1]
                        }
                    } else {
                        for i in 0..<frames {
                            interleaved[i * 2] = f32[0][i]
                            interleaved[i * 2 + 1] = f32[0][i]
                        }
                    }
                } else {
                    // float32 deinterleaved：标准路径（4.0.36 等价）
                    if hasStereo {
                        for i in 0..<frames {
                            interleaved[i * 2] = f32[0][i]
                            interleaved[i * 2 + 1] = f32[1][i]
                        }
                    } else {
                        for i in 0..<frames {
                            interleaved[i * 2] = f32[0][i]
                            interleaved[i * 2 + 1] = f32[0][i]
                        }
                    }
                }
            } else {
                logDebug("decodeLoop: unsupported processingFormat \(pcmFormat)")
                break
            }

            if let dspPtr = dsp {
                ssp_process(dspPtr, interleaved, &interleaved, Int32(frames))
            }
            let vol: Float = {
                stateLock.lock(); defer { stateLock.unlock() }
                return desiredVolume
            }()
            if vol != 1.0 {
                for i in 0..<(frames * Self.channels) { interleaved[i] *= vol }
            }

            guard let out = AVAudioPCMBuffer(pcmFormat: dspFmt, frameCapacity: capacity) else {
                NSLog("[AudioEngine] out buffer alloc FAILED")
                break
            }
            out.frameLength = scratch.frameLength
            guard let outSamples = out.floatChannelData else {
                NSLog("[AudioEngine] out.floatChannelData is nil (not float32): \(pcmFormat)")
                break
            }
            for i in 0..<frames {
                outSamples[0][i] = interleaved[i * 2]
                outSamples[1][i] = interleaved[i * 2 + 1]
            }

            let chunkFrames = Int64(out.frameLength)
            stateLock.lock()
            readFrames += chunkFrames
            let gen = generation
            stateLock.unlock()
            chunksScheduled += 1

            // Completion fires on the audio thread when the buffer finishes
            // playing — the only writer of consumedFrames. No recursion.
            // Stale handlers (from buffers dropped by seek/load/stop) are
            // detected via the generation counter and ignored.
            playerNode.scheduleBuffer(out) { [weak self] in
                guard let self = self else { return }
                let update = self.stateLock.withLock { () -> (Bool, Int64, Int64)? in
                    guard gen == self.generation else { return nil }
                    self.consumedFrames += chunkFrames
                    return (true, self.consumedFrames, self.totalFrames)
                }
                guard let (_, consumed, total) = update else { return }
                let pos = Double(consumed) / self.fileSampleRate
                if pos - self.lastReportedPos >= 0.1 {
                    self.lastReportedPos = pos
                    let dur = Double(total) / self.fileSampleRate
                    DispatchQueue.main.async {
                        self.onPositionUpdate?(pos, dur)
                    }
                }
            }

            // Start playback on the first chunk. If the session isn't active
            // yet (Dart-side audio_session activation races us), play()
            // retries with ensureSessionActive(). Respect the user's pause
            // intent: if they paused during a track auto-advance, the loop
            // must not auto-play over it (4.0.20 play/pause desync bug).
            if !playerNode.isPlaying {
                let shouldAutoPlay = stateLock.withLock { !userPaused }
                if shouldAutoPlay {
                    ensureSessionActive()
                    do {
                        try engine.start()
                        playerNode.play()
                        logDebug("engine started, node playing, chunks=\(chunksScheduled)")
                        DispatchQueue.main.async { [weak self] in self?.onStateChanged?(.playing) }
                    } catch {
                        logDebug("engine.start FAILED: \(error)")
                        // Session not active yet — retried by play().
                    }
                }
            }
        }
    }

    // MARK: - Transport

    func play() {
        stateLock.withLock { userPaused = false }
        if playerNode.isPlaying {
            // Already playing (e.g. a stale UI play request after the
            // decode loop auto-started) — re-sync the state so the UI
            // icon matches reality instead of silently no-opping.
            DispatchQueue.main.async { [weak self] in self?.onStateChanged?(.playing) }
            return
        }
        ensureSessionActive()
        do {
            try engine.start()
        } catch {
            return
        }
        playerNode.play()
        DispatchQueue.main.async { [weak self] in self?.onStateChanged?(.playing) }
    }

    func pause() {
        // Record the user's pause intent so a decode loop that starts
        // later (track auto-advance race) does NOT auto-play over it.
        stateLock.withLock { userPaused = true }
        playerNode.pause()
        engine.pause()
        DispatchQueue.main.async { [weak self] in self?.onStateChanged?(.paused) }
    }

    func stop() {
        stateLock.lock()
        decodeCancelled = true
        generation += 1
        stateLock.unlock()
        playerNode.stop()
        engine.stop()
        audioFile = nil
        closeDtsDecoder()
        resetCounters()
        DispatchQueue.main.async { [weak self] in self?.onStateChanged?(.idle) }
    }

    /// Standard seek: set AVAudioFile.framePosition then resume decoding.
    func seek(toSeconds: Double) {
        if dtsDecoder != nil {
            // DTS 路径：dcadec 重建 + 跳帧
            stateLock.lock()
            decodeCancelled = true
            generation += 1
            stateLock.unlock()
            playerNode.stop()
            waitForDecodeLoopExit()
            let target = AVAudioFramePosition(max(0, toSeconds) * fileSampleRate)
            stateLock.lock()
            dts_decoder_seek(dtsDecoder, toSeconds)
            readFrames = min(target, totalFrames)
            consumedFrames = min(target, totalFrames)
            lastReportedPos = Double(consumedFrames) / fileSampleRate
            completedFired = false
            decodeCancelled = false
            stateLock.unlock()
            if let d = dsp { ssp_flush(d) }
            decodeQueue?.async { [weak self] in self?.dtsDecodeLoop() }
            DispatchQueue.main.async { [weak self] in
                guard let self = self else { return }
                self.ensureSessionActive()
                do { try self.engine.start() } catch { self.logDebug("dts seek: engine.start FAILED \(error)") }
                self.playerNode.play()
                self.onStateChanged?(.playing)
            }
            return
        }
        guard let file = audioFile else { return }
        let target = AVAudioFramePosition(max(0, toSeconds) * file.processingFormat.sampleRate)

        // Cancel the running loop and wait for it to fully exit so no
        // concurrent read() races the framePosition change.
        stateLock.lock()
        decodeCancelled = true
        generation += 1
        stateLock.unlock()
        playerNode.stop()
        waitForDecodeLoopExit()

        stateLock.lock()
        file.framePosition = min(target, file.length)
        readFrames = min(target, totalFrames)
        consumedFrames = min(target, totalFrames)
        lastReportedPos = Double(consumedFrames) / fileSampleRate
        completedFired = false
        decodeCancelled = false
        stateLock.unlock()
        if let d = dsp { ssp_flush(d) }

        decodeQueue?.async { [weak self] in self?.decodeLoop() }
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            self.ensureSessionActive()
            // Start the engine explicitly BEFORE node.play(): decodeLoop
            // only runs engine.start() when !playerNode.isPlaying, and if
            // this play() wins the race the node is already "playing" so
            // decodeLoop would skip the start — leaving the engine stopped
            // after a route change and silent until the next seek.
            do {
                try self.engine.start()
            } catch {
                self.logDebug("seek: engine.start FAILED \(error)")
            }
            self.playerNode.play()
            self.onStateChanged?(.playing)
        }
    }

    func setVolume(_ v: Float) {
        stateLock.lock(); desiredVolume = max(0, min(2, v)); stateLock.unlock()
    }

    func positionSeconds() -> Double {
        stateLock.lock(); defer { stateLock.unlock() }
        return Double(consumedFrames) / fileSampleRate
    }

    func durationSeconds() -> Double {
        Double(totalFrames) / fileSampleRate
    }

    var xrunCount: Int { 0 } // AVAudioPlayerNode manages buffering; no manual ring.

    // MARK: - Helpers

    /// float32 deinterleaved 版本的文件格式（同采样率/声道数）。
    /// 播放管线（playerNode 连接 + scheduleBuffer buffer + decodeLoop 输出）
    /// 统一用它，避免线性 PCM 文件（16/24-bit WAV）的 processingFormat 是
    /// Int16/Int24 或 interleaved 时 floatChannelData 失效/字节错位。
    /// AVAudioEngine 负责把 44.1k/96k 转换到硬件采样率。
    static func dspFormat(for pf: AVAudioFormat) -> AVAudioFormat {
        AVAudioFormat(commonFormat: .pcmFormatFloat32,
                      sampleRate: pf.sampleRate,
                      channels: pf.channelCount,
                      interleaved: false)!
    }

    private func resetCounters() {
        stateLock.lock()
        readFrames = 0
        consumedFrames = 0
        completedFired = false
        lastReportedPos = 0
        stateLock.unlock()
    }

    /// Blocks until the (single) decode loop has exited — used by load/seek
    /// before repointing the file so the new loop passes the
    /// single-instance guard and no read() races a framePosition change.
    private func waitForDecodeLoopExit() {
        while true {
            stateLock.lock()
            let active = decodeLoopActive
            stateLock.unlock()
            if !active { break }
            Thread.sleep(forTimeInterval: 0.005)
        }
    }

    /// Makes sure the app owns the audio session before the engine starts.
    /// Dart-side audio_session normally activates it first; this is a
    /// belt-and-braces fallback so engine.start() never dies on a silent
    /// session (which produced no output on device).
    private func ensureSessionActive() {
        let session = AVAudioSession.sharedInstance()
        if session.category != .playback {
            try? session.setCategory(.playback, mode: .default)
        }
        if !session.isOtherAudioPlaying {
            try? session.setActive(true)
        }
    }
}
import Foundation

/// DTS-WAV 检测器
///
/// 背景：DTS-CD 抓轨的 WAV（DTS Coherent Acoustics 1411kbps 44100Hz 5.1/7.1）
/// 伪装成标准 PCM WAV（fmt tag=1, 16-bit, 44.1kHz, stereo），data 区实际是
/// DTS 压缩比特流（常见 14-bit 打包：每 16-bit 样本只占低 14 位，高 2 位为 0）。
/// AVAudioFile / CoreAudio / Apple Music 无 DTS 解码器，会把 DTS 比特流当 PCM
/// 解读 → 播放 = 电流嗡嗡声（DTS 帧周期性特征）。Foobar2000 等含 DTS 解码器的
/// 播放器可正常播放（识别为 DCA 1411kbps 44100Hz 7ch）。
///
/// 检测原理（两模式）：
///   1. 16-bit 模式：data 区直接出现 DTS 同步字 0x7FFE8001（连续字节）
///   2. 14-bit 模式（DTS-CD 常见）：每样本低 14 位 MSB-first 拼成位流，
///      位流中找 32-bit 同步字 0x7FFE8001（每帧 512 样本，规律出现）
///   3. 辅助特征：data 开头常有静音前导（几十 ms）；样本 max|v| ≤ 8192（14-bit）
enum DtsWavDetector {

    /// 检测 URL 指向的文件是否为 DTS-WAV（伪装 PCM）
    static func isDtsWav(url: URL) -> Bool {
        guard let fh = try? FileHandle(forReadingFrom: url) else { return false }
        defer { try? fh.close() }

        // 1. WAV 头校验（RIFF/WAVE + fmt + data，标准 44 字节头）
        guard let hdr = try? fh.read(upToCount: 44), hdr.count == 44,
              hdr[0..<4] == Data("RIFF".utf8),
              hdr[8..<12] == Data("WAVE".utf8),
              hdr[36..<40] == Data("data".utf8) else { return false }

        // 2. 读 data 区前 192KB（含静音前导 + 数据）
        guard let chunk = try? fh.read(upToCount: 192 * 1024), chunk.count >= 64 else { return false }
        let sampleCount = chunk.count / 2
        let samples: [Int16] = chunk.withUnsafeBytes { raw in
            let base = raw.bindMemory(to: Int16.self)
            return Array(UnsafeBufferPointer(start: base.baseAddress, count: sampleCount))
        }

        // 3. 跳过静音前导
        var i = 0
        while i < sampleCount - 64, samples[i] == 0 { i += 1 }
        guard i < sampleCount - 64 else { return false }  // 全静音
        let active = samples[i...]

        // 4. 14-bit 特征：非零样本 max|v| ≤ 8192（DTS-CD 14-bit 打包）
        var maxAbs = 0
        for s in active {
            let a = abs(Int(s))
            if a > maxAbs { maxAbs = a }
        }
        guard maxAbs > 0, maxAbs <= 8192 else { return false }

        // 5. 位流重组检测同步字（14-bit MSB-first 拼接）
        if findSync14(active) { return true }

        // 6. 16-bit 模式：直接字节找同步字
        if findSync16(chunk) { return true }

        return false
    }

    /// 14-bit 模式：每样本低 14 位 MSB-first 拼位流，找 0x7FFE8001（32-bit）
    private static func findSync14(_ samples: ArraySlice<Int16>) -> Bool {
        let sync: UInt64 = 0x7FFE8001
        let mask: UInt64 = 0xFFFF_FFFF
        var bitBuf: UInt64 = 0
        var bitLen = 0
        var count = 0
        for s in samples.prefix(16_384) {  // 16K 样本足够（约 26 帧）
            let v = UInt64(s & 0x3FFF)
            bitBuf = (bitBuf << 14) | v
            bitLen += 14
            if bitLen >= 32 {
                if ((bitBuf >> (bitLen - 32)) & mask) == sync { count += 1 }
                bitLen -= 14
                bitBuf &= (1 << bitLen) - 1
                if bitLen < 0 { bitLen = 0; bitBuf = 0 }
            }
        }
        return count >= 2  // 至少 2 帧命中（避免单次偶然）
    }

    /// 16-bit 模式：字节流直接找 0x7FFE8001 或小端 01 80 FE 7F
    private static func findSync16(_ data: Data) -> Bool {
        let be: [UInt8] = [0x7F, 0xFE, 0x80, 0x01]
        let le: [UInt8] = [0x01, 0x80, 0xFE, 0x7F]
        var count = 0
        let bytes = [UInt8](data)
        guard bytes.count > 8 else { return false }
        for j in 0..<(bytes.count - 4) {
            if bytes[j] == be[0] && bytes[j+1] == be[1] && bytes[j+2] == be[2] && bytes[j+3] == be[3] {
                count += 1
            } else if bytes[j] == le[0] && bytes[j+1] == le[1] && bytes[j+2] == le[2] && bytes[j+3] == le[3] {
                count += 1
            }
            if count >= 3 { return true }
        }
        return false
    }
}
