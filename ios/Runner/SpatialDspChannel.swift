import Flutter
import UIKit
import CoreMotion
import SpatialDsp

/// iOS side of `hanamimi/spatial_dsp` — the 360 settings control plane.
/// Protocol mirrors SpatialDspController.dart and the Android
/// SpatialDspBridge: enable/disable/setUpmix/setUpmixGains/setHrtf/
/// setEq/setReverb/startTracking/stopTracking/setHeadRotation/getDefaults.
///
/// The shared SpatialDsp* singleton is owned by AppDelegate and attached
/// here; the engine's render callback reads the same pointer, so toggling
/// 360 takes effect on the live audio path (bypass flag is read by
/// ssp_process itself).
class SpatialDspChannel: NSObject {

    private let channel: FlutterMethodChannel

    /// Shared C++ DSP singleton (injected by AppDelegate).
    private var dsp: OpaquePointer?
    /// 360 master switch (bypass). Read by nothing here directly — it is
    /// pushed into the C API via ssp_set_bypass so the render callback's
    /// ssp_process respects it.
    private var enabled = false

    // Head tracking (CoreMotion device attitude; v1 = phone orientation).
    private let motionManager = CMMotionManager()
    private var trackingTimer: Timer?
    private var trackingActive = false

    init(messenger: FlutterBinaryMessenger) {
        channel = FlutterMethodChannel(name: "hanamimi/spatial_dsp", binaryMessenger: messenger)
        super.init()
        channel.setMethodCallHandler { [weak self] call, result in
            self?.handle(call: call, result: result)
        }
    }

    func attachDSP(_ dsp: OpaquePointer) {
        self.dsp = dsp
        // Initial state: 360 OFF (bypass) until the user enables it.
        ssp_set_bypass(dsp, 1)
    }

    // MARK: - Method channel

