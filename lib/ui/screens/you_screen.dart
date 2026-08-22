import 'package:flutter/foundation.dart' show setEquals;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../l10n/app_localizations.dart';

import '../../library/media_store_channel.dart';
import '../../providers/app_language_provider.dart';
import '../../providers/buddy_provider.dart';
import '../../providers/cat_mode_provider.dart';
import '../../providers/companion_provider.dart';
import '../../providers/dev_provider.dart';
import '../../providers/library_provider.dart';
import '../../providers/mascot_provider.dart';
import '../../providers/nerd_provider.dart';
import '../../providers/reco_provider.dart';
import '../../providers/settings_provider.dart';
import '../../providers/theme_provider.dart';
import '../../providers/power_provider.dart';
import '../../providers/update_provider.dart';
import '../../providers/visualizer_provider.dart';
import '../../theme/app_theme.dart';
import '../../theme/hanamimi_theme.dart';
import '../../theme/theme_tokens.dart';
import '../../theme/themes.dart';
import '../components/mascot/buddies.dart';
import '../components/mascot/hanamimi_widget.dart';
import '../modals/update_dialog.dart';
import '../components/mascot/mascot_painter.dart';

class YouScreen extends ConsumerWidget {
  const YouScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(currentThemeProvider);

    return SafeArea(
      bottom: false,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: Space.s4),
        children: [
          const SizedBox(height: Space.s6),
          Text(AppLocalizations.of(context)!.navYou, style: AppText.screenTitle(theme)),
          const SizedBox(height: Space.s6),
          Text(AppLocalizations.of(context)!.youMood,
              style: AppText.sectionLabel(theme)),
          const SizedBox(height: Space.s3),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: Space.s3,
            crossAxisSpacing: Space.s3,
            childAspectRatio: 1.6,
            children: [
              for (final t in allThemes)
                _ThemeTile(
                  tile: t,
                  active: t.id == theme.id,
                  onTap: () => ref
                      .read(selectedThemeIdProvider.notifier)
                      .setTheme(t.id),
                ),
            ],
          ),
          const SizedBox(height: Space.s8),
          Text(AppLocalizations.of(context)!.youCompanion,
              style: AppText.sectionLabel(theme)),
          const SizedBox(height: Space.s3),
          const _CompanionCard(),
          const SizedBox(height: Space.s8),
          Text(AppLocalizations.of(context)!.youBuddies,
              style: AppText.sectionLabel(theme)),
          const SizedBox(height: Space.s3),
          const _BuddiesCard(),
          const SizedBox(height: Space.s8),
          Text(AppLocalizations.of(context)!.youSound,
              style: AppText.sectionLabel(theme)),
          const SizedBox(height: Space.s3),
          const _SoundSettings(),
          const SizedBox(height: Space.s8),
          Text(AppLocalizations.of(context)!.youMore,
              style: AppText.sectionLabel(theme)),
          const SizedBox(height: Space.s3),
          const _MoreCard(),
          const SizedBox(height: Space.s12),
        ],
      ),
    );
  }
}

class _CompanionCard extends ConsumerWidget {
  const _CompanionCard();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(currentThemeProvider);
    final listened = ref.watch(listenTimeProvider);
    final active = ref.watch(activeAccessoryProvider);
    final devUnlockAll = ref.watch(devModeProvider).allAccessories;

