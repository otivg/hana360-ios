import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../../../library/models/track.dart';
import '../../../theme/hanamimi_theme.dart';
import '../../../theme/theme_tokens.dart';
import '../library/art_thumb.dart';

/// Full-size album art: soft primary ambient shadow, gentle cross-dissolve
/// on track change, and the idle ±1° wobble while playing (DESIGN.md §8).
class AlbumArtWidget extends StatefulWidget {
  const AlbumArtWidget({
    super.key,
    required this.track,
    required this.theme,
    required this.isPlaying,
    required this.size,
  });

  final Track track;
  final HanamimiTheme theme;
  final bool isPlaying;
  final double size;

  @override
  State<AlbumArtWidget> createState() => _AlbumArtWidgetState();
}

class _AlbumArtWidgetState extends State<AlbumArtWidget>
    with SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  /// ValueNotifier drives the wobble independently of widget rebuild. The
  /// ticker mutates it (no setState), AnimatedBuilder rebuilds only the
  /// Transform.rotate subtree — *never* the AlbumArtWidget itself. This
  /// isolates the per-frame wobble from the parent LayoutBuilder / Spacer
  /// reflow that re-runs after a provider change (e.g. toggleLiked), where
  /// a concurrent setState during a layout pass trips
  /// "debugNeedsLayout: is not true".
  final ValueNotifier<double> _phase = ValueNotifier(0);
  double _amplitude = 0; // 0..1, eases in/out with play state
  Duration _last = Duration.zero;

  @override
  void initState() {
    super.initState();
    _ticker = createTicker(_tick)..start();
  }

  void _tick(Duration elapsed) {
    final dt = (elapsed - _last).inMicroseconds / 1e6;
    _last = elapsed;
    final target = widget.isPlaying ? 1.0 : 0.0;
    final speed = widget.isPlaying ? 2.0 : 1.7; // ~600ms ease to rest
    _amplitude = (_amplitude + (target - _amplitude) * dt * speed)
        .clamp(0.0, 1.0);
    final needPaint = _amplitude > 0.001 || _phase.value != 0;
    if (needPaint) {
      _phase.value += dt;
    } else if (_phase.value != 0) {
      _phase.value = 0;
    }
  }

  @override
  void dispose() {
    _ticker.dispose();
    _phase.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final angle = math.sin(_phase.value * 2 * math.pi / 4) *
        _amplitude *
        (math.pi / 180);

    return AnimatedBuilder(
      animation: _phase,
      builder: (context, _) => Transform.rotate(
        angle: angle,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Radii.lg),
            boxShadow: [
              BoxShadow(
                color: widget.theme.primary.withValues(alpha: 0.3),
                blurRadius: 24,
              ),
            ],
          ),
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            switchInCurve: Curves.easeOut,
            switchOutCurve: Curves.easeIn,
            transitionBuilder: (child, anim) => FadeTransition(
              opacity: anim,
              child: ScaleTransition(
                scale: Tween(begin: 0.95, end: 1.0).animate(anim),
                child: child,
              ),
            ),
            child: ArtThumb(
              key: ValueKey(widget.track.id),
              title: widget.track.album,
              artPath: widget.track.albumArtPath,
              size: widget.size,
              radius: Radii.lg,
            ),
          ),
        ),
      ),
    );
  }
}
