package com.hanamimi.app

import android.app.Activity
import android.content.Intent
import android.graphics.Bitmap
import android.media.MediaMetadataRetriever
import android.net.Uri
import android.os.Handler
import android.os.Looper
import android.provider.OpenableColumns
import androidx.documentfile.provider.DocumentFile
import io.flutter.plugin.common.MethodChannel
import java.io.File
import java.io.FileOutputStream
import java.util.concurrent.Executors

/**
 * SAF 音乐导入 — MediaStore 不可用时的第二曲库来源
 * (鸿蒙 NEXT 兼容容器 / 受限系统: MediaStore 不索引用户文件, 但 intent 文件访问可用)。
 *
 * 两种模式:
 *  - pickFiles:   ACTION_OPEN_DOCUMENT, 多选音频文件
 *  - pickFolder:  ACTION_OPEN_DOCUMENT_TREE, 整个音乐目录递归扫描
 * 每个 URI 都 takePersistableUriPermission 持久授权; 元数据/内嵌封面用
 * MediaMetadataRetriever 读取 (content URI 直接 setDataSource)。
 *
 * 与"打开方式"同属 intent 机制, 不需要 READ_MEDIA_AUDIO 权限。
 */
@Suppress("DEPRECATION") // FlutterActivity 非 ComponentActivity, 用 startActivityForResult
class ImportChannel(private val activity: Activity) {

    companion object {
        const val REQ_PICK_FILES = 4201
        const val REQ_PICK_FOLDER = 4202

        private val AUDIO_EXT = setOf(
            "mp3", "m4a", "aac", "flac", "wav", "ogg", "opus", "wma",
            "aiff", "aif", "caf", "ape", "dsf", "dff", "mka", "amr",
        )
        private const val MAX_FILES = 2000
        private const val MAX_DEPTH = 8
    }

    private val executor = Executors.newSingleThreadExecutor()
    private val mainHandler = Handler(Looper.getMainLooper())

    private var pendingResult: MethodChannel.Result? = null
    private var pendingKind: String? = null

