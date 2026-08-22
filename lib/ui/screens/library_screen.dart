import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import '../../l10n/app_localizations.dart';

import '../../audio/models/queue_mode.dart';
import '../../library/models/playlist.dart';
import '../../library/models/track.dart';
import '../../utils/back_stack.dart';
import '../../providers/audio_provider.dart';
import '../../providers/desktop_shell_provider.dart';
import '../../providers/library_provider.dart';
import '../../providers/mascot_provider.dart';
import '../../providers/theme_provider.dart';
import '../../providers/update_provider.dart';
import '../../theme/app_theme.dart';
import '../../theme/hanamimi_theme.dart';
import '../../theme/theme_tokens.dart';
import '../../providers/buddy_provider.dart';
import '../components/library/album_card.dart';
import '../components/mascot/buddies.dart';
import '../components/mascot/hanamimi_widget.dart';
import '../components/library/playlist_card.dart';
import '../components/library/playlist_cover.dart';
import '../components/library/track_row.dart';
import '../components/shared/pill_tab_bar.dart';
import '../modals/playlist_picker_sheet.dart';

class LibraryScreen extends ConsumerStatefulWidget {
  const LibraryScreen({super.key});

  @override
  ConsumerState<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends ConsumerState<LibraryScreen> {
  int _tab = 0;
  bool _searching = false;
  String _query = '';
  final _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // System back closes the search overlay before leaving the screen.
    BackStack.register(this, () {
      if (!_searching) return false;
      _closeSearch();
      return true;
    });
  }

  @override
  void dispose() {
    BackStack.unregister(this);
    _searchController.dispose();
    super.dispose();
  }

  void _closeSearch() {
    setState(() {
      _searching = false;
      _query = '';
      _searchController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(currentThemeProvider);
    final width = MediaQuery.sizeOf(context).width;
    // Three-pane shell (wide tablets / desktop windows): the sidebar
    // deep-links a collection into this pane. A request overrides the
    // active pill until the user drives the pills again.
    final collectionRequest = ref.watch(desktopCollectionProvider);
    final visualTab = collectionRequest == null
        ? _tab
        : collectionRequest.type == DesktopCollectionType.folder
            ? 2
            : 3;

    return SafeArea(
      bottom: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: Space.s6),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Space.s4),
            child: _searching
                ? Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: Sizes.inputHeight,
                          child: TextField(
                            controller: _searchController,
                            autofocus: true,
                            onChanged: (q) => setState(() => _query = q),
                            style: AppText.body(theme),
                            decoration: InputDecoration(
                              hintText:
                                  AppLocalizations.of(context)!.libSearchHint,
                              hintStyle: AppText.body(theme)
                                  .copyWith(color: theme.textMuted),
                              prefixIcon: Icon(Icons.search,
                                  size: 20, color: theme.textMuted),
                              filled: true,
                              fillColor: theme.surface,
                              contentPadding: EdgeInsets.zero,
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(Radii.pill),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: Space.s2),
                      InkResponse(
                        onTap: _closeSearch,
                        radius: 20,
                        child:
                            Icon(Icons.close, size: 24, color: theme.textMuted),
                      ),
                    ],
                  )
                : Row(
                    children: [
                      // In the three-pane shell the sidebar already wears
                      // the mascot + edition title, so repeating them in
                      // the middle pane read as a glitch — drop them there
                      // and keep just the search affordance.
                      if (width < 1240) ...[
                        // The mascot lives in the header too — she reacts
                        // to playback just like on Now Playing.
                        if (ref.watch(buddyEnabledProvider('beagle'))) ...[
                          HanamimiMascot(
                              state: ref.watch(mascotStateProvider),
                              size: 30),
                          const SizedBox(width: Space.s2),
                        ],
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Text(
                                ref.watch(editionNameProvider).value ??
                                    'Hana360',
                                style: AppText.screenTitle(theme)
                                    .copyWith(fontSize: 22)),
                            // The parrot perches on the title and hops
                            // along it (Requests.txt #20).
                            if (ref.watch(buddyEnabledProvider('parrot')))
                              const Positioned(
                                  left: 0,
                                  right: 0,
                                  top: -15,
                                  child: HeaderParrot()),
                          ],
                        ),
                      ],
                      const Spacer(),
                      // 清空列表: 移除曲库全部曲目 (弹确认框, 不删源文件)。
                      InkResponse(
                        onTap: () => _confirmClearLibrary(context, ref),
                        radius: 20,
                        child: Tooltip(
                          message:
                              AppLocalizations.of(context)!.libClearLibrary,
                          child: Icon(Icons.delete_outline,
                              size: 24, color: theme.textMuted),
                        ),
                      ),
                      const SizedBox(width: Space.s1),
                      // SAF 导入音乐 (鸿蒙/受限系统 MediaStore 不可用时:
                      // 从系统文件/文件夹选择器添加曲目)。
                      InkResponse(
                        onTap: () => _showImportSheet(context, ref),
                        radius: 20,
                        child: Tooltip(
                          message:
                              AppLocalizations.of(context)!.libImportMusic,
                          child: Icon(Icons.file_download_outlined,
                              size: 24, color: theme.textMuted),
                        ),
                      ),
                      const SizedBox(width: Space.s1),
                      InkResponse(
                        onTap: () => setState(() => _searching = true),
                        radius: 20,
                        child: Icon(Icons.search,
                            size: 24, color: theme.textMuted),
                      ),
                    ],
                  ),
          ),
          const SizedBox(height: Space.s4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Space.s4),
            child: PillTabBar(
              tabs: [
                AppLocalizations.of(context)!.tabSongs,
                AppLocalizations.of(context)!.tabAlbums,
                AppLocalizations.of(context)!.tabFolders,
                AppLocalizations.of(context)!.tabPlaylists,
              ],
              activeIndex: visualTab,
              onChanged: (i) => setState(() {
                // Manual pill tap takes the wheel back from the sidebar.
                ref.read(desktopCollectionProvider.notifier).clear();
                _tab = i;
              }),
              theme: theme,
            ),
          ),
          const SizedBox(height: Space.s2),
          Expanded(
            child: AnimatedSwitcher(
              duration: Anim.minTransition,
              child: collectionRequest != null
                  ? switch (collectionRequest.type) {
                      DesktopCollectionType.folder => _FoldersTab(
                          key: ValueKey('sidebar_${collectionRequest.nonce}'),
                          query: _query,
                          initialOpenPath: collectionRequest.folderPath,
                        ),
                      DesktopCollectionType.playlist => _PlaylistsTab(
                          key: ValueKey('sidebar_${collectionRequest.nonce}'),
                          query: _query,
                          initialOpenId: collectionRequest.playlistId,
                        ),
                      DesktopCollectionType.liked => _PlaylistsTab(
                          key: ValueKey('sidebar_${collectionRequest.nonce}'),
                          query: _query,
                          initialLikedOpen: true,
                        ),
                    }
                  : switch (_tab) {
                      0 => _SongsTab(key: const ValueKey(0), query: _query),
                      1 => _AlbumsTab(key: const ValueKey(1), query: _query),
                      2 => _FoldersTab(key: const ValueKey(2), query: _query),
                      _ => _PlaylistsTab(key: const ValueKey(3), query: _query),
                    },
            ),
          ),
        ],
      ),
    );
  }
}