    return Container(
      padding: const EdgeInsets.all(Space.s4),
      decoration: BoxDecoration(
        color: theme.surface,
        borderRadius: BorderRadius.circular(Radii.lg),
        border: Border.all(color: theme.divider, width: 0.5),
      ),
      child: Column(
        children: [
          HanamimiMascot(
            state: ref.watch(mascotStateProvider),
            size: 130,
            fullBody: true,
            accessory: ref.watch(catModeProvider).enabled
                ? Accessory.catEars
                : active,
          ),
          const SizedBox(height: Space.s2),
          Text(
            AppLocalizations.of(context)!.youListenedTogether(
                listened.inHours, listened.inMinutes.remainder(60)),
            style: AppText.caption(theme),
          ),
          const SizedBox(height: Space.s4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (final info in accessoryCatalog)
                _AccessoryChip(
                  info: info,
                  unlocked: devUnlockAll || isUnlocked(info, listened),
                  active: active == info.accessory,
                  onTap: () => ref
                      .read(activeAccessoryProvider.notifier)
                      .toggle(info.accessory),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

/// Per-buddy switches (Requests.txt #20 follow-up): every code-drawn
/// pet — the beagle included — can be tucked away individually. The
/// beagle keeps her spots in this tab, on share cards and in the
/// sleep-timer modal; her toggle covers the header and Now Playing.
class _BuddiesCard extends ConsumerWidget {
  const _BuddiesCard();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(currentThemeProvider);
    final disabled = ref.watch(buddyTogglesProvider);

    return Container(
      decoration: BoxDecoration(
        color: theme.surface,
        borderRadius: BorderRadius.circular(Radii.lg),
        border: Border.all(color: theme.divider, width: 0.5),
      ),
      child: Column(
        children: [
          for (final info in buddyCatalog)
            SwitchListTile(
              secondary: SizedBox(
                width: 34,
                height: 30,
                child: _buddyPreview(info.id),
              ),
              title: Text(_buddyName(context, info.id),
                  style: AppText.rowSongTitle(theme)),
              subtitle: Text(_buddyHome(context, info.id),
                  style: AppText.caption(theme)),
              value: !disabled.contains(info.id),
              onChanged: (on) => ref
                  .read(buddyTogglesProvider.notifier)
                  .setEnabled(info.id, on),
            ),
        ],
      ),
    );
  }

  /// A still of each buddy so the row shows who it's about.
  Widget _buddyPreview(String id) {
    switch (id) {
      case 'beagle':
        return const HanamimiMascot(state: MascotState.idle, size: 30);
      case 'parrot':
        return CustomPaint(painter: ParrotPainter(0.75));
      case 'cat':
        return CustomPaint(painter: CatPainter(0.25));
      case 'duck':
        return CustomPaint(painter: DuckPainter(0));
      case 'fireflies':
        return CustomPaint(painter: FireflyPreviewPainter(0));
      default:
        return const SizedBox.shrink();
    }
  }
}

class _AccessoryChip extends ConsumerWidget {
  const _AccessoryChip({
    required this.info,
    required this.unlocked,
    required this.active,
    required this.onTap,
  });

  final AccessoryInfo info;
  final bool unlocked;
  final bool active;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(currentThemeProvider);
    return GestureDetector(
      onTap: unlocked
          ? onTap
          : () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Radii.md)),
                content: Text(
                    AppLocalizations.of(context)!
                        .accUnlockLabel(info.unlockHours),
                    style: const TextStyle(fontFamily: 'Nunito')),
              )),
      child: Opacity(
        opacity: unlocked ? 1 : 0.35,
        child: Column(
          children: [
            AnimatedContainer(
              duration: Anim.minTransition,
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                color: theme.background,
                shape: BoxShape.circle,
                border: Border.all(
                  color: active ? theme.primary : theme.divider,
                  width: active ? 2 : 0.5,
                ),
              ),
              child: unlocked
                  ? CustomPaint(
                      painter: _AccessoryPreviewPainter(info.accessory))
                  : Icon(Icons.lock_outline,
                      size: 18, color: theme.textMuted),
            ),
            const SizedBox(height: Space.s1),
            SizedBox(
              width: 64,
              child: Text(
                unlocked
                    ? _accessoryName(context, info.accessory)
                    : '${info.unlockHours}h',
                style: AppText.caption(theme).copyWith(fontSize: 10),
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Tiny mascot head wearing just the accessory, as a chip preview.
class _AccessoryPreviewPainter extends CustomPainter {
  _AccessoryPreviewPainter(this.accessory);

  final Accessory accessory;

  @override
  void paint(Canvas canvas, Size size) {
    final painter = MascotPainter(
      pose: const MascotPose(
          eyes: EyeKind.smile, brow: BrowKind.none, mouth: MouthKind.neutral),
      accessory: accessory,
    );
    canvas.save();
    // Zoom on the top half of the head where accessories sit.
    canvas.translate(size.width * 0.5, size.height * 0.62);
    canvas.scale(0.55);
    canvas.translate(-60, -60);
    painter.paint(canvas, const Size(120, 132));
    canvas.restore();
  }

  @override
  bool shouldRepaint(_AccessoryPreviewPainter old) =>
      old.accessory != accessory;
}

class _MoreCard extends ConsumerWidget {
  const _MoreCard();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(currentThemeProvider);

    return Container(
      decoration: BoxDecoration(
        color: theme.surface,
        borderRadius: BorderRadius.circular(Radii.md),
        border: Border.all(color: theme.divider, width: 0.5),
      ),
      child: Column(
        children: [
          // 4.0.23: 语言切换 (与 iOS 设置 → Hana360 → 语言 双向同步)
          ListTile(
            leading: Icon(Icons.translate, size: 20, color: theme.textMuted),
            title: Text(AppLocalizations.of(context)!.languageSettings,
                style: AppText.rowSongTitle(theme)),
            subtitle: Text(_languageLabel(context, ref),
                style: AppText.caption(theme)),
            onTap: () => _showLanguageSheet(context, ref, theme),
          ),
          Divider(height: 0.5, color: theme.divider),
          ListTile(
            leading:
                Icon(Icons.refresh, size: 20, color: theme.textMuted),
            title: Text(AppLocalizations.of(context)!.youRescanLibrary,
                style: AppText.rowSongTitle(theme)),
            onTap: () {
              ref.read(libraryProvider.notifier).rescan();
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Radii.md)),
                content: Text(AppLocalizations.of(context)!.youScanning,
                    style: const TextStyle(fontFamily: 'Nunito')),
              ));
            },
          ),
          Divider(height: 0.5, color: theme.divider),
          ListTile(
            leading: Icon(Icons.folder_off_outlined,
                size: 20, color: theme.textMuted),
            title: Text(AppLocalizations.of(context)!.youExcludedFolders,
                style: AppText.rowSongTitle(theme)),
            subtitle: Text(AppLocalizations.of(context)!.youExcludedFoldersSub,
                style: AppText.caption(theme)),
            onTap: () => _showExcludedFoldersSheet(context, ref, theme),
          ),
          // Hidden until unlocked by tapping the mascot 7 times.
          if (ref.watch(catModeProvider).unlocked) ...[
            Divider(height: 0.5, color: theme.divider),
            ListTile(
              leading: const Text('🐱', style: TextStyle(fontSize: 16)),
              title: Text(AppLocalizations.of(context)!.youCatMode,
                  style: AppText.rowSongTitle(theme)),
              trailing: Switch(
                value: ref.watch(catModeProvider).enabled,
                onChanged: (on) =>
                    ref.read(catModeProvider.notifier).setEnabled(on),
              ),
            ),
          ],
          Divider(height: 0.5, color: theme.divider),
          ListTile(
            leading: Icon(Icons.info_outline,
                size: 20, color: theme.textMuted),
            title: Text(AppLocalizations.of(context)!.youAbout,
                style: AppText.rowSongTitle(theme)),
            subtitle: Text(
                ref.watch(appVersionLabelProvider).value ?? 'Hana360',
                style: AppText.caption(theme)),
            onTap: () {
              final unlocked =
                  ref.read(devModeProvider.notifier).registerAboutTap();
              if (unlocked) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Radii.md)),
                  content: Text(AppLocalizations.of(context)!.devModeUnlocked,
                      style: const TextStyle(fontFamily: 'Nunito')),
                ));
              }
            },
          ),
          Divider(height: 0.5, color: theme.divider),
          ListTile(
            leading: const Text('🖤', style: TextStyle(fontSize: 16)),
            title: Text(AppLocalizations.of(context)!.youOpenSource,
                style: AppText.rowSongTitle(theme)),
            subtitle: Text(
                AppLocalizations.of(context)!.youOpenSourceSub,
                style: AppText.caption(theme)),
            onTap: () => launchUrl(
                Uri.parse(
                    'https://github.com/ShaptakNaskar/hanamimi'),
                mode: LaunchMode.externalApplication),
          ),
          Divider(height: 0.5, color: theme.divider),
          ListTile(
            leading: Icon(Icons.system_update_outlined,
                size: 20, color: theme.textMuted),
            title:
                Text(AppLocalizations.of(context)!.youCheckUpdates,
                    style: AppText.rowSongTitle(theme)),
            subtitle: Text(AppLocalizations.of(context)!.youCheckUpdatesSub,
                style: AppText.caption(theme)),
            onTap: () async {
              final update = await ref.refresh(updateCheckProvider.future);
              if (!context.mounted) return;
              if (update != null) {
                await showUpdateDialog(context, update);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Radii.md)),
                  content: Text(AppLocalizations.of(context)!.youUpToDate,
                      style: const TextStyle(fontFamily: 'Nunito')),
                ));
              }
            },
          ),
          Divider(height: 0.5, color: theme.divider),
          const _KeepPlayingRow(),
          Divider(height: 0.5, color: theme.divider),
          ListTile(
            leading: const Text('🐙', style: TextStyle(fontSize: 16)),
            title: Text(AppLocalizations.of(context)!.youGithub,
                style: AppText.rowSongTitle(theme)),
            subtitle: Text(AppLocalizations.of(context)!.youGithubSub,
                style: AppText.caption(theme)),
            onTap: () => launchUrl(
                Uri.parse('https://github.com/ShaptakNaskar/'),
                mode: LaunchMode.externalApplication),
          ),
          Divider(height: 0.5, color: theme.divider),
          ListTile(
            leading: const Text('🌸', style: TextStyle(fontSize: 16)),
            title: Text(AppLocalizations.of(context)!.youMadeBy,
                style: AppText.rowSongTitle(theme)),
            subtitle: Text(AppLocalizations.of(context)!.youMadeBySub,
                style: AppText.caption(theme)),
            onTap: () => launchUrl(
                Uri.parse('https://sappy-dir.vercel.app/'),
                mode: LaunchMode.externalApplication),
          ),
          if (ref.watch(devModeProvider).enabled) ...[
            Divider(height: 0.5, color: theme.divider),
            const _DevOptions(),
          ],
        ],
      ),
    );
  }
}