    fun handle(call: io.flutter.plugin.common.MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            "pickFiles" -> {
                val intent = Intent(Intent.ACTION_OPEN_DOCUMENT).apply {
                    type = "audio/*"
                    putExtra(Intent.EXTRA_ALLOW_MULTIPLE, true)
                }
                launch(result, REQ_PICK_FILES, intent)
            }
            "pickFolder" -> launch(result, REQ_PICK_FOLDER, Intent(Intent.ACTION_OPEN_DOCUMENT_TREE))
            "release" -> {
                val uri = call.argument<String>("uri")
                if (uri != null) {
                    try {
                        activity.contentResolver.releasePersistableUriPermission(
                            Uri.parse(uri), Intent.FLAG_GRANT_READ_URI_PERMISSION)
                    } catch (_: Exception) {
                        // 授权已失效/从未持久化 — 无害
                    }
                }
                result.success(null)
            }
            else -> result.notImplemented()
        }
    }

    private fun launch(result: MethodChannel.Result, code: Int, intent: Intent) {
        if (pendingResult != null) {
            result.error("import_busy", "import already in progress", null)
            return
        }
        pendingResult = result
        pendingKind = if (code == REQ_PICK_FILES) "files" else "folder"
        try {
            activity.startActivityForResult(intent, code)
        } catch (e: Exception) {
            pendingResult = null
            pendingKind = null
            result.error("import", e.message, null)
        }
    }

    /** MainActivity.onActivityResult 转发入口 */
    fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        val result = pendingResult ?: return
        val kind = pendingKind
        pendingResult = null
        pendingKind = null
        executor.execute {
            try {
                if (resultCode != Activity.RESULT_OK) {
                    mainHandler.post { result.success(null) } // 用户取消
                    return@execute
                }
                val uris = when (kind) {
                    "folder" -> collectTreeUris(data?.data)
                    else -> collectPickedUris(data)
                }
                val tracks = importAll(uris)
                mainHandler.post { result.success(tracks) }
            } catch (e: Exception) {
                mainHandler.post { result.error("import", e.message, null) }
            }
        }
    }

    // --- URI 收集 ---

    private fun collectPickedUris(data: Intent?): List<Uri> {
        if (data == null) return emptyList()
        val out = mutableListOf<Uri>()
        val clip = data.clipData
        if (clip != null) {
            for (i in 0 until clip.itemCount) {
                clip.getItemAt(i).uri?.let { out.add(it) }
            }
        } else {
            data.data?.let { out.add(it) }
        }
        for (uri in out) persistRead(uri)
        return out
    }

    /** 文件夹树: 持久授权树根, DocumentFile 递归收集音频文件 */
    private fun collectTreeUris(treeUri: Uri?): List<Uri> {
        if (treeUri == null) return emptyList()
        persistRead(treeUri)
        val root = DocumentFile.fromTreeUri(activity, treeUri) ?: return emptyList()
        val out = mutableListOf<Uri>()
        walk(root, out, 0)
        return out
    }

    private fun walk(dir: DocumentFile, out: MutableList<Uri>, depth: Int) {
        if (depth > MAX_DEPTH || out.size >= MAX_FILES) return
        val children = try { dir.listFiles() } catch (_: Exception) { return }
        for (child in children) {
            if (out.size >= MAX_FILES) return
            if (child.isDirectory) {
                walk(child, out, depth + 1)
            } else if (isAudio(child)) {
                child.uri?.let { out.add(it) }
            }
        }
    }

    private fun isAudio(f: DocumentFile): Boolean {
        val name = f.name ?: return false
        val ext = name.substringAfterLast('.', "").lowercase()
        if (ext in AUDIO_EXT) return true
        val mime = f.type ?: return false
        return mime.startsWith("audio/") || mime == "application/ogg"
    }

    private fun persistRead(uri: Uri) {
        try {
            activity.contentResolver.takePersistableUriPermission(
                uri, Intent.FLAG_GRANT_READ_URI_PERMISSION)
        } catch (_: Exception) {
            // 该 provider 不支持持久授权 (如某些临时授权) — 会话内仍可用
        }
    }

    // --- 元数据 + 封面 ---

    private val seenAlbums = HashSet<String>()

    private fun importAll(uris: List<Uri>): List<Map<String, Any?>> {
        seenAlbums.clear()
        val seenUris = HashSet<String>()
        val out = mutableListOf<Map<String, Any?>>()
        for (uri in uris) {
            val key = uri.toString()
            if (!seenUris.add(key)) continue
            out.add(readMetadata(uri))
        }
        return out
    }

    private fun readMetadata(uri: Uri): Map<String, Any?> {
        var title: String? = null
        var artist: String? = null
        var album: String? = null
        var durationMs = 0L
        var artPath: String? = null
        val mmr = MediaMetadataRetriever()
        try {
            mmr.setDataSource(activity, uri)
            title = mmr.extractMetadata(MediaMetadataRetriever.METADATA_KEY_TITLE)
            artist = mmr.extractMetadata(MediaMetadataRetriever.METADATA_KEY_ARTIST)
            album = mmr.extractMetadata(MediaMetadataRetriever.METADATA_KEY_ALBUM)
            durationMs = mmr.extractMetadata(MediaMetadataRetriever.METADATA_KEY_DURATION)
                ?.toLongOrNull() ?: 0L
            val albumKey = if (album.isNullOrBlank()) "Unknown album" else album
            if (seenAlbums.add(albumKey)) {
                mmr.embeddedPicture?.let { artPath = saveArt(albumKey, it) }
            }
        } catch (_: Exception) {
            // 无法读取元数据 (损坏/无权限) — 用文件名回退
        } finally {
            try { mmr.release() } catch (_: Exception) {}
        }
        if (title.isNullOrBlank()) title = displayName(uri)
        return mapOf(
            "uri" to uri.toString(),
            "title" to (title ?: "Unknown"),
            "artist" to (artist ?: "Unknown artist"),
            "album" to (album ?: "Unknown album"),
            "durationMs" to durationMs,
            "artPath" to artPath,
        )
    }

    private fun displayName(uri: Uri): String? {
        try {
            activity.contentResolver.query(
                uri, arrayOf(OpenableColumns.DISPLAY_NAME), null, null, null,
            )?.use { c ->
                if (c.moveToFirst()) {
                    val col = c.getColumnIndex(OpenableColumns.DISPLAY_NAME)
                    if (col >= 0) return c.getString(col)
                }
            }
        } catch (_: Exception) {}
        return uri.lastPathSegment
    }

    /** 每张专辑只存一份封面 (首见即存), 返回缓存文件路径或 null */
    private fun saveArt(albumKey: String, bytes: ByteArray): String? {
        return try {
            val dir = File(activity.cacheDir, "album_art").apply { mkdirs() }
            val outFile = File(dir, "art_${absHash(albumKey)}.jpg")
            if (outFile.exists()) return outFile.absolutePath
            val bitmap = decodeScaled(bytes, 512) ?: return null
            FileOutputStream(outFile).use { bitmap.compress(Bitmap.CompressFormat.JPEG, 90, it) }
            outFile.absolutePath
        } catch (_: Exception) {
            null
        }
    }

    private fun absHash(s: String): Int {
        val h = s.hashCode()
        return if (h == Int.MIN_VALUE) 0 else Math.abs(h)
    }

    /** 解码并降采样到目标边长 */
    private fun decodeScaled(bytes: ByteArray, target: Int): Bitmap? = try {
        val bounds = android.graphics.BitmapFactory.Options().apply {
            inJustDecodeBounds = true
        }
        android.graphics.BitmapFactory.decodeByteArray(bytes, 0, bytes.size, bounds)
        var sample = 1
        while (bounds.outWidth / (sample * 2) >= target &&
            bounds.outHeight / (sample * 2) >= target
        ) {
            sample *= 2
        }
        val opts = android.graphics.BitmapFactory.Options().apply { inSampleSize = sample }
        android.graphics.BitmapFactory.decodeByteArray(bytes, 0, bytes.size, opts)
    } catch (_: Exception) {
        null
    }
}