class _SongsTab extends ConsumerWidget {
  const _SongsTab({super.key, this.query = ''});

  final String query;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(currentThemeProvider);
    final library = ref.watch(libraryProvider);

    return library.when(
      loading: () => Center(
          child: CircularProgressIndicator(color: theme.primary)),
      error: (e, _) => _Message(
          AppLocalizations.of(context)!.libError(e.toString()),
          theme: theme),
      data: (allTracks) {
        // Deduped: the same song ripped twice (same tags + duration,
        // different filename) shows once.
        final localTracks = dedupeTracks(allTracks);
        final q = query.trim().toLowerCase();
        final tracks = q.isEmpty
            ? localTracks
            : localTracks
                .where((t) =>
                    t.title.toLowerCase().contains(q) ||
                    t.artist.toLowerCase().contains(q) ||
                    t.album.toLowerCase().contains(q))
                .toList();
        if (tracks.isEmpty && q.isNotEmpty) {
          return _Message(
              AppLocalizations.of(context)!.libNoMatch(query),
              theme: theme);
        }
        if (tracks.isEmpty) {
          final denied =
              ref.read(libraryProvider.notifier).permissionDenied;
          // 权限被拒(或 MediaStore 不可用, 如鸿蒙): 空态直接给"导入音乐"入口。
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _Message(
                denied
                    ? AppLocalizations.of(context)!.libPermissionDenied
                    : AppLocalizations.of(context)!.libNoSongs,
                theme: theme,
                actionLabel: denied
                    ? AppLocalizations.of(context)!.libGrantAccess
                    : AppLocalizations.of(context)!.libRescan,
                onAction: () =>
                    ref.read(libraryProvider.notifier).rescan(),
              ),
              const SizedBox(height: Space.s3),
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  foregroundColor: theme.primary,
                  side: BorderSide(color: theme.primary),
                  shape: const StadiumBorder(),
                ),
                onPressed: () => _showImportSheet(context, ref),
                icon: const Icon(Icons.file_download_outlined, size: 18),
                label: Text(
                    AppLocalizations.of(context)!.libImportMusic,
                    style: const TextStyle(
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w600)),
              ),
            ],
          );
        }
        final playingId =
            ref.watch(audioStateProvider).value?.currentTrack?.id;
        return RefreshIndicator(
          color: theme.primary,
          onRefresh: () => ref.read(libraryProvider.notifier).rescan(),
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(
                horizontal: Space.s4, vertical: Space.s2),
            itemCount: tracks.length,
            itemExtent: Sizes.trackRowHeight,
            itemBuilder: (context, i) => TrackRow(
              track: tracks[i],
              theme: theme,
              isPlaying: tracks[i].id == playingId,
              onTap: () => ref
                  .read(audioHandlerProvider)
                  .playTracks(tracks, startIndex: i),
              onAddToQueue: () {
                ref
                    .read(audioHandlerProvider)
                    .engine
                    .addToQueue(tracks[i]);
                _toast(context, AppLocalizations.of(context)!.libAddedToQueue);
              },
              onAddToPlaylist: () =>
                  showPlaylistPicker(context, ref, theme, tracks[i].id),
              // 导入曲目长按 → 从库移除 (MediaStore 曲目无此操作)。
              onLongPress: tracks[i].isImported
                  ? () => _showImportedTrackMenu(context, ref, tracks[i])
                  : null,
            ),
          ),
        );
      },
    );
  }
}

