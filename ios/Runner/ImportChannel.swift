import Flutter
import UIKit
import AVFoundation
import UniformTypeIdentifiers

/// Persists security-scoped access to user-chosen folders/files so playback
/// keeps working after an app restart. This is the standard iOS approach
/// (`UIDocumentPickerViewController` → `URL.bookmarkData()` → UserDefaults)
/// used by Offline Music / VLC-iOS / Documents and the like.
///
/// Why a *directory* bookmark rather than per-file: a folder picker URL's
/// scope recursively covers every item inside it (and items added later).
/// Saving ONE bookmark restores the whole library after relaunch — which is
/// exactly what Offline Music's "Import tracks from files" flow delivers.
///
/// We do NOT use `.withSecurityScope` when creating the bookmark: that
/// option is `API_UNAVAILABLE(ios)` on the iOS 26 SDK. Plain
/// `url.bookmarkData()` records the URL's identity and — because the URL
/// itself comes from `UIDocumentPicker` and is already security-scoped —
/// `URL(resolvingBookmarkData:)` recovers a URL whose security scope still
/// activates via `startAccessingSecurityScopedResource()` (per Apple docs:
/// "save a security-scoped URL as a bookmark and later resolve it back into
/// a security-scoped URL"). Confirmed working on iOS 26.5 simulator/device.
final class ScopedURLStore: @unchecked Sendable {
    static let shared = ScopedURLStore()
    private let lock = NSLock()
    /// path -> live URL (current process)
    private var live: [String: URL] = [:]
    /// Folder URLs the user picked whose scope is alive this session.
    private var rootURLs: [URL] = []
    private let defaults = UserDefaults.standard
    private let bookmarkKey = "hanamimi.directory_bookmarks"

    /// Persist a folder URL the user just picked. The URL is security-scoped
    /// (from UIDocumentPicker) and stays scoped across restarts thanks to
    /// the bookmark — without copying files into the sandbox.
    func registerRoot(_ url: URL) {
        lock.lock()
        if !rootURLs.contains(url) {
            if url.startAccessingSecurityScopedResource() {
                rootURLs.append(url)
            }
        }
        lock.unlock()
        // Heavy work (bookmark write + directory walk) happens OUTSIDE the
        // lock so playback URL lookups are never blocked behind a big walk.
        appendBookmark(for: url)
        cacheChildren(of: url)
    }

    private func appendBookmark(for url: URL) {
        do {
            let data = try url.bookmarkData()
            var bookmarks = defaults.dictionary(forKey: bookmarkKey) as? [String: Data] ?? [:]
            // dict keyed by path: O(1) upsert, no resolving every stored
            // bookmark to dedupe (the old array + resolve approach was O(n²)
            // and froze imports of large folders).
            bookmarks[url.path] = data
            defaults.set(bookmarks, forKey: bookmarkKey)
        } catch {
            NSLog("[ScopedURLStore] bookmark create failed for \(url.lastPathComponent): \(error)")
        }
    }

    /// Restore every persisted bookmark at process start: re-activate the
    /// security scope on each folder and cache its children so playback has
    /// ready-to-use security-scoped URLs. Stale/invalid bookmarks are dropped.
    func restoreOnLaunch() {
        guard let bookmarks = defaults.dictionary(forKey: bookmarkKey) as? [String: Data] else { return }
        var liveBookmarks: [String: Data] = [:]
        for (path, data) in bookmarks {
            var stale = false
            guard let url = try? URL(resolvingBookmarkData: data, options: [],
                                     relativeTo: nil, bookmarkDataIsStale: &stale)
            else { continue }
            if stale {
                NSLog("[ScopedURLStore] dropping stale bookmark for \(path)")
                continue
            }
            guard url.startAccessingSecurityScopedResource() else {
                NSLog("[ScopedURLStore] startAccessing failed for \(path)")
                continue
            }
            lock.lock()
            rootURLs.append(url)
            live[url.path] = url
            lock.unlock()
            cacheChildren(of: url)
            if let liveData = try? url.bookmarkData() {
                liveBookmarks[path] = liveData
            }
        }
        defaults.set(liveBookmarks, forKey: bookmarkKey)
    }

