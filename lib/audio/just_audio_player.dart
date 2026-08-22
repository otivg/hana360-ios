import 'dart:async';

import 'package:just_audio/just_audio.dart' as ja;

import 'player_interface.dart';

/// Converts just_audio's ProcessingState to the interface one. The enum
/// values are identical (idle/loading/buffering/ready/completed), so this
/// is a straight name mapping — kept explicit to avoid Dart's nominal
/// typing on two distinct enum declarations.
ProcessingState _toPi(ja.ProcessingState ps) => switch (ps) {
      ja.ProcessingState.idle => ProcessingState.idle,
      ja.ProcessingState.loading => ProcessingState.loading,
      ja.ProcessingState.buffering => ProcessingState.buffering,
      ja.ProcessingState.ready => ProcessingState.ready,
      ja.ProcessingState.completed => ProcessingState.completed,
    };

/// Android player wrapping the existing just_audio [AudioPlayer]
/// (including the 360 DSP injection via audioPipeline). QueueManager's
/// Android behavior is byte-for-byte the current implementation — this
/// class only adapts the surface to [PlayerInterface].
class JustAudioPlayer implements PlayerInterface {
  JustAudioPlayer({ja.AudioPipeline? pipeline}) {
    _player = ja.AudioPlayer(
      handleInterruptions: false,
      audioPipeline: pipeline ??
          ja.AudioPipeline(androidAudioEffects: [
            ja.CustomAudioProcessorEffect(
                'com.hanamimi.spatial.SpatialAudioProcessorFactory'),
          ]),
    );
    _proxyStreams();
  }

  late final ja.AudioPlayer _player;

  @override
  PlayerState get playerState {
    final ps = _player.playerState;
    return PlayerState(playing: ps.playing, processingState: _toPi(ps.processingState));
  }

  @override
  Duration get position => _player.position;
  @override
  Duration? get duration => _player.duration;
  @override
  bool get playing => _player.playing;
  @override
  ProcessingState get processingState => _toPi(_player.processingState);
  @override
  Duration get bufferedPosition => _player.bufferedPosition;

  // --- Stream proxying ---

  final _volumeCtrl = StreamController<double>.broadcast();

  void _proxyStreams() {
    // volume is set explicitly through setVolume below; the raw
    // just_audio volume stream isn't wired (fades are Dart-driven).
  }

  @override
  Stream<ProcessingState> get processingStateStream =>
      _player.processingStateStream.map(_toPi);
  @override
  Stream<PlayerState> get playerStateStream => _player.playerStateStream
      .map((ps) => PlayerState(playing: ps.playing, processingState: _toPi(ps.processingState)));
  @override
  Stream<Duration?> get durationStream => _player.durationStream;
  @override
  Stream<Duration> get positionStream => _player.positionStream;
  @override
  Stream<int?> get androidAudioSessionIdStream =>
      _player.androidAudioSessionIdStream;
  @override
  Stream<double> get volumeStream => _volumeCtrl.stream;

  // --- Transport ---

  @override
  Future<void> load(String filePath) async {
    if (filePath.startsWith('content://')) {
      await _player.setAudioSource(ja.AudioSource.uri(Uri.parse(filePath)));
    } else {
      await _player.setFilePath(filePath);
    }
  }

  @override
  Future<void> play() => _player.play();
  @override
  Future<void> pause() => _player.pause();
  @override
  Future<void> stop() => _player.stop();
  @override
  Future<void> seek(Duration position) => _player.seek(position);

  @override
  Future<void> setVolume(double volume) async {
    await _player.setVolume(volume);
    _volumeCtrl.add(volume);
  }

  @override
  Future<void> dispose() async {
    await _player.dispose();
    await _volumeCtrl.close();
  }
}