class _AlbumsTab extends ConsumerWidget {
  const _AlbumsTab({super.key, this.query = ''});

  final String query;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(currentThemeProvider);
    final q = query.trim().toLowerCase();
    final albums = ref
        .watch(albumsProvider)
        .where((a) =>
            q.isEmpty ||
            a.title.toLowerCase().contains(q) ||
            a.artist.toLowerCase().contains(q))
        .toList();

    if (albums.isEmpty) {
      return _Message(
          q.isEmpty
              ? AppLocalizations.of(context)!.libNoAlbums
              : AppLocalizations.of(context)!.libNoMatch(query),
          theme: theme);
    }
    return GridView.builder(
      padding: const EdgeInsets.all(Space.s4),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: Space.s3,
        crossAxisSpacing: Space.s3,
      ),
      itemCount: albums.length,
      itemBuilder: (context, i) => AlbumCard(
        album: albums[i],
        onTap: () =>
            ref.read(audioHandlerProvider).playTracks(albums[i].tracks),
      ),
    );
  }
}

/// VLC-style folder browsing: folders that contain music, drill into
/// one to see and play its songs (folder becomes the queue).
class _FoldersTab extends ConsumerStatefulWidget {
  const _FoldersTab({super.key, this.query = '', this.initialOpenPath});

  final String query;

  /// Deep-link from the desktop sidebar: open straight into this folder.
  final String? initialOpenPath;

  @override
  ConsumerState<_FoldersTab> createState() => _FoldersTabState();
}

class _FoldersTabState extends ConsumerState<_FoldersTab> {
  String? _openPath;

  @override
  void initState() {
    super.initState();
    _openPath = widget.initialOpenPath;
    // System back climbs out of the open folder before leaving the tab.
    BackStack.register(this, () {
      if (_openPath == null) return false;
      setState(() => _openPath = null);
      return true;
    });
  }

  @override
  void dispose() {
    BackStack.unregister(this);
    super.dispose();
  }