/// "Keep playing in background" — offers the battery-optimization
/// exemption so OEM battery killers don't pause playback (and leave the
/// seek bar stuck) when the app is backgrounded.
class _KeepPlayingRow extends ConsumerWidget {
  const _KeepPlayingRow();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(currentThemeProvider);
    final ignored = ref.watch(batteryOptIgnoredProvider).value ?? true;
    return ListTile(
      leading: Icon(Icons.battery_saver_outlined,
          size: 20, color: theme.textMuted),
      title: Text(AppLocalizations.of(context)!.youKeepPlaying,
          style: AppText.rowSongTitle(theme)),
      subtitle: Text(
        ignored
            ? AppLocalizations.of(context)!.youKeepPlayingAllowed
            : AppLocalizations.of(context)!.youKeepPlayingTap,
        style: AppText.caption(theme),
      ),
      trailing: ignored
          ? Icon(Icons.check_circle_outline, size: 18, color: theme.primary)
          : Icon(Icons.chevron_right, size: 18, color: theme.textMuted),
      onTap: ignored
          ? null
          : () async {
              await PowerChannel.requestIgnoreBatteryOptimizations();
              ref.invalidate(batteryOptIgnoredProvider);
            },
    );
  }
}

/// Opens the excluded-folders manager; rescans on close if the
/// selection changed so the library reflects it right away.
Future<void> _showExcludedFoldersSheet(
    BuildContext context, WidgetRef ref, HanamimiTheme theme) async {
  final before = ref.read(excludedFoldersProvider);
  await showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (_) => const FractionallySizedBox(
      heightFactor: 0.7,
      child: _ExcludedFoldersSheet(),
    ),
  );
  if (!setEquals(before, ref.read(excludedFoldersProvider))) {
    ref.read(libraryProvider.notifier).rescan();
  }
}

