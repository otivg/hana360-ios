import Flutter
import UIKit
import MediaPlayer

/// iOS side of the hanamimi/mediastore MethodChannel.
/// Mirrors android/.../MediaStoreChannel.kt so the Dart side
/// (lib/library/media_store_channel.dart) works unchanged on iOS.
///
/// Uses MPMediaLibrary instead of MediaStore: on iOS the system
/// audio library is the Music app's media library, not a raw
/// filesystem scan.
class MediaStoreChannel: NSObject {

    private let channel: FlutterMethodChannel

    init(messenger: FlutterBinaryMessenger) {
        channel = FlutterMethodChannel(name: "hanamimi/mediastore", binaryMessenger: messenger)
        super.init()
        channel.setMethodCallHandler { [weak self] call, result in
            self?.handle(call: call, result: result)
        }
    }

    func handle(call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "queryTracks":
            queryTracks(result: result)
        case "getAlbumArt":
            let args = call.arguments as? [String: Any]
            let albumId = (args?["albumId"] as? NSNumber)?.int64Value ?? 0
            let filePath = args?["filePath"] as? String
            getAlbumArt(albumId: albumId, filePath: filePath, result: result)
        default:
            result(FlutterMethodNotImplemented)
        }
    }

    // MARK: - queryTracks

    private func queryTracks(result: @escaping FlutterResult) {
        // MPMediaLibrary authorization; .authorized / .denied are the
        // only states after the first prompt. Anything else means the
        // user hasn't decided yet, so return empty (the Dart side will
        // show the permission screen instead).
        let status = MPMediaLibrary.authorizationStatus()
        guard status == .authorized else {
            result([])
            return
        }

        DispatchQueue.global(qos: .userInitiated).async { [weak self] in
            let tracks = self?.fetchTracks() ?? []
            DispatchQueue.main.async {
                result(tracks)
            }
        }
    }

    /// Raw device tracks mirroring the Android projection:
    /// mediaId, title, artist, album, albumId, durationMs,
    /// filePath, trackNumber.
    private func fetchTracks() -> [[String: Any]] {
        var tracks: [[String: Any]] = []
        let query = MPMediaQuery.songs()
        // Default MPMediaQuery.songs() already filters to music.
        for item in query.items ?? [] {
            guard let assetURL = item.assetURL else { continue }
            let durationMs = Int(item.playbackDuration * 1000)
            let trackNo = item.albumTrackNumber > 0 ? Int(item.albumTrackNumber) : nil
            // Album IDs aren't exposed directly by MediaPlayer; derive a
            // stable one from the album persistent ID so the Dart layer's
            // int albumId contract holds.
            let albumId = Int64(bitPattern: item.albumPersistentID)
            let mediaId = Int64(bitPattern: item.persistentID)
            tracks.append([
                "mediaId": mediaId,
                "title": item.title ?? "Unknown",
                "artist": item.artist ?? "Unknown Artist",
                "album": item.albumTitle ?? "Unknown Album",
                "albumId": albumId,
                "durationMs": durationMs,
                "filePath": assetURL.path,
                "trackNumber": trackNo as Any,
            ])
        }
        return tracks
    }

    // MARK: - getAlbumArt

    /// Extracts album art for the album whose (derived) id is [albumId].
    /// [filePath] is a track from that album, used as a fallback when the
    /// system artwork lookup misses.
    private func getAlbumArt(albumId: Int64, filePath: String?, result: @escaping FlutterResult) {
        DispatchQueue.global(qos: .userInitiated).async {
            let image = self.fetchAlbumArt(albumId: albumId, filePath: filePath)
            guard let img = image,
                  let data = img.jpegData(compressionQuality: 0.85) else {
                DispatchQueue.main.async { result(nil) }
                return
            }
            // 4.0.24: cachesDirectory → applicationSupportDirectory.
            // Caches is purged by the OS, silently deleting album art and
            // leaving placeholder tiles after relaunches (same bug the
            // import path fixed in 4.0.22).
            let dir = FileManager.default.urls(for: .applicationSupportDirectory, in: .userDomainMask).first!
                .appendingPathComponent("album_art", isDirectory: true)
            try? FileManager.default.createDirectory(at: dir, withIntermediateDirectories: true)
            let url = dir.appendingPathComponent("album_art_\(albumId).jpg")
            do {
                try data.write(to: url)
                DispatchQueue.main.async { result(url.path) }
            } catch {
                DispatchQueue.main.async { result(nil) }
            }
        }
    }

    private func fetchAlbumArt(albumId: Int64, filePath: String?) -> UIImage? {
        let query = MPMediaQuery.albums()
        for collection in query.collections ?? [] {
            if Int64(bitPattern: collection.persistentID) == albumId {
                if let art = collection.representativeItem?.artwork {
                    // artworkImage returns at most 512x512.
                    return art.image(at: CGSize(width: 512, height: 512))
                }
                break
            }
        }
        return nil
    }
}
