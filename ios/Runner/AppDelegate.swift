import Flutter
import UIKit
import MediaPlayer
import SpatialDsp

@main
@objc class AppDelegate: FlutterAppDelegate, FlutterImplicitEngineDelegate {

    // Held strongly so the channels survive across engine-bridge callbacks.
    private var mediaStoreChannel: MediaStoreChannel?
    private var importChannel: ImportChannel?
    private var engineChannel: EngineChannel?
    private var spatialDspChannel: SpatialDspChannel?
    private var audioInfoChannel: AudioInfoChannel?
    /// Shared DSP singleton (C++ SpatialDsp*) — engine + crossfade share it.
    private var spatialDsp: OpaquePointer?

    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }

    func didInitializeImplicitFlutterEngine(_ engineBridge: FlutterImplicitEngineBridge) {
        GeneratedPluginRegistrant.register(with: engineBridge.pluginRegistry)

        let messenger = engineBridge.applicationRegistrar.messenger()
        // Pull a FlutterPluginRegistrar so the import channel can present the
        // UIDocumentPickerViewController from the FlutterViewController itself.
        let registrar = engineBridge.pluginRegistry.registrar(forPlugin: "HanamimiImport")
        self.mediaStoreChannel = MediaStoreChannel(messenger: messenger)
        self.importChannel = ImportChannel(messenger: messenger, registrar: registrar)
        self.audioInfoChannel = AudioInfoChannel(messenger: messenger)

        // Re-activate every persisted security-scoped folder URL so the
        // library keeps playing immediately on relaunch — no re-picker.
        ScopedURLStore.shared.restoreOnLaunch()

        // M2: self-built playback engine (AVAssetReader → ring → AVAudioSourceNode
        // → ssp_process). Attach the shared DSP singleton so 360 bypass works.
        self.engineChannel = EngineChannel(messenger: messenger)
        // M2: 360 settings control plane — enable/disable/params/head tracking.
        let dspChannel = SpatialDspChannel(messenger: messenger)
        self.spatialDspChannel = dspChannel
        if let dsp = createSpatialDsp() {
            self.spatialDsp = dsp
            self.engineChannel?.attachDSP(dsp)
            dspChannel.attachDSP(dsp)
        }

        // iOS only lists the app under "Media & Apple Music" in Settings
        // after the app actually calls MPMediaLibrary authorization APIs.
        // Pre-flight the request once the engine is up so the row appears
        // (mirrors Offline Music's permission disclosure in the screenshot).
        requestAppleMusicAuthorizationIfNeeded()
    }

    /// M2: create the shared SpatialDsp* (C++). Loads the bundled CIPIC V9
    /// HRIR from the app bundle into tmp/ (mirrors Android assets→filesDir).
    private func createSpatialDsp() -> OpaquePointer? {
        guard let dsp = ssp_create() else { return nil }
        ssp_configure(dsp, 48000, 256)
        // HRIR asset ships inside the app bundle via the SpatialDsp pod.
        guard let hrirURL = Bundle.main.url(forResource: "cipic_v9_hrir", withExtension: "bin") else {
            return dsp // DSP works without HRTF (bypass/upmix only)
        }
        // Copy to tmp once (ssp expects a plain file path; bundle is fine too).
        let tmp = FileManager.default.temporaryDirectory
            .appendingPathComponent("cipic_v9_hrir.bin")
        do {
            if !FileManager.default.fileExists(atPath: tmp.path) {
                try FileManager.default.copyItem(at: hrirURL, to: tmp)
            }
            ssp_load_hrir_file(dsp, tmp.path)
        } catch {
            // Non-fatal: HRTF disabled, rest of the chain works.
        }
        return dsp
    }

    /// Triggers the Apple Music / media library permission prompt the first
    /// time the user opens the app. Subsequent launches are a no-op because
    /// the system caches the prior decision. We don't block on the answer —
    /// the Dart side polls the status when the user opens Library.
    private func requestAppleMusicAuthorizationIfNeeded() {
        let status = MPMediaLibrary.authorizationStatus()
        guard status == .notDetermined else { return }
        MPMediaLibrary.requestAuthorization { _ in
            // Result is read by Dart via Permission.mediaLibrary.request().
        }
    }
}