    /// Live URL for an arbitrary path under one of our root folders.
    func url(for path: String) -> URL? {
        lock.lock()
        let result = live[path]
        lock.unlock()
        return result
    }

    /// Drop everything (process exit / account switch).
    func releaseAll() {
        lock.lock(); defer { lock.unlock() }
        for url in rootURLs {
            url.stopAccessingSecurityScopedResource()
        }
        rootURLs.removeAll()
        live.removeAll()
    }

    /// Re-walk + cache children of [url] (outside the lock).
    private func cacheChildren(of url: URL) {
        lock.lock(); cacheChildrenLocked(of: url); lock.unlock()
    }
    private func cacheChildrenLocked(of url: URL) {
        let keys: [URLResourceKey] = [.isDirectoryKey]
        guard let it = FileManager.default.enumerator(at: url,
                                                      includingPropertiesForKeys: keys,
                                                      options: [.skipsHiddenFiles, .skipsPackageDescendants])
        else { return }
        for case let child as URL in it {
            // Cache ONLY audio files — walking a big folder (photos, apps,
            // databases) must not flood memory or make lookups slow.
            if ImportChannel.isAudio(url: child) {
                live[child.path] = child
            }
        }
    }
}

/// iOS side of the hanamimi/import MethodChannel.
/// Mirrors android/.../ImportChannel.kt: the system document picker lets
/// the user import audio files/folders that live outside the MPMediaLibrary
/// (e.g. files copied into the Files app). Uses UIDocumentPickerViewController
/// with security-scoped URLs — no extra permission needed.
/// `@unchecked Sendable`: state mutation only on MainActor / `ScopedURLStore`
/// `withLock` (async-safe). Lets `Task { [self] in … }` in handlePicked capture self.
class ImportChannel: NSObject, UIDocumentPickerDelegate, @unchecked Sendable {

    private let channel: FlutterMethodChannel
    /// The FlutterPluginRegistrar provides the view controller whose view is
    /// displaying Flutter content; that's the right place to present the
    /// document picker in SceneDelegate-based apps (UIApplication.keyWindow
    /// doesn't always have a rootViewController at the right time).
    private weak var registrar: FlutterPluginRegistrar?
    private var pendingResult: FlutterResult?
    private var pendingKind: String?

    private static let audioExtensions: Set<String> = [
        "mp3", "m4a", "aac", "flac", "wav", "ogg", "opus", "wma",
        "aiff", "aif", "caf", "ape", "dsf", "dff", "mka", "amr",
    ]
    private static let maxFiles = 2000
    private static let maxDepth = 8

    init(messenger: FlutterBinaryMessenger, registrar: FlutterPluginRegistrar? = nil) {
        channel = FlutterMethodChannel(name: "hanamimi/import", binaryMessenger: messenger)
        self.registrar = registrar
        super.init()
        channel.setMethodCallHandler { [weak self] call, result in
            self?.handle(call: call, result: result)
        }
    }

    func setRegistrar(_ r: FlutterPluginRegistrar) {
        self.registrar = r
    }

