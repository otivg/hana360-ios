import 'dart:async';

import 'package:flutter/services.dart';

import '../library/import_channel.dart';
import 'player_interface.dart';

/// M2: iOS player backed by the self-built AVAudioEngine
/// (`hanamimi/ios_engine` MethodChannel + `hanamimi/ios_engine_events`
/// EventChannel). Mirrors just_audio's surface so QueueManager is
/// unchanged. Crossfade volume ramps go through [setVolume] per call
/// (Dart-side smoothstep timer drives them, same as Android).
class IosNativePlayer implements PlayerInterface {
  IosNativePlayer() {
    _method = const MethodChannel('hanamimi/ios_engine');
    _events = const EventChannel('hanamimi/ios_engine_events');
    _events.receiveBroadcastStream().listen(_onEvent);
    _createPlayer();
  }

  late final MethodChannel _method;
  late final EventChannel _events;

  // --- State mirror ---
  PlayerState _playerState =
      const PlayerState(playing: false, processingState: ProcessingState.idle);
  Duration _position = Duration.zero;
  Duration? _duration;

  // --- Streams ---
  final _processingStateCtrl = StreamController<ProcessingState>.broadcast();
  final _playerStateCtrl = StreamController<PlayerState>.broadcast();
  final _durationCtrl = StreamController<Duration?>.broadcast();
  final _positionCtrl = StreamController<Duration>.broadcast();
  final _volumeCtrl = StreamController<double>.broadcast();

  @override
  PlayerState get playerState => _playerState;
  @override
  Duration get position => _position;
  @override
  Duration? get duration => _duration;
  @override
  bool get playing => _playerState.playing;
  @override
  ProcessingState get processingState => _playerState.processingState;
  @override
  Duration get bufferedPosition => _position; // engine renders up to position

  @override
  Stream<ProcessingState> get processingStateStream =>
      _processingStateCtrl.stream;
  @override
  Stream<PlayerState> get playerStateStream => _playerStateCtrl.stream;
  @override
  Stream<Duration?> get durationStream => _durationCtrl.stream;
  @override
  Stream<Duration> get positionStream => _positionCtrl.stream;
  @override
  Stream<int?> get androidAudioSessionIdStream =>
      const Stream<int?>.empty(); // iOS: no-op
  @override
  Stream<double> get volumeStream => _volumeCtrl.stream;

  Future<void> _createPlayer() async {
    await _method.invokeMethod('createPlayer');
  }

  void _onEvent(dynamic event) {
    if (event is! Map) return;
    final name = event['name'] as String?;
    final value = event['value'];
    switch (name) {
      case 'state':
        final raw = (value as num?)?.toInt() ?? 0;
        _applyProcessingState(ProcessingState.values[raw]);
      case 'position':
        final secs = (value as num?)?.toDouble() ?? 0;
        _position = Duration(milliseconds: (secs * 1000).round());
        _positionCtrl.add(_position);
      case 'duration':
        final secs = (value as num?)?.toDouble() ?? 0;
        _duration = Duration(milliseconds: (secs * 1000).round());
        _durationCtrl.add(_duration);
      case 'completed':
        _applyProcessingState(ProcessingState.completed);
    }
  }

  void _applyProcessingState(ProcessingState ps) {
    final wasCompleted = _playerState.processingState == ProcessingState.completed;
    if (ps == ProcessingState.completed && !wasCompleted) {
      _playerState = PlayerState(playing: false, processingState: ps);
      _processingStateCtrl.add(ps);
      _playerStateCtrl.add(_playerState);
    } else if (ps == ProcessingState.loading) {
      _playerState = PlayerState(playing: false, processingState: ps);
      _processingStateCtrl.add(ps);
      _playerStateCtrl.add(_playerState);
    } else if (ps == ProcessingState.ready) {
      // ready alone doesn't carry the playing flag; the Dart heartbeat
      // drives transitions via play/pause calls below.
    }
  }

  // --- Transport ---

  @override
  Future<void> load(String filePath) async {
    try {
      await _method.invokeMethod('load', {'path': filePath});
    } on PlatformException catch (e) {
      if (e.code == 'no_scope') {
        // The file lives outside the sandbox and the security-scoped grant
        // from the previous session is gone (iOS: picker grants do not
        // survive an app restart — there is no persistent bookmark API on
        // iOS). Re-authorize by asking the user to pick the file again,
        // then resume loading with the fresh grant. If they cancel, fall
        // through to the caller's normal error path.
        final picked = await ImportChannel.pickFiles();
        if (picked != null && picked.isNotEmpty) {
          final uri = picked.first['uri'] as String?;
          if (uri != null && uri.isNotEmpty) {
            await _method.invokeMethod('load', {'path': uri});
            _applyProcessingState(ProcessingState.loading);
            return;
          }
        }
      }
      rethrow;
    }
    _applyProcessingState(ProcessingState.loading);
  }

  @override
  Future<void> play() async {
    await _method.invokeMethod('play');
    _playerState = PlayerState(playing: true, processingState: ProcessingState.ready);
    _playerStateCtrl.add(_playerState);
    _processingStateCtrl.add(ProcessingState.ready);
  }

  @override
  Future<void> pause() async {
    await _method.invokeMethod('pause');
    _playerState = PlayerState(playing: false, processingState: ProcessingState.ready);
    _playerStateCtrl.add(_playerState);
  }

  @override
  Future<void> stop() async {
    await _method.invokeMethod('stop');
    _playerState =
        const PlayerState(playing: false, processingState: ProcessingState.idle);
    _processingStateCtrl.add(ProcessingState.idle);
    _playerStateCtrl.add(_playerState);
  }

  @override
  Future<void> seek(Duration position) async {
    await _method.invokeMethod('seek', {
      'position': position.inMilliseconds / 1000.0,
    });
  }

  @override
  Future<void> setVolume(double volume) async {
    await _method.invokeMethod('setVolume', {'volume': volume});
    _volumeCtrl.add(volume);
  }

  @override
  Future<void> dispose() async {
    try {
      await _method.invokeMethod('disposePlayer');
    } catch (_) {}
    await _processingStateCtrl.close();
    await _playerStateCtrl.close();
    await _durationCtrl.close();
    await _positionCtrl.close();
    await _volumeCtrl.close();
  }
}