  /// Folder → playlist with the folder's name (deduped "Name 2", …) and
  /// its songs in folder order.
  Future<void> _createPlaylistFromFolder(MusicFolder folder) async {
    final existing = ref.read(playlistsProvider).value ?? [];
    var name = folder.name;
    var n = 2;
    while (existing.any((p) => p.name.toLowerCase() == name.toLowerCase())) {
      name = '${folder.name} ${n++}';
    }
    final color =
        playlistCoverColors[existing.length % playlistCoverColors.length];
    await ref.read(playlistsProvider.notifier).createWithTracks(
        name, color.toARGB32(), [for (final t in folder.tracks) t.id]);
    if (mounted) {
      _toast(
          context, AppLocalizations.of(context)!.libPlaylistCreated(name));
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(currentThemeProvider);
    final folders = ref.watch(foldersProvider);
    final q = widget.query.trim().toLowerCase();

    final open = _openPath == null
        ? null
        : folders.where((f) => f.path == _openPath).firstOrNull;

    if (open == null) {
      final visible = folders
          .where((f) => q.isEmpty || f.name.toLowerCase().contains(q))
          .toList();
      if (visible.isEmpty) {
        return _Message(
            q.isEmpty
                ? AppLocalizations.of(context)!.libNoFolders
                : AppLocalizations.of(context)!.libNoMatch(widget.query),
            theme: theme);
      }
      return Column(
        key: const ValueKey('folder_list'),
        children: [
          // The long-press affordance was invisible — say it out loud.
          Padding(
            padding: const EdgeInsets.fromLTRB(
                Space.s4, Space.s1, Space.s4, Space.s1),
            child: Text(AppLocalizations.of(context)!.libFolderHint,
                style: AppText.caption(theme).copyWith(fontSize: 10)),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(
                  horizontal: Space.s4, vertical: Space.s2),
              itemCount: visible.length,
              itemExtent: Sizes.trackRowHeight,
              itemBuilder: (context, i) => _FolderRow(
                folder: visible[i],
                theme: theme,
                onTap: () => setState(() => _openPath = visible[i].path),
                onCreatePlaylist: () =>
                    _createPlaylistFromFolder(visible[i]),
              ),
            ),
          ),
        ],
      );
    }

    // Inside a folder: header with back + name, then its tracks.
    final playingId = ref.watch(audioStateProvider).value?.currentTrack?.id;
    final tracks = open.tracks
        .where((t) =>
            q.isEmpty ||
            t.title.toLowerCase().contains(q) ||
            t.artist.toLowerCase().contains(q))
        .toList();

    return Column(
      key: ValueKey('folder_${open.path}'),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(Space.s2, Space.s1, Space.s4, 0),
          child: Row(
            children: [
              InkResponse(
                onTap: () => setState(() => _openPath = null),
                radius: 20,
                child: SizedBox(
                  width: Sizes.minTouchTarget,
                  height: Sizes.minTouchTarget,
                  child: Icon(Icons.chevron_left,
                      size: 26, color: theme.textPrimary),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(open.name,
                        style: AppText.rowSongTitle(theme),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis),
                    Text(
                      AppLocalizations.of(context)!
                          .libSongCountPath(open.tracks.length, open.path),
                      style: AppText.caption(theme).copyWith(fontSize: 10),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: Space.s2),
              InkResponse(
                onTap: () => _createPlaylistFromFolder(open),
                radius: 20,
                child: SizedBox(
                  width: Sizes.minTouchTarget,
                  height: Sizes.minTouchTarget,
                  child: Icon(Icons.playlist_add,
                      size: 22, color: theme.textMuted),
                ),
              ),
              InkResponse(
                onTap: () => ref
                    .read(audioHandlerProvider)
                    .playTracks(open.tracks),
                radius: 22,
                child: Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                      color: theme.primary, shape: BoxShape.circle),
                  child:
                      const Icon(Icons.play_arrow, color: Colors.white, size: 22),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: tracks.isEmpty
              ? _Message('Nothing matches "${widget.query}"', theme: theme)
              : ListView.builder(
                  padding: const EdgeInsets.symmetric(
                      horizontal: Space.s4, vertical: Space.s2),
                  itemCount: tracks.length,
                  itemExtent: Sizes.trackRowHeight,
                  itemBuilder: (context, i) => TrackRow(
                    track: tracks[i],
                    theme: theme,
                    isPlaying: tracks[i].id == playingId,
                    onTap: () => ref
                        .read(audioHandlerProvider)
                        .playTracks(tracks, startIndex: i),
                    onAddToQueue: () {
                      ref
                          .read(audioHandlerProvider)
                          .engine
                          .addToQueue(tracks[i]);
                      _toast(context, AppLocalizations.of(context)!.libAddedToQueue);
                    },
                    onAddToPlaylist: () => showPlaylistPicker(
                        context, ref, theme, tracks[i].id),
                  ),
                ),
        ),
      ],
    );
  }
}

class _FolderRow extends StatelessWidget {
  const _FolderRow({
    required this.folder,
    required this.theme,
    required this.onTap,
    this.onCreatePlaylist,
  });

  final MusicFolder folder;
  final HanamimiTheme theme;
  final VoidCallback onTap;

  /// Long-press: folder → playlist.
  final VoidCallback? onCreatePlaylist;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        onLongPress: onCreatePlaylist,
        splashColor: theme.primary.withValues(alpha: 0.12),
        highlightColor: theme.primary.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(Radii.md),
        child: SizedBox(
          height: Sizes.trackRowHeight,
          child: Row(
            children: [
              Container(
                width: Sizes.trackRowArt,
                height: Sizes.trackRowArt,
                decoration: BoxDecoration(
                  color: theme.primary.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(Icons.folder_outlined,
                    size: 24, color: theme.primary),
              ),
              const SizedBox(width: Space.s3),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(folder.name,
                        style: AppText.rowSongTitle(theme),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis),
                    const SizedBox(height: 2),
                    Text(
                      AppLocalizations.of(context)!
                          .libSongCount(folder.tracks.length),
                      style: AppText.rowArtist(theme),
                    ),
                  ],
                ),
              ),
              Icon(Icons.chevron_right, size: 20, color: theme.textMuted),
            ],
          ),
        ),
      ),
    );
  }
}

/// The pinned "Liked songs" collection card — same notebook style as
/// PlaylistCard, with a heart cover on the theme accent.
class _LikedSongsCard extends StatelessWidget {
  const _LikedSongsCard({
    required this.count,
    required this.theme,
    required this.onTap,
  });

  final int count;
  final HanamimiTheme theme;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: theme.surface,
      borderRadius: BorderRadius.circular(Radii.md),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(Radii.md),
        child: Container(
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Radii.md),
            border: Border.all(color: theme.divider, width: 0.5),
          ),
          child: Row(
            children: [
              Container(
                width: 80,
                decoration: BoxDecoration(
                  color: theme.accent,
                  borderRadius: const BorderRadius.horizontal(
                      left: Radius.circular(Radii.md)),
                ),
                alignment: Alignment.center,
                child: const Icon(Icons.favorite,
                    size: 30, color: Colors.white),
              ),
              const SizedBox(width: Space.s4),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.libLikedSongs,
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: theme.textPrimary,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      AppLocalizations.of(context)!.plTrackCount(count),
                      style: AppText.caption(theme),
                    ),
                  ],
                ),
              ),
              Icon(Icons.chevron_right, color: theme.textMuted),
              const SizedBox(width: Space.s3),
            ],
          ),
        ),
      ),
    );
  }
}

class _PlaylistsTab extends ConsumerStatefulWidget {
  const _PlaylistsTab({
    super.key,
    this.query = '',
    this.initialOpenId,
    this.initialLikedOpen = false,
  });

  final String query;

  /// Deep-links from the desktop sidebar: open straight into a playlist,
  /// or into the Liked-songs detail.
  final int? initialOpenId;
  final bool initialLikedOpen;

  @override
  ConsumerState<_PlaylistsTab> createState() => _PlaylistsTabState();
}

class _PlaylistsTabState extends ConsumerState<_PlaylistsTab> {
  int? _openId;
  bool _likedOpen = false;