/// Every device folder that contains music (straight from MediaStore,
/// so already-excluded folders stay listed and can be re-included).
class _ExcludedFoldersSheet extends ConsumerStatefulWidget {
  const _ExcludedFoldersSheet();

  @override
  ConsumerState<_ExcludedFoldersSheet> createState() =>
      _ExcludedFoldersSheetState();
}

class _ExcludedFoldersSheetState
    extends ConsumerState<_ExcludedFoldersSheet> {
  List<(String, String, int)>? _folders; // (path, name, song count)
  bool _failed = false;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    try {
      final scanned = await MediaStoreChannel.queryTracks();
      final counts = <String, int>{};
      for (final s in scanned) {
        final path = s['filePath'] as String? ?? '';
        final slash = path.lastIndexOf('/');
        final dir = slash <= 0 ? '/' : path.substring(0, slash);
        counts[dir] = (counts[dir] ?? 0) + 1;
      }
      // Keep excluded folders visible even if their files vanished.
      for (final dir in ref.read(excludedFoldersProvider)) {
        counts.putIfAbsent(dir, () => 0);
      }
      final folders = counts.entries.map((e) {
        final name = e.key.substring(e.key.lastIndexOf('/') + 1);
        return (e.key, name.isEmpty ? '/' : name, e.value);
      }).toList()
        ..sort((a, b) => a.$2.toLowerCase().compareTo(b.$2.toLowerCase()));
      if (mounted) setState(() => _folders = folders);
    } catch (_) {
      if (mounted) setState(() => _failed = true);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(currentThemeProvider);
    final excluded = ref.watch(excludedFoldersProvider);
    final folders = _folders;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(Space.s4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppLocalizations.of(context)!.youExcludedFoldersTitle,
                style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: theme.textPrimary)),
            const SizedBox(height: Space.s1),
            Text(AppLocalizations.of(context)!.youExcludedFoldersDesc,
                style: AppText.caption(theme)),
            const SizedBox(height: Space.s2),
            Expanded(
              child: _failed
                  ? Center(
                      child: Text(
                          AppLocalizations.of(context)!.youCantReadFolders,
                          style: AppText.body(theme)))
                  : folders == null
                      ? Center(
                          child: CircularProgressIndicator(
                              color: theme.primary))
                      : folders.isEmpty
                          ? Center(
                              child: Text(
                                  AppLocalizations.of(context)!
                                      .youNoMusicFolders,
                                  style: AppText.body(theme)))
                          : ListView.builder(
                              itemCount: folders.length,
                              itemBuilder: (context, i) {
                                final (path, name, count) = folders[i];
                                return SwitchListTile(
                                  contentPadding: EdgeInsets.zero,
                                  value: !excluded.contains(path),
                                  title: Text(name,
                                      style: AppText.rowSongTitle(theme),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis),
                                  subtitle: Text(
                                    '$count song${count == 1 ? '' : 's'} · $path',
                                    style: AppText.caption(theme),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  onChanged: (_) => ref
                                      .read(excludedFoldersProvider.notifier)
                                      .toggle(path),
                                );
                              },
                            ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Hidden developer tools (7 taps on About).
class _DevOptions extends ConsumerWidget {
  const _DevOptions();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(currentThemeProvider);
    final dev = ref.watch(devModeProvider);

    void toast(String message) =>
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          behavior: SnackBarBehavior.floating,
          duration: const Duration(seconds: 1),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Radii.md)),
          content:
              Text(message, style: const TextStyle(fontFamily: 'Nunito')),
        ));

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
              left: Space.s4, top: Space.s3, bottom: Space.s1),
          child: Row(
            children: [
              Text(AppLocalizations.of(context)!.devSection,
                  style: AppText.sectionLabel(theme)),
            ],
          ),
        ),
        ListTile(
          leading: const Text('🎀', style: TextStyle(fontSize: 16)),
          title: Text(AppLocalizations.of(context)!.devUnlockAll,
              style: AppText.rowSongTitle(theme)),
          trailing: Switch(
            value: dev.allAccessories,
            onChanged: (on) =>
                ref.read(devModeProvider.notifier).setAllAccessories(on),
          ),
        ),
        ListTile(
          leading:
              Icon(Icons.lyrics_outlined, size: 20, color: theme.textMuted),
          title: Text(AppLocalizations.of(context)!.devClearLyricsCache,
              style: AppText.rowSongTitle(theme)),
          subtitle: Text(AppLocalizations.of(context)!.devRefetchLyrics,
              style: AppText.caption(theme)),
          onTap: () async {
            final repo = await ref.read(libraryRepositoryProvider.future);
            await repo.clearLyricsCache();
            toast(AppLocalizations.of(context)!.devLyricsCleared);
          },
        ),
        ListTile(
          leading:
              Icon(Icons.timer_outlined, size: 20, color: theme.textMuted),
          title: Text(AppLocalizations.of(context)!.devHideOptions,
              style: AppText.rowSongTitle(theme)),
          onTap: () {
            ref.read(devModeProvider.notifier).disable();
            toast(AppLocalizations.of(context)!.devModeOff);
          },
        ),
      ],
    );
  }
}

