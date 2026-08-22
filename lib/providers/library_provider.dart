import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../library/import_channel.dart';
import '../library/library_repository.dart';
import '../library/library_scanner.dart';
import '../library/models/playlist.dart';
import '../library/models/track.dart';
import 'audio_provider.dart';
import 'theme_provider.dart';

final libraryRepositoryProvider = FutureProvider<LibraryRepository>(
  (ref) => LibraryRepository.open(),
);

/// Directories excluded from the library scan. Persisted; edits apply
/// on the next (re)scan.
class ExcludedFoldersNotifier extends Notifier<Set<String>> {
  static const _key = 'excluded_folders';

  @override
  Set<String> build() =>
      ref.watch(sharedPrefsProvider).getStringList(_key)?.toSet() ?? {};

  void toggle(String path) {
    state = state.contains(path)
        ? ({...state}..remove(path))
        : {...state, path};
    ref.read(sharedPrefsProvider).setStringList(_key, state.toList());
  }
}

final excludedFoldersProvider =
    NotifierProvider<ExcludedFoldersNotifier, Set<String>>(
        ExcludedFoldersNotifier.new);

/// All tracks in the library. First read triggers a device scan if the
/// DB is empty; `rescan()` is the user-facing refresh.
class LibraryNotifier extends AsyncNotifier<List<Track>> {
  bool _permissionDenied = false;
  bool get permissionDenied => _permissionDenied;

  LibraryScanner _scanner(LibraryRepository repo) => LibraryScanner(
        repo,
        excludedDirs: ref.read(excludedFoldersProvider),
      );

  @override
  Future<List<Track>> build() async {
    final repo = await ref.watch(libraryRepositoryProvider.future);
    var tracks = await repo.allTracks();
    if (tracks.isEmpty) {
      final result = await _scanner(repo).scan();
      _permissionDenied = result == ScanResult.permissionDenied;
      tracks = await repo.allTracks();
    } else {
      // 4.0.24: 首次进入 (DB 非空) 异步兜底检查封面 — 失效/缺失的封面
      // 重新提取, 不阻塞首屏。修复后刷新列表让新封面立即显示。
      Future.microtask(() async {
        await _scanner(repo).repairMissingArt();
        state = AsyncData(await repo.allTracks());
      });
    }
    return tracks;
  }

  Future<void> rescan() async {
    final repo = await ref.read(libraryRepositoryProvider.future);
    final result = await _scanner(repo).scan();
    _permissionDenied = result == ScanResult.permissionDenied;
    state = AsyncData(await repo.allTracks());
  }

  Future<void> toggleLiked(Track track) async {
    final repo = await ref.read(libraryRepositoryProvider.future);
    await repo.setLiked(track.id, !track.liked);
    state = AsyncData([
      for (final t in state.value ?? <Track>[])
        t.id == track.id ? t.copyWith(liked: !track.liked) : t,
    ]);
  }

  // --- SAF 导入 (鸿蒙/受限系统 MediaStore 不可用时的第二曲库来源) ---

  /// 系统文件选择器多选音频文件导入。用户取消返回 -1。
  Future<int> importFromFiles() async {
    final items = await ImportChannel.pickFiles();
    if (items == null) return -1;
    return _applyImported(items);
  }

  /// 系统文件夹选择器, 递归扫描目录下音频导入。用户取消返回 -1。
  Future<int> importFromFolder() async {
    final items = await ImportChannel.pickFolder();
    if (items == null) return -1;
    return _applyImported(items);
  }

  Future<int> _applyImported(List<Map<String, Object?>> items) async {
    if (items.isEmpty) return 0;
    final repo = await ref.read(libraryRepositoryProvider.future);
    final added = await repo.importTracks(items);
    state = AsyncData(await repo.allTracks());
    return added;
  }