  @override
  void initState() {
    super.initState();
    _openId = widget.initialOpenId;
    _likedOpen = widget.initialLikedOpen;
    // System back closes the open playlist / liked-songs detail first.
    BackStack.register(this, () {
      if (_likedOpen) {
        setState(() => _likedOpen = false);
        return true;
      }
      if (_openId != null) {
        setState(() => _openId = null);
        return true;
      }
      return false;
    });
  }

  @override
  void dispose() {
    BackStack.unregister(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(currentThemeProvider);
    final q = widget.query.trim().toLowerCase();
    final all = ref.watch(playlistsProvider).value ?? [];

    if (_likedOpen) return _buildLikedDetail(theme, q);
    final open =
        _openId == null ? null : all.where((p) => p.id == _openId).firstOrNull;
    if (open != null) return _buildDetail(open, theme, q);

    final playlists = all
        .where((p) => q.isEmpty || p.name.toLowerCase().contains(q))
        .toList();
    final likedCount = (ref.watch(libraryProvider).value ?? [])
        .where((t) => t.liked)
        .length;

    return Stack(
      children: [
        ListView.separated(
          padding: const EdgeInsets.all(Space.s4),
          // Slot 0 is the pinned Liked-songs collection; likes had no
          // home before — hearts were stored but nowhere to see them.
          itemCount: playlists.length + 1,
          separatorBuilder: (_, __) => const SizedBox(height: Space.s3),
          itemBuilder: (context, i) {
            if (i == 0) {
              final card = _LikedSongsCard(
                count: likedCount,
                theme: theme,
                onTap: () => setState(() => _likedOpen = true),
              );
              // The duck struts along the top edge of the pinned card
              // — anchored to furniture like the cat and parrot, not
              // floating in the whitespace.
              if (!ref.watch(buddyEnabledProvider('duck'))) return card;
              return Padding(
                padding: const EdgeInsets.only(top: Space.s2),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    card,
                    const Positioned(
                        left: 10,
                        right: 10,
                        top: -17,
                        child: PlaylistsDuck(size: 22)),
                  ],
                ),
              );
            }
            final playlist = playlists[i - 1];
            return PlaylistCard(
              playlist: playlist,
              theme: theme,
              onTap: () => setState(() => _openId = playlist.id),
            );
          },
        ),
        Positioned(
          right: Space.s4,
          bottom: Space.s4,
          child: FloatingActionButton.extended(
            heroTag: 'new_playlist',
            backgroundColor: theme.primary,
            foregroundColor: Colors.white,
            elevation: 2,
            shape: const StadiumBorder(),
            icon: const Icon(Icons.add),
            label: const Text('New playlist',
                style: TextStyle(
                    fontFamily: 'Nunito', fontWeight: FontWeight.w600)),
            onPressed: () => _showCreatePlaylistSheet(context, ref, theme),
          ),
        ),
      ],
    );
  }

  /// Liked-songs detail: every liked track, newest hearts included the
  /// moment they're tapped (the list watches the library). Unlike is
  /// done from the heart itself, so no swipe actions here.
  Widget _buildLikedDetail(HanamimiTheme theme, String q) {
    final liked = (ref.watch(libraryProvider).value ?? [])
        .where((t) => t.liked)
        .toList();
    final visible = liked
        .where((t) =>
            q.isEmpty ||
            t.title.toLowerCase().contains(q) ||
            t.artist.toLowerCase().contains(q))
        .toList();
    final playingId = ref.watch(audioStateProvider).value?.currentTrack?.id;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(Space.s2, Space.s1, Space.s4, 0),
          child: Row(
            children: [
              InkResponse(
                onTap: () => setState(() => _likedOpen = false),
                radius: 20,
                child: SizedBox(
                  width: Sizes.minTouchTarget,
                  height: Sizes.minTouchTarget,
                  child: Icon(Icons.chevron_left,
                      size: 26, color: theme.textPrimary),
                ),
              ),
              Container(
                width: 34,
                height: 34,
                decoration: BoxDecoration(
                  color: theme.accent,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(Icons.favorite,
                    size: 18, color: Colors.white),
              ),
              const SizedBox(width: Space.s3),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AppLocalizations.of(context)!.libLikedSongs,
                        style: AppText.rowSongTitle(theme)),
                    Text(
                      AppLocalizations.of(context)!.libSongCount(liked.length),
                      style: AppText.caption(theme),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: Space.s2),
        Expanded(
          child: visible.isEmpty
              ? _Message(
                  q.isEmpty
                      ? AppLocalizations.of(context)!.libTapHeart
                      : AppLocalizations.of(context)!.libNoMatch(widget.query),
                  theme: theme)
              : ListView.builder(
                  padding:
                      const EdgeInsets.symmetric(horizontal: Space.s4),
                  itemCount: visible.length,
                  itemExtent: Sizes.trackRowHeight,
                  itemBuilder: (context, i) => TrackRow(
                    track: visible[i],
                    theme: theme,
                    isPlaying: visible[i].id == playingId,
                    onTap: () => ref
                        .read(audioHandlerProvider)
                        .playTracks(visible, startIndex: i),
                  ),
                ),
        ),
      ],
    );
  }

  /// Playlist detail: header (play all, delete), tracks in playlist
  /// order. Swipe a row left to remove it from the playlist.
  Widget _buildDetail(Playlist playlist, HanamimiTheme theme, String q) {
    final allTracks = ref.watch(libraryProvider).value ?? [];
    final byId = {for (final t in allTracks) t.id: t};
    final tracks = [
      for (final id in playlist.trackIds)
        if (byId[id] != null) byId[id]!,
    ];
    final visible = tracks
        .where((t) =>
            q.isEmpty ||
            t.title.toLowerCase().contains(q) ||
            t.artist.toLowerCase().contains(q))
        .toList();
    final playingId = ref.watch(audioStateProvider).value?.currentTrack?.id;

    // Hero header (community ask): big collage cover, name, meta and
    // the action row — the playlist as a place, not just a list.
    final totalDur = tracks.fold(Duration.zero, (d, t) => d + t.duration);
    final totalLabel = totalDur.inHours > 0
        ? '${totalDur.inHours}h ${totalDur.inMinutes.remainder(60)}m'
        : '${totalDur.inMinutes} min';
    final header = Padding(
      padding: const EdgeInsets.fromLTRB(Space.s4, 0, Space.s4, Space.s4),
      child: Column(
        children: [
          // Tap the cover to pick a custom image (or reset it).
          GestureDetector(
            onTap: () => _pickCover(playlist, theme),
            child:
                PlaylistCover(playlist: playlist, size: 180, fontSize: 56),
          ),
          const SizedBox(height: Space.s4),
          Text(playlist.name,
              style: AppText.screenTitle(theme),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis),
          const SizedBox(height: Space.s1),
          Text(
            AppLocalizations.of(context)!.libSongCount(tracks.length),
            style: AppText.caption(theme),
          ),
          Text(AppLocalizations.of(context)!.libSwipeHint,
              style: AppText.caption(theme).copyWith(fontSize: 10)),
          const SizedBox(height: Space.s3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkResponse(
                onTap: tracks.isEmpty
                    ? null
                    : () {
                        final handler = ref.read(audioHandlerProvider);
                        handler.playTracks(tracks);
                        handler.engine.setMode(QueueMode.shuffle);
                      },
                radius: 22,
                child: SizedBox(
                  width: Sizes.minTouchTarget,
                  height: Sizes.minTouchTarget,
                  child:
                      Icon(Icons.shuffle, size: 24, color: theme.textMuted),
                ),
              ),
              const SizedBox(width: Space.s4),
              InkResponse(
                onTap: tracks.isEmpty
                    ? null
                    : () =>
                        ref.read(audioHandlerProvider).playTracks(tracks),
                radius: 30,
                child: Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                      color: theme.primary, shape: BoxShape.circle),
                  child: const Icon(Icons.play_arrow,
                      color: Colors.white, size: 32),
                ),
              ),
            ],
          ),
        ],
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(Space.s2, Space.s1, Space.s4, 0),
          child: Row(
            children: [
              InkResponse(
                onTap: () => setState(() => _openId = null),
                radius: 20,
                child: SizedBox(
                  width: Sizes.minTouchTarget,
                  height: Sizes.minTouchTarget,
                  child: Icon(Icons.chevron_left,
                      size: 26, color: theme.textPrimary),
                ),
              ),
              const Spacer(),
              InkResponse(
                onTap: () => _confirmDeletePlaylist(playlist, theme),
                radius: 20,
                child: SizedBox(
                  width: Sizes.minTouchTarget,
                  height: Sizes.minTouchTarget,
                  child: Icon(Icons.delete_outline,
                      size: 20, color: theme.textMuted),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: visible.isEmpty
              ? Column(
                  children: [
                    header,
                    Expanded(
                      child: _Message(
                          q.isEmpty
                              ? AppLocalizations.of(context)!.libNothingHere
                              : AppLocalizations.of(context)!.libNoMatch(widget.query),
                          theme: theme),
                    ),
                  ],
                )
              // Long-press drag to reorder — but only on the unfiltered
              // list, where row indices match playlist positions.
              : ReorderableListView.builder(
                  header: header,
                  buildDefaultDragHandles: q.isEmpty,
                  onReorder: (oldIndex, newIndex) {
                    if (q.isNotEmpty) return;
                    if (newIndex > oldIndex) newIndex--;
                    ref
                        .read(playlistsProvider.notifier)
                        .reorderTrack(playlist.id, oldIndex, newIndex);
                  },
                  proxyDecorator: (child, _, __) => Material(
                      color: Colors.transparent,
                      elevation: 4,
                      borderRadius: BorderRadius.circular(Radii.md),
                      child: child),
                  padding: const EdgeInsets.symmetric(
                      horizontal: Space.s4, vertical: Space.s2),
                  itemCount: visible.length,
                  itemExtent: Sizes.trackRowHeight,
                  itemBuilder: (context, i) => KeyedSubtree(
                    key: ValueKey('pl_${playlist.id}_${visible[i].id}'),
                    child: TrackRow(
                      track: visible[i],
                      theme: theme,
                      isPlaying: visible[i].id == playingId,
                      onTap: () => ref
                          .read(audioHandlerProvider)
                          .playTracks(visible, startIndex: i),
                      onAddToQueue: () {
                        ref
                            .read(audioHandlerProvider)
                            .engine
                            .addToQueue(visible[i]);
                        _toast(context, AppLocalizations.of(context)!.libAddedToQueue);
                      },
                      onRemove: () {
                        ref
                            .read(playlistsProvider.notifier)
                            .removeTrack(playlist.id, visible[i].id);
                        _toast(context,
                            AppLocalizations.of(context)!.libRemovedFromQueue);
                      },
                    ),
                  ),
                ),
        ),
      ],
    );
  }

  /// Cover picker: gallery image (copied into app storage so the pick
  /// survives the gallery cleaning caches) or back to the collage.
  Future<void> _pickCover(Playlist playlist, HanamimiTheme theme) async {
    final action = await showModalBottomSheet<String>(
      context: context,
      builder: (sheetContext) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(Icons.image_outlined, color: theme.textPrimary),
              title: Text(AppLocalizations.of(context)!.libChooseCover,
                  style: AppText.body(theme)),
              onTap: () => Navigator.pop(sheetContext, 'pick'),
            ),
            if (playlist.coverImagePath != null)
              ListTile(
                leading:
                    Icon(Icons.restart_alt, color: theme.textPrimary),
                title: Text(AppLocalizations.of(context)!.libBackToArtCover,
                    style: AppText.body(theme)),
                onTap: () => Navigator.pop(sheetContext, 'reset'),
              ),
          ],
        ),
      ),
    );
    if (action == 'reset') {
      await ref.read(playlistsProvider.notifier).setCover(playlist.id, null);
      return;
    }
    if (action != 'pick') return;

    final picked = await ImagePicker()
        .pickImage(source: ImageSource.gallery, maxWidth: 1024);
    if (picked == null) return;
    final dir = Directory(
        '${(await getApplicationDocumentsDirectory()).path}/playlist_covers');
    await dir.create(recursive: true);
    // Unique name per pick — reusing one path would keep showing the old
    // image from the decode cache.
    final dest =
        '${dir.path}/${playlist.id}_${DateTime.now().millisecondsSinceEpoch}.jpg';
    await File(picked.path).copy(dest);
    final old = playlist.coverImagePath;
    await ref.read(playlistsProvider.notifier).setCover(playlist.id, dest);
    if (old != null) {
      try {
        await File(old).delete();
      } catch (_) {}
    }
  }

  void _confirmDeletePlaylist(Playlist playlist, HanamimiTheme theme) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        backgroundColor: theme.surface,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Radii.lg)),
        title: Text(AppLocalizations.of(context)!.libDeleteConfirm(playlist.name),
            style: AppText.rowSongTitle(theme)),
        content: Text(AppLocalizations.of(context)!.libDeleteKeepSongs,
            style: AppText.caption(theme)),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text(AppLocalizations.of(context)!.libKeep,
                style: AppText.button(theme)
                    .copyWith(color: theme.textMuted)),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(dialogContext);
              setState(() => _openId = null);
              ref.read(playlistsProvider.notifier).delete(playlist.id);
            },
            child: Text(AppLocalizations.of(context)!.libDelete,
                style:
                    AppText.button(theme).copyWith(color: theme.accent)),
          ),
        ],
      ),
    );
  }
}

