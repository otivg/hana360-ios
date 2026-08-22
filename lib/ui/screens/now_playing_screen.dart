import 'dart:io';
import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../l10n/app_localizations.dart';

import '../../library/models/track.dart';
import '../../providers/audio_provider.dart';
import '../../providers/buddy_provider.dart';
import '../../providers/cat_mode_provider.dart';
import '../../providers/companion_provider.dart';
import '../../providers/library_provider.dart';
import '../../providers/mascot_provider.dart';
import '../../providers/nerd_provider.dart';
import '../../providers/reco_provider.dart';
import '../../providers/theme_provider.dart';
import '../../providers/visualizer_provider.dart';
import '../../theme/app_theme.dart';
import '../../theme/hanamimi_theme.dart';
import '../../theme/theme_tokens.dart';
import '../components/mascot/hanamimi_widget.dart';
import '../components/mascot/mascot_painter.dart';
import '../components/now_playing/album_art_widget.dart';
import '../components/now_playing/playback_controls.dart';
import '../components/now_playing/seek_bar_widget.dart';
import '../components/now_playing/visualizer_widget.dart';
import '../components/now_playing/spatial_toggle.dart';
import '../components/shared/particle_overlay.dart';
import '../modals/lyrics_sheet.dart';
import '../modals/spatial_360_sheet.dart';
import '../modals/playlist_picker_sheet.dart';
import '../modals/queue_sheet.dart';
import '../modals/sleep_timer_modal.dart';

class NowPlayingScreen extends ConsumerWidget {
  const NowPlayingScreen({super.key, this.panel = false});

  /// True when living as the desktop/tablet side panel: the shell paints
  /// ONE art-glow wash + particle field under all three panes, so the
  /// panel skips its own copies (they'd confine the glow to 400px and
  /// double the particles).
  final bool panel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(currentThemeProvider);
    final audio = ref.watch(audioStateProvider).value;
    final track = audio?.currentTrack;

    if (track == null) {
      return SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.music_note_outlined,
                  size: 48, color: theme.textMuted),
              const SizedBox(height: Space.s3),
              Text(AppLocalizations.of(context)!.npNothingPlaying,
                  style: AppText.body(theme)),
              const SizedBox(height: Space.s1),
              Text(AppLocalizations.of(context)!.npPickSong,
                  style: AppText.caption(theme)),
            ],
          ),
        ),
      );
    }

    // Liked state lives in the library, not the audio snapshot.
    final libraryTrack = ref
            .watch(libraryProvider)
            .value
            ?.firstWhere((t) => t.id == track.id, orElse: () => track) ??
        track;

    return Stack(
      fit: StackFit.expand,
      children: [
        if (!panel) _BlurredArtBackground(track: track, theme: theme),
        if (!panel)
          ParticleOverlay(
              theme: theme,
              fireflies: ref.watch(buddyEnabledProvider('fireflies'))),
        SafeArea(
          bottom: false,
          child: LayoutBuilder(builder: (context, constraints) {
            // Quantize to whole pixels: a fractional artSize changes by
            // ~0.001px between rebuilds (Spacer reflow), which makes
            // AnimatedSwitcher inside AlbumArtWidget re-layout mid-frame
            // and trips "debugNeedsLayout: is not true".
            final artSize = (constraints.maxWidth * 0.72).roundToDouble();
            // Wrap the content in a scroll view so small screens (or
            // large system fonts) can scroll instead of getting a yellow-
            // striped "Bottom Overflowed by N pixels" stripe. On larger
            // screens the content fits and the scroll view is a no-op.
            return SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: Space.s4),
                  child: Column(
                children: [
                  const SizedBox(height: 16),
                  AlbumArtWidget(
                    track: track,
                    theme: theme,
                    isPlaying: audio?.isPlaying ?? false,
                    size: artSize,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(track.title,
                                style: AppText.npSongTitle(theme),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis),
                            const SizedBox(height: 2),
                            Text(track.artist,
                                style: AppText.npArtist(theme),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis),
                          ],
                        ),
                      ),
                      const SizedBox(width: Space.s3),
                      _HeartButton(track: libraryTrack, theme: theme),
                    ],
                  ),
                  const _NerdBar(),
                  const SizedBox(height: Space.s4),
                  _SeekBarSection(theme: theme),
                  const SizedBox(height: Space.s6),
                  PlaybackControls(
                    onSleepTimer: () => showSleepTimerModal(context),
                    onQueue: () => showQueueSheet(context),
                    onAddToPlaylist: () => showPlaylistPicker(
                        context, ref, theme, libraryTrack.id),
                    onStartRadio: () => startRadio(ref, libraryTrack),
                  ),
                  const SizedBox(height: Space.s3),
                  // 360 空间音效开关 (播放控制下方胶囊)
                  SpatialToggle(theme: theme),
                  const SizedBox(height: Space.s2),
                  const VisualizerWidget(height: 56),
                  const SizedBox(height: 12),
                  // 工具行: [360 设置] [Lyrics]
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () => showSpatial360Sheet(context, ref),
                        child: Column(
                          children: [
                            Icon(Icons.graphic_eq,
                                color: theme.textMuted, size: 20),
                            Text(AppLocalizations.of(context)!.npSpatialSettings,
                                style: AppText.caption(theme)),
                          ],
                        ),
                      ),
                      const SizedBox(width: Space.s6),
                      GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () => showLyricsSheet(context, track),
                        onVerticalDragEnd: (d) {
                          if ((d.primaryVelocity ?? 0) < -200) {
                            showLyricsSheet(context, track);
                          }
                        },
                        child: Column(
                          children: [
                            Icon(Icons.keyboard_arrow_up,
                                color: theme.textMuted, size: 20),
                            Text(AppLocalizations.of(context)!.npLyrics,
                                style: AppText.caption(theme)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: Space.s2),
                  // Fixed-height mascot slot (original used Flexible(flex:6) but
                  // inside a SingleChildScrollView the column has unbounded
                  // vertical constraint → Flexible.fit defaults to loose and
                  // gives 0 height → mascot + everything below collapsed to
                  // invisible → blank page once playback started).
                  SizedBox(
                    width: double.infinity,
                    height: 110,
                    child: Stack(
                      children: [
                        if (ref.watch(buddyEnabledProvider('beagle')))
                          Align(
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: HanamimiMascot(
                                state: ref.watch(mascotStateProvider),
                                amplitude: ref.watch(amplitudeProvider),
                                accessory: ref.watch(catModeProvider).enabled
                                    ? Accessory.catEars
                                    : ref.watch(activeAccessoryProvider),
                                size: 90,
                                onTap: () {
                                  final unlocked = ref
                                      .read(catModeProvider.notifier)
                                      .registerMascotTap();
                                  if (unlocked) {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                      behavior: SnackBarBehavior.floating,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(
                                                  Radii.md)),
                                      content: Text(
                                          AppLocalizations.of(context)!
                                              .npCatModeUnlocked,
                                          style: const TextStyle(
                                              fontFamily: 'Nunito')),
                                    ));
                                  }
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                  ),
                  const SizedBox(height: Space.s2),
                ],
                  ),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}

/// Album art blurred to a wash, overlaid with the theme background at
/// 85% opacity (DESIGN.md §10.2).
class _BlurredArtBackground extends StatelessWidget {
  const _BlurredArtBackground({required this.track, required this.theme});

  final Track track;
  final HanamimiTheme theme;

  @override
  Widget build(BuildContext context) {
    final art = track.albumArtPath;
    return Stack(
      fit: StackFit.expand,
      children: [
        if (art != null && File(art).existsSync())
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 60, sigmaY: 60),
            // Blurring full-resolution art costs enormous raster time and
            // memory; at sigma 60 a small decode looks identical.
            child: Image.file(File(art),
                fit: BoxFit.cover, cacheWidth: 200, gaplessPlayback: true),
          )
        else
          ColoredBox(color: theme.primary.withValues(alpha: 0.4)),
        ColoredBox(color: theme.background.withValues(alpha: 0.85)),
      ],
    );
  }
}