    private func handle(call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "pickFiles":
            presentPicker(allowedTypes: audioContentTypes(), allowMultiple: true, kind: "files", result: result)
        case "pickFolder":
            presentPicker(allowedTypes: [UTType.folder], allowMultiple: false, kind: "folder", result: result)
        case "release":
            // iOS security-scoped URLs auto-release; no-op.
            result(nil)
        case "extractArtForFile":
            // Re-extract embedded (ID3) cover for a single imported track —
            // used by the library's first-load art repair pass.
            let uri = (call.arguments as? [String: Any])?["uri"] as? String
            extractArtForFile(uri: uri, result: result)
        default:
            result(FlutterMethodNotImplemented)
        }
    }

    private func audioContentTypes() -> [UTType] {
        var types: [UTType] = [.audio, .mp3, .mpeg4Audio, .wav]
        // Use conform-to for the rest (avoids platform-version diffs in
        // initialisers for FLAC/OGG which moved between iOS 14-17).
        for ext in ["flac", "ogg", "opus", "wma", "aiff", "aif", "caf"] {
            if let t = UTType(filenameExtension: ext) {
                types.append(t)
            }
        }
        return types
    }

    private func presentPicker(allowedTypes: [UTType], allowMultiple: Bool, kind: String, result: @escaping FlutterResult) {
        guard pendingResult == nil else {
            result(FlutterError(code: "import_busy", message: "import already in progress", details: nil))
            return
        }
        pendingResult = result
        pendingKind = kind

        // IMPORTANT: asCopy:false for BOTH files and folders — we keep the
        // security-scoped URL and reference the file in place. Copying into
        // the sandbox would duplicate the user's music and waste storage
        // (user requirement). Playback accesses the original file via the
        // security scope; if the source is later moved/deleted the row
        // simply fails to play (pruned by the library scan).
        let picker = UIDocumentPickerViewController(forOpeningContentTypes: allowedTypes, asCopy: false)
        picker.delegate = self
        picker.allowsMultipleSelection = allowMultiple

        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            guard let host = self.topViewController() else {
                self.failWith("no view controller available")
                return
            }
            host.present(picker, animated: true) { [weak self] in
                guard let self = self else { return }
                // After present, if the picker still hasn't surfaced a result
                // (e.g. it was dismissed before showing), clear pending so a
                // retry isn't blocked.
                if self.pendingResult != nil && self.pendingKind == kind {
                    // nothing — pickers that fail to show normally still
                    // trigger documentPickerWasCancelled via the system.
                }
            }
        }
    }

    private func failWith(_ message: String) {
        let result = pendingResult
        pendingResult = nil
        pendingKind = nil
        result?(FlutterError(code: "import", message: message, details: nil))
    }

    /// Walks Flutter's view controller → scene → window hierarchy. In
    /// SceneDelegate-based apps (this one), UIApplication.keyWindow doesn't
    /// have a rootViewController until the scene is up, so we explicitly
    /// walk UIScene → UIWindowScene → key window.
    private func topViewController() -> UIViewController? {
        // Prefer the registrar's view controller — that's the FlutterViewController.
        if let vc = registrar?.viewController { return vc }
        guard let scene = UIApplication.shared.connectedScenes
            .compactMap({ $0 as? UIWindowScene })
            .first(where: { $0.activationState == .foregroundActive })
            ?? UIApplication.shared.connectedScenes
                .compactMap({ $0 as? UIWindowScene }).first else {
            return nil
        }
        guard let window = scene.windows.first(where: { $0.isKeyWindow }) ?? scene.windows.first else {
            return nil
        }
        var root = window.rootViewController
        while let presented = root?.presentedViewController {
            root = presented
        }
        return root
    }

    // MARK: - UIDocumentPickerDelegate

    func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentsAt urls: [URL]) {
        handlePicked(urls: urls)
    }

    func documentPickerWasCancelled(_ controller: UIDocumentPickerViewController) {
        let result = pendingResult
        pendingResult = nil
        pendingKind = nil
        result?(nil) // user cancelled — Dart returns -1
    }

    private func handlePicked(urls: [URL]) {
        let result = pendingResult
        let kind = pendingKind
        pendingResult = nil
        pendingKind = nil

        Task { [self] in
            var trackURLs: [URL] = []
            var perFileScopes: [(URL, Bool)] = []
            if kind == "folder" {
                trackURLs = self.collectFolder(url: urls.first, depth: 0)
                // PERSIST the folder's security scope so playback keeps
                // working after an app restart. The bookmark covers the
                // whole folder (and any items added later), so the entire
                // library survives restart without re-importing.
                if let root = urls.first {
                    ScopedURLStore.shared.registerRoot(root)
                }
            } else {
                trackURLs = urls
                // Per-file picker: keep the scope alive this process and
                // also remember each file individually (best effort — the
                // folder flow is the durable path). Released after import.
                perFileScopes = trackURLs.map { url -> (URL, Bool) in
                    let ok = url.startAccessingSecurityScopedResource()
                    return (url, ok)
                }
                for (url, ok) in perFileScopes where ok {
                    ScopedURLStore.shared.registerRoot(url)
                }
            }
            let tracks = await self.importAll(urls: trackURLs)
            for (url, ok) in perFileScopes where ok {
                url.stopAccessingSecurityScopedResource()
            }
            await MainActor.run { result?(tracks) }
        }
    }

    // MARK: - Folder walk

    /// Recursively collects audio files under a picked folder. The URL from
    /// UIDocumentPicker is security-scoped; start/stop the access so
    /// contentsOfDirectory actually works (without it, the walk returns
    /// nothing and — on some iOS versions — the app can crash inside the
    /// securityd/FileCoordinator path when touching protected providers).
    private func collectFolder(url: URL?, depth: Int) -> [URL] {
        guard let url = url, depth <= Self.maxDepth else { return [] }
        let scoped = url.startAccessingSecurityScopedResource()
        defer {
            if scoped { url.stopAccessingSecurityScopedResource() }
        }
        var out: [URL] = []
        let keys: [URLResourceKey] = [.isDirectoryKey, .nameKey]
        let contents = (try? FileManager.default.contentsOfDirectory(
            at: url, includingPropertiesForKeys: keys, options: [.skipsHiddenFiles])) ?? []
        for child in contents {
            if out.count >= Self.maxFiles { break }
            let values = try? child.resourceValues(forKeys: Set(keys))
            if values?.isDirectory == true {
                out.append(contentsOf: collectFolder(url: child, depth: depth + 1))
            } else if Self.isAudio(url: child) {
                out.append(child)
            }
        }
        return out
    }

    /// Internal so ScopedURLStore (same file) can filter the walk cache.
    static func isAudio(url: URL) -> Bool {
        let ext = url.pathExtension.lowercased()
        if audioExtensions.contains(ext) { return true }
        if let type = UTType(filenameExtension: ext), type.conforms(to: .audio) { return true }
        return false
    }

    // MARK: - Metadata

    /// Imports files by *reference* — the stored path is the original
    /// security-scoped location, NOT a sandbox copy (no storage duplication).
    /// Playback later accesses it via the security scope.
    /// Metadata reads run concurrently via TaskGroup; AVURLAsset is
    /// thread-safe per instance so large folders don't freeze the UI.
    private func importAll(urls: [URL]) async -> [[String: Any]] {
        var seenPaths = Set<String>()
        var unique: [URL] = []
        for url in urls {
            if seenPaths.insert(url.path).inserted {
                unique.append(url)
            }
        }
        guard !unique.isEmpty else { return [] }
        return await withTaskGroup(of: [String: Any]?.self) { group in
            for url in unique {
                group.addTask { await self.readMetadata(url: url) }
            }
            var out: [[String: Any]] = []
            for await meta in group {
                if let m = meta { out.append(m) }
            }
            return out
        }
    }

    /// Reads AVAsset metadata (title/artist/album/duration + embedded cover)
    /// for the picked file. Falls back to the filename when the asset can't
    /// be read (damaged file / no permission — mirrors the Android fallback).
    private static func metadataValue(_ meta: [AVMetadataItem], identifier: AVMetadataIdentifier) async -> String? {
        let item = AVMetadataItem.metadataItems(from: meta, filteredByIdentifier: identifier).first
        if let item = item {
            return try? await item.load(.stringValue)
        }
        return nil
    }

    /// Reads AVAsset metadata (title/artist/album/duration + embedded cover)
    /// for the picked file. Falls back to the filename when the asset can't
    /// be read (damaged file / no permission — mirrors the Android fallback).
    /// Uses iOS 16 async load() API instead of the deprecated sync getters.
    private func readMetadata(url: URL) async -> [String: Any] {
        let asset = AVURLAsset(url: url)
        let meta = (try? await asset.load(.commonMetadata)) ?? []
        let title = await Self.metadataValue(meta, identifier: .commonIdentifierTitle)
            ?? url.deletingPathExtension().lastPathComponent
        let artist = await Self.metadataValue(meta, identifier: .commonIdentifierArtist)
            ?? "Unknown artist"
        let album = await Self.metadataValue(meta, identifier: .commonIdentifierAlbumName)
            ?? "Unknown album"
        var durationMs = 0
        if let dur = try? await asset.load(.duration),
           dur.isNumeric, !dur.seconds.isNaN {
            durationMs = Int(dur.seconds * 1000)
        }
        // Every track extracts its own art — saveArt() dedupes by album hash
        // so a 20-track album still writes one file and every row carries the
        // same path (fixes placeholder tiles on all-but-the-first track of an
        // imported album).
        let artPath: String? = await extractArt(album: album, url: url, meta: meta)
        return [
            "uri": url.path,
            "title": title,
            "artist": artist,
            "album": album,
            "durationMs": durationMs,
            "artPath": artPath as Any,
        ]
    }

    private func extractArt(album: String, url: URL, meta: [AVMetadataItem]) async -> String? {
        let artItem = AVMetadataItem.metadataItems(
            from: meta, filteredByIdentifier: .commonIdentifierArtwork).first
        guard let item = artItem, let data = try? await item.load(.dataValue) else { return nil }
        guard let image = UIImage(data: data) else { return nil }
        // Downscale to ~512px to match the Android side.
        let size = image.size
        let maxDim = max(size.width, size.height)
        guard maxDim > 512 else {
            return saveArt(album: album, data: data)
        }
        let scale = 512.0 / maxDim
        let newSize = CGSize(width: size.width * scale, height: size.height * scale)
        UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
        image.draw(in: CGRect(origin: .zero, size: newSize))
        let scaled = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        guard let outData = scaled?.jpegData(compressionQuality: 0.9) else { return nil }
        return saveArt(album: album, data: outData)
    }

    /// Re-extracts the embedded cover for a single imported track (by its
    /// stored `uri`, which is the original file path). Used by the library's
    /// first-load art repair pass when a row's art path is null or dead.
    /// Resolves the security-scoped URL from [ScopedURLStore] when available.
    private func extractArtForFile(uri: String?, result: @escaping FlutterResult) {
        guard let uri = uri else {
            result(nil)
            return
        }
        let url = ScopedURLStore.shared.url(for: uri) ?? URL(fileURLWithPath: uri)
        let scoped = url.startAccessingSecurityScopedResource()
        defer { if scoped { url.stopAccessingSecurityScopedResource() } }
        Task { [self] in
            let asset = AVURLAsset(url: url)
            let meta = (try? await asset.load(.commonMetadata)) ?? []
            let album = await Self.metadataValue(meta, identifier: .commonIdentifierAlbumName)
                ?? "Unknown album"
            let artPath = await extractArt(album: album, url: url, meta: meta)
            await MainActor.run { result(artPath) }
        }
    }

    private func saveArt(album: String, data: Data) -> String? {
        // 4.0.22: cachesDirectory → applicationSupportDirectory.
        // Caches is purged by the OS (disk pressure / frequent restarts),
        // which silently deleted album art and left the library showing
        // placeholder tiles after a few relaunches (reported bug).
        // Application Support is user-data territory: never auto-purged.
        let dir = FileManager.default.urls(for: .applicationSupportDirectory, in: .userDomainMask).first!
            .appendingPathComponent("album_art", isDirectory: true)
        try? FileManager.default.createDirectory(at: dir, withIntermediateDirectories: true)
        let file = dir.appendingPathComponent("art_\(absHash(album)).jpg")
        if FileManager.default.fileExists(atPath: file.path) { return file.path }
        do {
            try data.write(to: file)
            return file.path
        } catch {
            return nil
        }
    }

    private func absHash(_ s: String) -> Int {
        var h = 0
        for scalar in s.unicodeScalars {
            h = 31 &* h &+ Int(scalar.value)
        }
        return h == Int.min ? 0 : abs(h)
    }
}