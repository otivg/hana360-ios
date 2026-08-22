import Flutter
import UIKit

/// M2: `hanamimi/ios_engine` MethodChannel + EventChannel.
/// Protocol mirrors IOS_PORT_DESIGN_360.md §5.6; Dart's IosNativePlayer
/// talks to this.
///
/// Methods: createPlayer / disposePlayer / load / play / pause / seek /
///          stop / setVolume / getPosition / getDuration / getXRunCount
/// Events (single EventChannel): position / state / completed
class EngineChannel: NSObject {

    private let methodChannel: FlutterMethodChannel
    private let eventChannel: FlutterEventChannel

    /// Primary player. v1: single engine instance (crossfade comes in M3).
    private var engine: AudioEngine?
    /// DSP singleton shared with the spatial_dsp channel (injected by App).
    private var dsp: OpaquePointer?

    private var eventSink: FlutterEventSink?
    private var positionTimer: Timer?
    private var lastState: AudioEngine.PlaybackState = .idle

    /// Security-scoped URLs opened for imported (out-of-sandbox) files.
    /// Keyed by path so load/seek can re-begin access without leaks.
    private var activeScopes: [String: URL] = [:]

    private func beginScope(for path: String) {
        let url = URL(fileURLWithPath: path)
        // Only try scoping for paths outside the app sandbox.
        guard !path.hasPrefix(FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!.path),
              !path.hasPrefix(Bundle.main.bundlePath) else { return }
        if activeScopes[path] == nil {
            if url.startAccessingSecurityScopedResource() {
                activeScopes[path] = url
            }
        }
    }

    private func releaseScopes() {
        for (_, url) in activeScopes {
            url.stopAccessingSecurityScopedResource()
        }
        activeScopes.removeAll()
    }

    init(messenger: FlutterBinaryMessenger) {
        methodChannel = FlutterMethodChannel(name: "hanamimi/ios_engine", binaryMessenger: messenger)
        eventChannel = FlutterEventChannel(name: "hanamimi/ios_engine_events", binaryMessenger: messenger)
        super.init()
        methodChannel.setMethodCallHandler { [weak self] call, result in
            self?.handle(call: call, result: result)
        }
        eventChannel.setStreamHandler(self)
    }

    /// Attaches the shared DSP singleton (called by AppDelegate after
    /// SpatialDspManager init so primary/crossfade engines share it).
    func attachDSP(_ dsp: OpaquePointer) {
        self.dsp = dsp
        engine?.attachDSP(dsp)
    }

    // MARK: - Method channel

    private func handle(call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "createPlayer":
            createPlayer(result: result)
        case "disposePlayer":
            engine?.stop()
            engine = nil
            stopPositionTimer()
            releaseScopes()
            result(nil)
        case "load":
            let args = call.arguments as? [String: Any]
            guard let path = args?["path"] as? String else {
                result(FlutterError(code: "bad_args", message: "path required", details: nil))
                return
            }
            guard let engine = engine else {
                result(FlutterError(code: "no_engine", message: "createPlayer first", details: nil))
                return
            }
            // Imported files live outside the sandbox (asCopy:false) — begin
            // security-scoped access so AVAudioFile can read them.
            beginScope(for: path)
            // Prefer the ORIGINAL security-scoped URL object captured at
            // import time: a path rebuilt with URL(fileURLWithPath:) is not
            // security-scoped and the sandbox denies AVAudioFile on device
            // (simulator has no sandbox, so this only breaks on real iPhones).
            if let persisted = ScopedURLStore.shared.url(for: path) {
                NSLog("[EngineChannel] load \(persisted.lastPathComponent) scope=persisted")
                engine.load(url: persisted)
                result(nil)
            } else {
                let rebuilt = URL(fileURLWithPath: path)
                // Still readable? (in-sandbox files / simulator / fresh
                // import with an active grant). If the sandbox denies it
                // (app restarted → the old picker grant is gone), tell Dart
                // to re-authorize via the document picker instead of
                // silently failing with a playing icon and 0:00.
                if FileManager.default.isReadableFile(atPath: path) {
                    NSLog("[EngineChannel] load \(rebuilt.lastPathComponent) scope=rebuilt (readable)")
                    engine.load(url: rebuilt)
                    result(nil)
                } else {
                    NSLog("[EngineChannel] load \(rebuilt.lastPathComponent) NOT readable — needs re-auth")
                    result(FlutterError(code: "no_scope",
                                        message: "文件访问权限已过期，需要重新授权",
                                        details: path))
                }
            }
        case "play":
            engine?.play()
            result(nil)
        case "pause":
            engine?.pause()
            result(nil)
        case "stop":
            engine?.stop()
            result(nil)
        case "seek":
            let args = call.arguments as? [String: Any]
            let seconds = (args?["position"] as? NSNumber)?.doubleValue ?? 0
            engine?.seek(toSeconds: seconds)
            result(nil)
        case "setVolume":
            let args = call.arguments as? [String: Any]
            let v = (args?["volume"] as? NSNumber)?.floatValue ?? 1.0
            engine?.setVolume(v)
            result(nil)
        case "getPosition":
            result(engine?.positionSeconds() ?? 0)
        case "getDuration":
            result(engine?.durationSeconds() ?? 0)
        case "getXRunCount":
            result(engine?.xrunCount ?? 0)
        default:
            result(FlutterMethodNotImplemented)
        }
    }

    private func createPlayer(result: @escaping FlutterResult) {
        if engine == nil {
            let e = AudioEngine()
            if let dsp = dsp { e.attachDSP(dsp) }
            e.onStateChanged = { [weak self] state in
                self?.lastState = state
                self?.emitEvent("state", value: state.rawValue)
            }
            e.onCompleted = { [weak self] in
                self?.emitEvent("completed", value: true)
            }
            e.onDurationKnown = { [weak self] seconds in
                self?.emitEvent("duration", value: seconds)
            }
            engine = e
            startPositionTimer()
        }
        result(nil)
    }

    // MARK: - Position polling (250ms, mirrors Dart heartbeat pattern)

    private func startPositionTimer() {
        stopPositionTimer()
        let timer = Timer(timeInterval: 0.25, repeats: true) { [weak self] _ in
            guard let self = self, let engine = self.engine else { return }
            self.emitEvent("position", value: engine.positionSeconds())
        }
        RunLoop.main.add(timer, forMode: .common)
        positionTimer = timer
    }

    private func stopPositionTimer() {
        positionTimer?.invalidate()
        positionTimer = nil
    }

    private func emitEvent(_ name: String, value: Any) {
        eventSink?(["name": name, "value": value])
    }
}

// MARK: - EventChannel stream handler

extension EngineChannel: FlutterStreamHandler {
    func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        eventSink = events
        // Replay current state so the Dart side syncs on subscribe.
        events(["name": "state", "value": lastState.rawValue])
        return nil
    }

    func onCancel(withArguments arguments: Any?) -> FlutterError? {
        eventSink = nil
        return nil
    }
}