/// Nerd mode: a subtle line of codec / bitrate / sample-rate chips plus
/// the live output route. Renders nothing when the toggle is off or the
/// info hasn't resolved yet.
class _NerdBar extends ConsumerWidget {
  const _NerdBar();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(currentThemeProvider);
    final info = ref.watch(nerdInfoProvider).value;
    if (info == null) return const SizedBox.shrink();

    final chips = <String>[
      // DTS-WAV 显示真实格式（CoreAudio 无 DTS 解码器，native 探测返回 codec="dts"）
      if (info.codec != null)
        (info.codec == 'dts' ? 'DTS Core Audio' : info.codec!),
      // 多声道显示（6→5.1 ch, 8→7.1 ch）；立体声不冗余显示
      if (info.channels != null && info.channels! > 2)
        '${info.channels! - 1}.1 ch',
      if (info.bitsPerSample != null) '${info.bitsPerSample} bit',
      if (info.sampleRateHz != null)
        '${(info.sampleRateHz! / 1000).toStringAsFixed(1)} kHz',
      if (info.bitrateKbps != null) '${info.bitrateKbps} kbps',
    ];
    final output = info.output;
    final outLabel = output == null
        ? null
        : '${_routeGlyph(output.route)} ${output.name ?? output.route}';

    return Padding(
      padding: const EdgeInsets.only(top: Space.s2),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Wrap(
          spacing: Space.s2,
          runSpacing: Space.s1,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            _NerdChip(text: info.sourceLabel, theme: theme, accent: true),
            for (final c in chips) _NerdChip(text: c, theme: theme),
            if (outLabel != null)
              Text(
                outLabel,
                style: AppText.caption(theme).copyWith(
                    fontSize: 11,
                    color: theme.textMuted,
                    letterSpacing: 0.2),
                maxLines: 1,
              ),
          ],
        ),
      ),
    );
  }

  static String _routeGlyph(String route) => switch (route) {
        'Bluetooth' => '🎧',
        'Wired' => '🎙️',
        'USB' => '🔌',
        _ => '🔊',
      };
}