void _toast(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    behavior: SnackBarBehavior.floating,
    duration: const Duration(seconds: 1),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Radii.md)),
    content:
        Text(message, style: const TextStyle(fontFamily: 'Nunito')),
  ));
}

/// 导入曲目长按菜单: 从库移除 (不删源文件, 释放 SAF 授权)。
Future<void> _showImportedTrackMenu(
    BuildContext context, WidgetRef ref, Track track) async {
  final theme = ref.read(currentThemeProvider);
  final action = await showModalBottomSheet<String>(
    context: context,
    builder: (sheetContext) => SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading:
                Icon(Icons.remove_circle_outline, color: theme.accent),
            title: Text(AppLocalizations.of(context)!.libRemoveFromLibrary,
                style: AppText.body(theme)),
            subtitle: Text(AppLocalizations.of(context)!.libRemoveKeepFile,
                style: AppText.caption(theme)),
            onTap: () => Navigator.pop(sheetContext, 'remove'),
          ),
        ],
      ),
    ),
  );
  if (action != 'remove') return;
  await ref.read(libraryProvider.notifier).removeImported(track);
  if (context.mounted) {
    _toast(context, AppLocalizations.of(context)!.libRemovedFromLibrary);
  }
}

/// 清空曲库确认框: Confirm 移除所有曲目, Cancel 取消。不删除源文件。
Future<void> _confirmClearLibrary(BuildContext context, WidgetRef ref) async {
  final theme = ref.read(currentThemeProvider);
  final confirmed = await showDialog<bool>(
    context: context,
    builder: (dialogContext) => AlertDialog(
      backgroundColor: theme.surface,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Radii.lg)),
      title: Text(AppLocalizations.of(context)!.libClearLibrary,
          style: AppText.rowSongTitle(theme)),
      content: Text(AppLocalizations.of(context)!.libClearConfirm,
          style: AppText.caption(theme)),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(dialogContext, false),
          child: Text(AppLocalizations.of(context)!.commonCancel,
              style: AppText.button(theme).copyWith(color: theme.textMuted)),
        ),
        TextButton(
          onPressed: () => Navigator.pop(dialogContext, true),
          child: Text(AppLocalizations.of(context)!.commonConfirm,
              style: AppText.button(theme).copyWith(color: theme.accent)),
        ),
      ],
    ),
  );
  if (confirmed != true || !context.mounted) return;
  await ref.read(libraryProvider.notifier).clearLibrary();
  if (context.mounted) {
    _toast(context, AppLocalizations.of(context)!.libLibraryCleared);
  }
}