class _SoundSettings extends ConsumerWidget {
  const _SoundSettings();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(currentThemeProvider);
    final crossfadeSeconds = ref.watch(crossfadeProvider);
    final enabled = crossfadeSeconds > 0;

    return Container(
      padding: const EdgeInsets.all(Space.s4),
      decoration: BoxDecoration(
        color: theme.surface,
        borderRadius: BorderRadius.circular(Radii.md),
        border: Border.all(color: theme.divider, width: 0.5),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AppLocalizations.of(context)!.youCrossfade,
                        style: AppText.rowSongTitle(theme)),
                    Text(AppLocalizations.of(context)!.youCrossfadeSub,
                        style: AppText.caption(theme)),
                  ],
                ),
              ),
              Switch(
                value: enabled,
                onChanged: (on) =>
                    ref.read(crossfadeProvider.notifier).set(on ? 6 : 0),
              ),
            ],
          ),
          AnimatedSize(
            duration: Anim.minTransition,
            child: !enabled
                ? const SizedBox(width: double.infinity)
                : Column(
                    children: [
                      const SizedBox(height: Space.s2),
                      Row(
                        children: [
                          Icon(Icons.pets,
                              size: 16, color: theme.primary),
                          Expanded(
                            child: Slider(
                              value: crossfadeSeconds.toDouble(),
                              min: 2,
                              max: 12,
                              divisions: 10,
                              onChanged: (v) => ref
                                  .read(crossfadeProvider.notifier)
                                  .set(v.round()),
                            ),
                          ),
                          SizedBox(
                            width: 28,
                            child: Text('${crossfadeSeconds}s',
                                style: AppText.caption(theme)),
                          ),
                        ],
                      ),
                    ],
                  ),
          ),
          Divider(height: Space.s6, color: theme.divider),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AppLocalizations.of(context)!.youSmartShuffle,
                        style: AppText.rowSongTitle(theme)),
                    Text(AppLocalizations.of(context)!.youSmartShuffleSub,
                        style: AppText.caption(theme)),
                  ],
                ),
              ),
              Switch(
                value: ref.watch(smartShuffleProvider),
                onChanged: (_) =>
                    ref.read(smartShuffleProvider.notifier).toggle(),
              ),
            ],
          ),
          Divider(height: Space.s6, color: theme.divider),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppLocalizations.of(context)!.youVisSensitivity,
                  style: AppText.rowSongTitle(theme)),
              Text(AppLocalizations.of(context)!.youVisSensitivitySub,
                  style: AppText.caption(theme)),
              Row(
                children: [
                  Icon(Icons.graphic_eq, size: 16, color: theme.primary),
                  Expanded(
                    child: Slider(
                      value: ref
                          .watch(visualizerSensitivityProvider)
                          .clamp(0.5, 3.0)
                          .toDouble(),
                      min: 0.5,
                      max: 3.0,
                      divisions: 10,
                      onChanged: (v) => ref
                          .read(visualizerSensitivityProvider.notifier)
                          .set(v),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                    child: Text(
                      '${ref.watch(visualizerSensitivityProvider).toStringAsFixed(2)}×',
                      style: AppText.caption(theme),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Divider(height: Space.s6, color: theme.divider),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AppLocalizations.of(context)!.youNerdMode,
                        style: AppText.rowSongTitle(theme)),
                    Text(AppLocalizations.of(context)!.youNerdModeSub,
                        style: AppText.caption(theme)),
                  ],
                ),
              ),
              Switch(
                value: ref.watch(nerdModeProvider),
                onChanged: (on) =>
                    ref.read(nerdModeProvider.notifier).set(on),
              ),
            ],
          ),
          Divider(height: Space.s6, color: theme.divider),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AppLocalizations.of(context)!.youEqualizer,
                        style: AppText.rowSongTitle(theme)),
                    Text(AppLocalizations.of(context)!.youComingSoon,
                        style: AppText.caption(theme)),
                  ],
                ),
              ),
              Switch(value: false, onChanged: null),
            ],
          ),
        ],
      ),
    );
  }
}