  /// 从曲库移除导入曲目 (不删源文件), 并释放 SAF 持久授权。
  Future<void> removeImported(Track track) async {
    if (!track.isImported || track.sourceUri == null) return;
    final repo = await ref.read(libraryRepositoryProvider.future);
    await repo.removeImported(track.sourceUri!);
    await ImportChannel.release(track.sourceUri!);
    state = AsyncData(await repo.allTracks());
  }

  /// 清空整个曲库: 移除所有曲目 (含导入曲目), 释放导入曲目的 SAF 授权,
  /// 并清空播放队列。源文件本身不删除。
  Future<void> clearLibrary() async {
    final repo = await ref.read(libraryRepositoryProvider.future);
    final tracks = state.value ?? [];
    for (final t in tracks.where((t) => t.isImported && t.sourceUri != null)) {
      try {
        await ImportChannel.release(t.sourceUri!);
      } catch (_) {
        // 授权释放失败无害 (系统会在应用数据清理时回收)
      }
    }
    await repo.clearLibrary();
    state = AsyncData(await repo.allTracks());
    // 清空播放队列, 避免残留指向已删除歌曲的队列。
    ref.read(audioHandlerProvider).clear();
  }
}

final libraryProvider =
    AsyncNotifierProvider<LibraryNotifier, List<Track>>(LibraryNotifier.new);

/// Two files are "the same song" when title, artist, album and duration
/// (to the second) all match — the filenames may differ but the music
/// is 1:1 (same track ripped/downloaded twice). Artists are compared
/// as a SORTED set: two rips of a collab often list the same artists
/// in a different order ("Laura Brehm, Summer Was Fun" vs
/// "Summer Was Fun, Laura Brehm") and are still the same song.
String _songKey(Track t) {
  final artists = t.artist
      .toLowerCase()
      .split(RegExp(r'[;,&/]|\bfeat\.?\b|\bft\.?\b'))
      .map((s) => s.trim())
      .where((s) => s.isNotEmpty)
      .toList()
    ..sort();
  return '${t.title.toLowerCase().trim()}|${artists.join(',')}|'
      '${t.album.toLowerCase().trim()}|${t.duration.inSeconds}';
}

/// Collapses duplicate songs to one entry, keeping list order. Among
/// copies the lexicographically-first file path wins so the survivor
/// is stable across rescans. Used library-wide (Songs tab, search,
/// albums); folder browsing applies it per-directory instead, so a
/// song living in two folders still shows in both.
List<Track> dedupeTracks(List<Track> tracks) {
  final best = <String, Track>{};
  for (final t in tracks) {
    final k = _songKey(t);
    final cur = best[k];
    if (cur == null || t.filePath.compareTo(cur.filePath) < 0) {
      best[k] = t;
    }
  }
  final seen = <String>{};
  return [
    for (final t in tracks)
      if (seen.add(_songKey(t))) best[_songKey(t)]!,
  ];
}

/// Albums derived from the track list, sorted by title.
final albumsProvider = Provider<List<Album>>((ref) {
  final tracks = ref.watch(libraryProvider).value ?? [];
  final byAlbum = <int, List<Track>>{};
  for (final t in tracks) {
    byAlbum.putIfAbsent(t.albumId, () => []).add(t);
  }
  final albums = byAlbum.entries.map((e) {
    final ts = dedupeTracks(e.value)
      ..sort(
        (a, b) => (a.trackNumber ?? 0).compareTo(b.trackNumber ?? 0));
    return Album(
      albumId: e.key,
      title: ts.first.album,
      artist: ts.first.artist,
      artPath: ts.firstWhere((t) => t.albumArtPath != null, orElse: () => ts.first).albumArtPath,
      tracks: ts,
    );
  }).toList()
    ..sort((a, b) => a.title.toLowerCase().compareTo(b.title.toLowerCase()));
  return albums;
});