/// 导入音乐入口: 底部菜单选"文件"或"文件夹"(SAF 系统选择器)。
void _showImportSheet(BuildContext context, WidgetRef ref) {
  final theme = ref.read(currentThemeProvider);
  showModalBottomSheet<void>(
    context: context,
    builder: (sheetContext) => SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading:
                Icon(Icons.music_note_outlined, color: theme.textPrimary),
            title: Text(AppLocalizations.of(context)!.libImportMusic,
                style: AppText.body(theme)),
            subtitle: Text(AppLocalizations.of(context)!.libPickAudioFiles,
                style: AppText.caption(theme)),
            onTap: () {
              Navigator.pop(sheetContext);
              _runImport(context, ref, folder: false);
            },
          ),
          ListTile(
            leading:
                Icon(Icons.folder_open_outlined, color: theme.textPrimary),
            title: Text(AppLocalizations.of(context)!.libImportFolder,
                style: AppText.body(theme)),
            subtitle: Text(AppLocalizations.of(context)!.libScanWholeFolder,
                style: AppText.caption(theme)),
            onTap: () {
              Navigator.pop(sheetContext);
              _runImport(context, ref, folder: true);
            },
          ),
        ],
      ),
    ),
  );
}

/// 执行导入: 系统选择器 → 进度圈 → 结果提示。
Future<void> _runImport(
    BuildContext context, WidgetRef ref, {required bool folder}) async {
  final notifier = ref.read(libraryProvider.notifier);
  // 选择器 + 元数据读取可能在后台跑一会, 先给个进度圈。
  showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (_) => const Center(child: CircularProgressIndicator()),
  );

  int added;
  try {
    added = folder
        ? await notifier.importFromFolder()
        : await notifier.importFromFiles();
  } catch (e) {
    if (context.mounted) {
      Navigator.pop(context);
      _toast(context, AppLocalizations.of(context)!.libImportFailed(e.toString()));
    }
    return;
  }
  if (context.mounted) Navigator.pop(context);
  if (added < 0) return; // 用户取消了选择器
  if (context.mounted) {
    _toast(context, added == 0
        ? AppLocalizations.of(context)!.libNoAudioFound
        : AppLocalizations.of(context)!.libImportedCount(added));
  }
}