    private func handle(call: FlutterMethodCall, result: @escaping FlutterResult) {
        guard let dsp = dsp else {
            result(FlutterError(code: "no_dsp", message: "DSP not initialized", details: nil))
            return
        }
        switch call.method {
        case "enable":
            enabled = true
            ssp_set_bypass(dsp, 0)
            // V2: ssp_flush 重建 renderer（72 方向 HRIR cache）耗时，异步执行，
            // 避免阻塞 Flutter MethodChannel 主线程 → 消除切换 360 瞬间卡顿。
            DispatchQueue.global(qos: .userInitiated).async { ssp_flush(dsp) }
            result(nil)
        case "disable":
            enabled = false
            ssp_set_bypass(dsp, 1)
            DispatchQueue.global(qos: .userInitiated).async { ssp_flush(dsp) }
            stopTracking()
            result(nil)
        case "setUpmix":
            let a = call.arguments as? [String: Any]
            ssp_set_upmix(dsp,
                          (a?["enabled"] as? NSNumber)?.boolValue == true ? Int32(1) : Int32(0),
                          Int32((a?["layoutMode"] as? NSNumber)?.intValue ?? 1))
            result(nil)
        case "setUpmixGains":
            let a = call.arguments as? [String: Any]
            ssp_set_upmix_gains(dsp,
                                (a?["masterGain"] as? NSNumber)?.floatValue ?? 2.0,
                                (a?["speakerDistance"] as? NSNumber)?.floatValue ?? 2.0,
                                (a?["outputLevel"] as? NSNumber)?.floatValue ?? 2.0)
            result(nil)
        case "setHrtf":
            let a = call.arguments as? [String: Any]
            ssp_set_hrtf(dsp,
                         (a?["enabled"] as? NSNumber)?.boolValue == true ? Int32(1) : Int32(0),
                         Int32((a?["group"] as? NSNumber)?.intValue ?? 4),
                         (a?["outputGain"] as? NSNumber)?.floatValue ?? 0.5)
            result(nil)
        case "setEq":
            let a = call.arguments as? [String: Any]
            let enabledFlag = (a?["enabled"] as? NSNumber)?.boolValue == true ? Int32(1) : Int32(0)
            var gains = [Float](repeating: 0, count: 10)
            if let list = a?["gains"] as? [NSNumber] {
                for (i, g) in list.prefix(10).enumerated() {
                    gains[i] = g.floatValue
                }
            }
            ssp_set_eq(dsp, enabledFlag, gains)
            result(nil)
        case "setHfShelf":
            // 齿音抑制: 8kHz high-shelf dB (0 = 关闭)
            let a = call.arguments as? [String: Any]
            ssp_set_hf_shelf(dsp, (a?["gainDb"] as? NSNumber)?.floatValue ?? -2.5)
            result(nil)
        case "setDeesser":
            // De-esser 齿音动态抑制 (4.0.18)
            let a = call.arguments as? [String: Any]
            ssp_set_deesser(dsp,
                            (a?["enabled"] as? NSNumber)?.boolValue == true ? Int32(1) : Int32(0),
                            (a?["thresholdDb"] as? NSNumber)?.floatValue ?? -30.0,
                            (a?["ratio"] as? NSNumber)?.floatValue ?? 3.0)
            result(nil)
        case "setReverb":
            let a = call.arguments as? [String: Any]
            ssp_set_reverb(dsp,
                           (a?["enabled"] as? NSNumber)?.boolValue == true ? Int32(1) : Int32(0),
                           (a?["rt60"] as? NSNumber)?.floatValue ?? 0.3,
                           (a?["roomSize"] as? NSNumber)?.floatValue ?? 8.0,
                           (a?["damping"] as? NSNumber)?.floatValue ?? 0.5,
                           (a?["diffusion"] as? NSNumber)?.floatValue ?? 0.7,
                           (a?["preDelayMs"] as? NSNumber)?.floatValue ?? 20.0,
                           (a?["gainDb"] as? NSNumber)?.floatValue ?? -12.0)
            result(nil)
        case "startTracking":
            startTracking()
            result(nil)
        case "stopTracking":
            stopTracking()
            result(nil)
        case "setHeadRotation":
            let a = call.arguments as? [String: Any]
            ssp_set_head_rotation(dsp,
                                  (a?["yaw"] as? NSNumber)?.floatValue ?? 0,
                                  (a?["pitch"] as? NSNumber)?.floatValue ?? 0,
                                  (a?["active"] as? NSNumber)?.boolValue == true ? Int32(1) : Int32(0))
            result(nil)
        case "getDefaults":
            result([
                "upmixEnabled": true,
                "layoutMode": 1,
                "masterGain": 2.0,
                "speakerDistance": 2.0,
                "outputLevel": 2.0,
                "hrtfEnabled": true,
                "hrtfGroup": 4,
                "hrtfGain": 0.5,
                "eqEnabled": false,
                "eqGains": [0.0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                "reverbEnabled": true,
                "reverbRt60": 0.3,
                "reverbRoom": 8.0,
                "reverbGainDb": -12.0,
                "trackingMode": 0,
            ])
        default:
            result(FlutterMethodNotImplemented)
        }
    }

    // MARK: - Head tracking (CoreMotion; v1 phone attitude)

    /// Matches Android ROTATION_VECTOR semantics: yaw right-positive,
    /// pitch up-positive, XArbitraryZVertical reference frame. EMA smoothing
    /// 0.6/0.4 mirrors the Android tracker.
    private func startTracking() {
        guard !trackingActive, motionManager.isDeviceMotionAvailable else { return }
        trackingActive = true
        motionManager.deviceMotionUpdateInterval = 1.0 / 60.0
        motionManager.startDeviceMotionUpdates(
            using: .xArbitraryZVertical,
            to: .main) { [weak self] motion, _ in
            guard let self = self, let motion = motion, let dsp = self.dsp else { return }
            // yaw/pitch in degrees.
            let yaw = motion.attitude.yaw * 180.0 / .pi
            let pitch = motion.attitude.pitch * 180.0 / .pi
            ssp_set_head_rotation(dsp, Float(yaw), Float(pitch), Int32(1))
        }
        // Also poll periodically to keep the update loop alive on devices
        // where the push callback is sparse.
        trackingTimer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in }
    }

    private func stopTracking() {
        trackingActive = false
        motionManager.stopDeviceMotionUpdates()
        trackingTimer?.invalidate()
        trackingTimer = nil
        if let dsp = dsp {
            ssp_set_head_rotation(dsp, 0, 0, Int32(0))
        }
    }
}
