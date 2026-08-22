import Flutter
import UIKit
import AVFoundation
import CoreMedia
import MediaPlayer
import DtsDecode

/// iOS side of `hanamimi/audio_info` — Nerd Mode file probe + output route.
/// Protocol mirrors android/.../AudioInfoChannel.kt:
///   probe(path) → {codec, sampleRate, channels, bitrate(bits/sec)}
///   output()    → {route, name, sampleRate}   (current audio route)
class AudioInfoChannel: NSObject, @unchecked Sendable {

    private let channel: FlutterMethodChannel

    init(messenger: FlutterBinaryMessenger) {
        channel = FlutterMethodChannel(name: "hanamimi/audio_info", binaryMessenger: messenger)
        super.init()
        channel.setMethodCallHandler { [weak self] call, result in
            self?.handle(call: call, result: result)
        }
    }

    private func handle(call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "probe":
            let path = (call.arguments as? [String: Any])?["path"] as? String
            result(probe(path: path))
        case "output":
            result(outputRoute())
        default:
            result(FlutterMethodNotImplemented)
        }
    }

    /// Decoded facts about a local audio file. Uses AVAudioFile rather than
    /// AVURLAsset because AVAudioFile opens the actual decoder (so it sees
    /// mp3/aac/flac/alac framing) and exposes the source format directly via
    /// processingFormat and fileFormat — AVURLAsset/tracks-withMediaType
    /// returns nothing useful for some MP3 files, leading to "unknown" in
    /// Nerd Mode.
    private func probe(path: String?) -> [String: Any]? {
        guard let path = path, !path.isEmpty else { return nil }
        let url = URL(fileURLWithPath: path)

        // DTS-WAV 特判：CoreAudio 无 DTS 解码器（AVAudioFile 会把 DTS 比特流当 PCM
        // 报 lpcm），用 dcadec 探测真实格式（DTS Core Audio: 5.1 ch, 44.1 kHz, 24 bit, 1411 kbps）
        if DtsWavDetector.isDtsWav(url: url) {
            var sr: Int32 = 0, ch: Int32 = 0, bits: Int32 = 0, kbps: Int32 = 0
            let ok = path.withCString { dts_probe_info($0, &sr, &ch, &bits, &kbps) }
            if ok == 0, sr > 0 {
                return [
                    "codec": "dts",
                    "sampleRate": Int(sr),
                    "channels": Int(ch),
                    "bitrate": Int(kbps) * 1000,  // kbps → bits/sec
                    "bitsPerSample": Int(bits),
                ]
            }
        }

        let file: AVAudioFile
        do {
            file = try AVAudioFile(forReading: url)
        } catch {
            return ["codec": "unknown"]
        }
        let pf = file.processingFormat
        let ff = file.fileFormat

        // codec: FourCC from the file's source format description (e.g.
        // "mp3 " / "aac " / "alac" / "flac" / "lpcm"). AVAudioFormat's
        // formatDescription is a CMAudioFormatDescription on iOS 9+.
        var codec = "unknown"
        let cfDesc = ff.formatDescription
        codec = CMFormatDescriptionGetMediaSubType(cfDesc).fourCC
        // If the source is a packed/PCM variant that doesn't surface a
        // useful sub-type, prefer the file extension as a friendly hint.
        if codec == "unknown" || codec.isEmpty {
            let ext = url.pathExtension.lowercased()
            if !ext.isEmpty { codec = ext }
        }

        let sampleRate = Int(pf.sampleRate.rounded())
        let channels = Int(pf.channelCount)

        // bitrate: file size × 8 / duration. AVAssetTrack.estimatedDataRate
        // is unreliable for local files; the size-and-duration method gives
        // the same number a media-info panel would show.
        var bitrate = 0
        let durationSec = Double(file.length) / pf.sampleRate
        if durationSec > 0,
           let attrs = try? FileManager.default.attributesOfItem(atPath: path),
           let size = attrs[.size] as? Int64 {
            bitrate = Int((Double(size) * 8.0) / durationSec)
        }

        return [
            "codec": codec,
            "sampleRate": sampleRate,
            "channels": channels,
            "bitrate": bitrate,
        ]
    }

    /// Where the mix is going right now. iOS has no public "route"
    /// granularity like Android's; map AVAudioSession port types.
    private func outputRoute() -> [String: Any] {
        let session = AVAudioSession.sharedInstance()
        var route = "Speaker"
        var name: String? = nil
        let sampleRate = Int(session.sampleRate)

        // Find the current output port.
        if let outputs = session.currentRoute.outputs.first {
            name = outputs.portName
            switch outputs.portType {
            case .bluetoothA2DP, .bluetoothLE, .bluetoothHFP:
                route = "Bluetooth"
            case .usbAudio, .carAudio:
                route = "USB"
            case .headphones, .headsetMic:
                route = "Wired"
            case .builtInReceiver, .builtInSpeaker:
                route = "Speaker"
            default:
                route = "Other"
            }
        }
        return [
            "route": route,
            "name": name as Any,
            "sampleRate": sampleRate,
        ]
    }
}

extension FourCharCode {
    /// FourCC → printable string, trimmed (e.g. 'mp4a' → "mp4a", 'mp3 ' → "mp3").
    var fourCC: String {
        let bytes: [CChar] = [
            CChar((self >> 24) & 0xff),
            CChar((self >> 16) & 0xff),
            CChar((self >> 8) & 0xff),
            CChar(self & 0xff),
            0,
        ]
        return String(cString: bytes)
            .trimmingCharacters(in: CharacterSet(charactersIn: "\0 "))
    }
}