/// 当前语言设置显示文案 (You 页语言行 subtitle)
String _languageLabel(BuildContext context, WidgetRef ref) {
  final code = ref.watch(appLanguageProvider);
  final l10n = AppLocalizations.of(context)!;
  if (code == appLanguageFollowSystem) return l10n.languageFollowSystem;
  return languageDisplayNames[code] ?? code;
}

/// 语言选择弹层 (App 内切换全部支持语言, 与 iOS 设置双向同步)。
/// 顶部「跟随系统」+ 全部已生成 ARB 的语言列表 (按母语名)。
/// 新增语言 = 加 ARB + languageDisplayNames 一行, 此处零改动。
Future<void> _showLanguageSheet(
    BuildContext context, WidgetRef ref, HanamimiTheme theme) {
  final l10n = AppLocalizations.of(context)!;
  final current = ref.read(appLanguageProvider);
  final supported = AppLocalizations.supportedLocales;
  return showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (_) => SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: theme.surface,
          borderRadius:
              const BorderRadius.vertical(top: Radius.circular(Radii.lg)),
        ),
        padding: const EdgeInsets.symmetric(vertical: Space.s3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Space.s4),
              child: Text(l10n.languageSettings,
                  style: AppText.sectionLabel(theme)),
            ),
            // 跟随系统 (默认, 减少用户选择负担)
            ListTile(
              title: Text(l10n.languageFollowSystem,
                  style: AppText.rowSongTitle(theme)),
              trailing: current == appLanguageFollowSystem
                  ? Icon(Icons.check, size: 20, color: theme.primary)
                  : null,
              onTap: () {
                ref
                    .read(appLanguageProvider.notifier)
                    .set(appLanguageFollowSystem);
                Navigator.pop(context);
              },
            ),
            Divider(height: 0.5, color: theme.divider),
            // 全部支持语言 (可滚动)
            Flexible(
              child: ListView(
                shrinkWrap: true,
                children: [
                  for (final loc in supported)
                    Builder(builder: (tileContext) {
                      // 用完整 tag (含 scriptCode) 作 key, 否则繁体
                      // Locale('zh','Hant').languageCode=='zh' 会误显示成「中文」
                      final tag = loc.scriptCode != null &&
                              loc.scriptCode!.isNotEmpty
                          ? '${loc.languageCode}_${loc.scriptCode}'
                          : loc.languageCode;
                      return ListTile(
                        title: Text(
                            languageDisplayNames[tag] ?? tag,
                            style: AppText.rowSongTitle(theme)),
                        trailing: current == tag
                            ? Icon(Icons.check,
                                size: 20, color: theme.primary)
                            : null,
                        onTap: () {
                          ref
                              .read(appLanguageProvider.notifier)
                              .set(loc);
                          Navigator.pop(context);
                        },
                      );
                    }),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

class _ThemeTile extends ConsumerWidget {
  const _ThemeTile({
    required this.tile,
    required this.active,
    required this.onTap,
  });

  final HanamimiTheme tile;
  final bool active;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(currentThemeProvider);
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Anim.minTransition,
        padding: const EdgeInsets.all(Space.s3),
        decoration: BoxDecoration(
          color: tile.surface,
          borderRadius: BorderRadius.circular(Radii.md),
          border: Border.all(
            color: active ? theme.primary : theme.divider,
            width: active ? 2 : 0.5,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(tile.emoji, style: const TextStyle(fontSize: 20)),
            Text(
              _themeLabel(context, tile.id),
              style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: tile.textPrimary,
              ),
            ),
            Row(
              children: [
                for (final c in [tile.primary, tile.secondary, tile.accent])
                  Container(
                    width: 14,
                    height: 14,
                    margin: const EdgeInsets.only(right: Space.s1),
                    decoration:
                        BoxDecoration(color: c, shape: BoxShape.circle),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// 主题名本地化 (按稳定 id 映射 — themes.dart 的 name 字段是英文常量)
String _themeLabel(BuildContext context, String id) {
  final l10n = AppLocalizations.of(context)!;
  return switch (id) {
    'cherry_blossom' => l10n.themeCherryBlossom,
    'starry_night' => l10n.themeStarryNight,
    'adaptive_light' => l10n.themeAdaptiveLight,
    'adaptive_dark' => l10n.themeAdaptiveDark,
    _ => id,
  };
}

/// 伙伴名/居所本地化 (按稳定 id 映射 — buddyCatalog 的 name/home 是英文)
String _buddyName(BuildContext context, String id) {
  final l10n = AppLocalizations.of(context)!;
  return switch (id) {
    'beagle' => l10n.buddyHana,
    'parrot' => l10n.buddyParrot,
    'cat' => l10n.buddyCat,
    'duck' => l10n.buddyDuck,
    'fireflies' => l10n.buddyFireflies,
    _ => id,
  };
}

String _buddyHome(BuildContext context, String id) {
  final l10n = AppLocalizations.of(context)!;
  return switch (id) {
    'beagle' => l10n.buddyHanaHome,
    'parrot' => l10n.buddyParrotHome,
    'cat' => l10n.buddyCatHome,
    'duck' => l10n.buddyDuckHome,
    'fireflies' => l10n.buddyFirefliesHome,
    _ => '',
  };
}

/// 配件名本地化 (按 Accessory 枚举映射 — accessoryCatalog 的 name 是英文)
String _accessoryName(BuildContext context, Accessory a) {
  final l10n = AppLocalizations.of(context)!;
  return switch (a) {
    Accessory.bow => l10n.accBow,
    Accessory.headphones => l10n.accHeadphones,
    Accessory.flower => l10n.accFlower,
    Accessory.crown => l10n.accCrown,
    _ => a.name,
  };
}