/// Folders that directly contain music, grouped by each track's parent
/// directory and sorted by name.
final foldersProvider = Provider<List<MusicFolder>>((ref) {
  final tracks = ref.watch(libraryProvider).value ?? [];
  final byDir = <String, List<Track>>{};
  for (final t in tracks) {
    // 导入曲目是 content:// URI, 没有真实文件夹 — 不进入 Folders tab。
    if (t.isImported) continue;
    final slash = t.filePath.lastIndexOf('/');
    final dir = slash <= 0 ? '/' : t.filePath.substring(0, slash);
    byDir.putIfAbsent(dir, () => []).add(t);
  }
  final folders = byDir.entries.map((e) {
    final name = e.key.substring(e.key.lastIndexOf('/') + 1);
    return MusicFolder(
      path: e.key,
      name: name.isEmpty ? '/' : name,
      // Per-directory dedupe only — the same song in TWO folders is
      // intentional; two identical files in ONE folder is clutter.
      tracks: dedupeTracks(e.value),
    );
  }).toList()
    ..sort((a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()));
  return folders;
});

class PlaylistsNotifier extends AsyncNotifier<List<Playlist>> {
  @override
  Future<List<Playlist>> build() async {
    final repo = await ref.watch(libraryRepositoryProvider.future);
    return repo.allPlaylists();
  }

  Future<void> create(String name, int coverColor) async {
    final repo = await ref.read(libraryRepositoryProvider.future);
    await repo.createPlaylist(name, coverColor);
    state = AsyncData(await repo.allPlaylists());
  }

  /// Creates a playlist pre-filled with tracks, in the given order
  /// (folder → playlist). Returns the new playlist id.
  Future<int> createWithTracks(
      String name, int coverColor, List<int> trackIds) async {
    final repo = await ref.read(libraryRepositoryProvider.future);
    final id = await repo.createPlaylist(name, coverColor);
    for (final trackId in trackIds) {
      await repo.addToPlaylist(id, trackId);
    }
    state = AsyncData(await repo.allPlaylists());
    return id;
  }

  Future<void> addTrack(int playlistId, int trackId) async {
    final repo = await ref.read(libraryRepositoryProvider.future);
    await repo.addToPlaylist(playlistId, trackId);
    state = AsyncData(await repo.allPlaylists());
  }

  Future<void> removeTrack(int playlistId, int trackId) async {
    final repo = await ref.read(libraryRepositoryProvider.future);
    await repo.removeFromPlaylist(playlistId, trackId);
    state = AsyncData(await repo.allPlaylists());
  }

  Future<void> delete(int playlistId) async {
    final repo = await ref.read(libraryRepositoryProvider.future);
    await repo.deletePlaylist(playlistId);
    state = AsyncData(await repo.allPlaylists());
  }

  /// Sets or clears (null) a playlist's custom cover image.
  Future<void> setCover(int playlistId, String? path) async {
    final repo = await ref.read(libraryRepositoryProvider.future);
    await repo.setPlaylistCover(playlistId, path);
    state = AsyncData(await repo.allPlaylists());
  }

  /// Drag-reorder: moves the track at [oldIndex] to [newIndex] (indices
  /// into the playlist's current order). State updates optimistically so
  /// the row lands where it was dropped without a DB round-trip.
  Future<void> reorderTrack(
      int playlistId, int oldIndex, int newIndex) async {
    final playlists = state.value ?? [];
    final playlist =
        playlists.where((p) => p.id == playlistId).firstOrNull;
    if (playlist == null) return;
    final ids = [...playlist.trackIds];
    if (oldIndex < 0 || oldIndex >= ids.length) return;
    final id = ids.removeAt(oldIndex);
    ids.insert(newIndex.clamp(0, ids.length), id);

    state = AsyncData([
      for (final p in playlists)
        p.id == playlistId ? p.copyWith(trackIds: ids) : p,
    ]);
    final repo = await ref.read(libraryRepositoryProvider.future);
    await repo.reorderPlaylist(playlistId, ids);
  }
}

final playlistsProvider =
    AsyncNotifierProvider<PlaylistsNotifier, List<Playlist>>(
        PlaylistsNotifier.new);
