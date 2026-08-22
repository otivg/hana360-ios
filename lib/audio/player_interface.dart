import 'dart:async';

/// M2: Platform-neutral player abstraction (IOS_PORT_DESIGN_360.md §5.7).
///
/// QueueManager depends only on this interface; Android uses
/// [JustAudioPlayer] (wraps the existing just_audio AudioPlayer incl. the
/// 360 DSP injection), iOS uses [IosNativePlayer] (wraps the self-built
/// AVAudioEngine via `hanamimi/ios_engine`).
abstract class PlayerInterface {
  // --- Transport ---
  Future<void> load(String filePath);
  Future<void> play();
  Future<void> pause();
  Future<void> stop();
  Future<void> seek(Duration position);
  Future<void> setVolume(double volume);
  Future<void> dispose();

  // --- State ---
  /// PlayerState: playing flag + processingState (mirrors just_audio).
  PlayerState get playerState;
  Duration get position;
  Duration? get duration;
  bool get playing;
  ProcessingState get processingState;
  /// Buffered amount (Android: real; iOS: mirrors position).
  Duration get bufferedPosition;

  // --- Streams ---
  Stream<ProcessingState> get processingStateStream;
  Stream<PlayerState> get playerStateStream;
  Stream<Duration?> get durationStream;
  Stream<Duration> get positionStream;
  /// Android only; iOS emits null (no-op). Kept for interface parity.
  Stream<int?> get androidAudioSessionIdStream;

  /// Volume ramp support used by crossfade (smoothstep in Dart).
  Stream<double> get volumeStream;
}

/// Mirrors just_audio's ProcessingState.
enum ProcessingState {
  idle,
  loading,
  buffering,
  ready,
  completed,
}

/// Mirrors just_audio's PlayerState (playing + processingState).
class PlayerState {
  const PlayerState({
    required this.playing,
    required this.processingState,
  });
  final bool playing;
  final ProcessingState processingState;

  @override
  String toString() => 'PlayerState(playing: $playing, processing: $processingState)';
}

/// A factory that produces platform-appropriate players.
abstract class PlayerFactory {
  PlayerInterface create();
}