class _NerdChip extends StatelessWidget {
  const _NerdChip(
      {required this.text, required this.theme, this.accent = false});

  final String text;
  final HanamimiTheme theme;
  final bool accent;

  @override
  Widget build(BuildContext context) {
    final color = accent ? theme.primary : theme.textMuted;
    return Container(
      padding:
          const EdgeInsets.symmetric(horizontal: Space.s2, vertical: 1),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(Radii.sm),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Nunito',
          fontSize: 11,
          fontWeight: FontWeight.w700,
          color: color,
          letterSpacing: 0.2,
        ),
      ),
    );
  }
}

class _SeekBarSection extends ConsumerWidget {
  const _SeekBarSection({required this.theme});

  final HanamimiTheme theme;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final position = ref.watch(positionProvider).value ?? Duration.zero;
    final duration =
        ref.watch(audioStateProvider).value?.duration ?? Duration.zero;
    final buffered = ref.watch(bufferedProvider).value ?? Duration.zero;

    return SeekBarWidget(
      position: position,
      duration: duration,
      buffered: buffered,
      theme: theme,
      onSeek: (d) => ref.read(audioHandlerProvider).seek(d),
    );
  }
}

/// Heart with the beat-once pulse (DESIGN.md §7). Particle burst lands
/// with the polish milestone.
class _HeartButton extends ConsumerStatefulWidget {
  const _HeartButton({required this.track, required this.theme});

  final Track track;
  final HanamimiTheme theme;

  @override
  ConsumerState<_HeartButton> createState() => _HeartButtonState();
}

class _HeartButtonState extends ConsumerState<_HeartButton>
    with SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  /// ValueNotifier (no setState) drives the burst animation. The ticker
  /// mutates it; AnimatedBuilder rebuilds only the *CustomPaint* subtree.
  /// The State itself never rebuilds per-frame, so the host widget
  /// (now_playing_screen) can rebuild without colliding with the burst.
  final ValueNotifier<double> _burst = ValueNotifier(0);
  Duration _last = Duration.zero;
  static const _burstDuration = Duration(milliseconds: 350);

  @override
  void initState() {
    super.initState();
    _ticker = createTicker(_tick)..start();
  }

  void _tick(Duration elapsed) {
    final dt = (elapsed - _last).inMicroseconds / 1e6;
    _last = elapsed;
    if (_burst.value > 0) {
      final next = _burst.value + dt / _burstDuration.inMilliseconds * 1000;
      if (next >= 1.0) {
        _burst.value = 0;
      } else {
        _burst.value = next;
      }
    }
  }

  @override
  void dispose() {
    _ticker.dispose();
    _burst.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final liked = widget.track.liked;
    return InkResponse(
      radius: Sizes.minTouchTarget / 2,
      onTap: () {
        if (!liked) {
          // Defer the burst start to the next frame: starting it now would
          // let the Ticker call setState on the State in the same frame as
          // the parent rebuild triggered by toggleLiked (via libraryProvider),
          // tripping `debugNeedsLayout: is not true`.
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (mounted) _burst.value = 0.001;
          });
        }
        ref.read(libraryProvider.notifier).toggleLiked(widget.track);
      },
      child: SizedBox(
        width: Sizes.minTouchTarget,
        height: Sizes.minTouchTarget,
        child: AnimatedBuilder(
          animation: _burst,
          builder: (context, child) => CustomPaint(
            painter: _HeartBurstPainter(
              progress: _burst.value,
              color: widget.theme.accent,
            ),
            child: child,
          ),
          child: AnimatedBuilder(
            animation: _burst,
            builder: (context, child) {
              // Simulated easeOutBack on a 0..1 _burst: overshoot then settle.
              final t = _burst.value;
              final c1 = (1.0 + 2.70158) * t * t * t -
                  (2.70158 + 1.0) * t * t;
              final scale = t < 1.0 ? 1.0 + 0.3 * c1 : 1.0;
              return Transform.scale(
                scale: scale,
                child: child,
              );
            },
            child: Icon(
              liked ? Icons.favorite : Icons.favorite_border,
              size: 24,
              color: liked ? widget.theme.accent : widget.theme.textMuted,
            ),
          ),
        ),
      ),
    );
  }
}

/// 6 tiny accent dots radiating from the heart on like (DESIGN.md §13).
class _HeartBurstPainter extends CustomPainter {
  _HeartBurstPainter({required this.progress, required this.color});

  final double progress;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    if (progress == 0 || progress == 1) return;
    final center = size.center(Offset.zero);
    final paint = Paint()
      ..color = color.withValues(alpha: 1 - progress);
    for (var i = 0; i < 6; i++) {
      final angle = i * math.pi / 3 + 0.3;
      final r = 12 + progress * 14;
      canvas.drawCircle(
        center + Offset(math.cos(angle), math.sin(angle)) * r,
        2 * (1 - progress * 0.5),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(_HeartBurstPainter old) =>
      old.progress != progress;
}