void _showCreatePlaylistSheet(
    BuildContext context, WidgetRef ref, HanamimiTheme theme) {
  final controller = TextEditingController();
  var selectedColor = playlistCoverColors.first;

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) => StatefulBuilder(
      builder: (context, setState) => Padding(
        padding: EdgeInsets.only(
          left: Space.s4,
          right: Space.s4,
          top: Space.s6,
          bottom: MediaQuery.of(context).viewInsets.bottom + Space.s6,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppLocalizations.of(context)!.libNewPlaylist,
                style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: theme.textPrimary)),
            const SizedBox(height: Space.s4),
            TextField(
              controller: controller,
              autofocus: true,
              style: AppText.body(theme),
              decoration: InputDecoration(
                hintText: AppLocalizations.of(context)!.libPlaylistName,
                hintStyle: AppText.body(theme)
                    .copyWith(color: theme.textMuted),
                filled: true,
                fillColor: theme.background,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(Radii.md),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: Space.s4),
            Wrap(
              spacing: Space.s3,
              children: [
                for (final c in playlistCoverColors)
                  GestureDetector(
                    onTap: () => setState(() => selectedColor = c),
                    child: AnimatedContainer(
                      duration: Anim.minTransition,
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: c,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: selectedColor == c
                              ? theme.textPrimary
                              : Colors.transparent,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: Space.s6),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: theme.primary,
                  shape: const StadiumBorder(),
                  padding: const EdgeInsets.symmetric(vertical: Space.s3),
                ),
                onPressed: () {
                  final name = controller.text.trim();
                  if (name.isEmpty) return;
                  ref
                      .read(playlistsProvider.notifier)
                      .create(name, selectedColor.toARGB32());
                  Navigator.pop(context);
                },
                child: Text(AppLocalizations.of(context)!.libCreate,
                    style: const TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 14,
                        fontWeight: FontWeight.w600)),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

class _Message extends StatelessWidget {
  const _Message(this.text,
      {required this.theme, this.actionLabel, this.onAction});

  final String text;
  final HanamimiTheme theme;
  final String? actionLabel;
  final VoidCallback? onAction;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(text, style: AppText.body(theme), textAlign: TextAlign.center),
          if (actionLabel != null) ...[
            const SizedBox(height: Space.s4),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: theme.primary,
                shape: const StadiumBorder(),
              ),
              onPressed: onAction,
              child: Text(actionLabel!,
                  style: const TextStyle(
                      fontFamily: 'Nunito', fontWeight: FontWeight.w600)),
            ),
          ],
        ],
      ),
    );
  }
}
