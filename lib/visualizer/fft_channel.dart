import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

/// Dart side of android/.../FftExtractorChannel.kt — visualizer band
/// frames computed by decoding the audio file (no RECORD_AUDIO).
///
/// iOS has no native implementation yet (M4 work). Until then, calls
/// return silently so the visualizer falls back to silent amplitude =
/// flat line. All native channel errors are swallowed: the visualizer
/// is best-effort and must never crash the player or trigger Flutter
/// rebuild storms in the rendering pipeline (ErrorWidget rebuilds
/// during a normal rebuild race `debugNeedsLayout`).
class FftChannel {
  static const _method = MethodChannel('hanamimi/fft');
  static const _events = EventChannel('hanamimi/fft/frames');

  /// Kicks off (or resumes from cache) extraction for [path]. Frames
  /// arrive on [frames] tagged with [key]; starting a new extraction
  /// cancels the previous one.
  static Future<void> start(String path, String key) async {
    try {
      await _method.invokeMethod('start', {'path': path, 'key': key});
    } on MissingPluginException {
      // iOS has no native FFT extractor yet — silent fallback.
    } on PlatformException {
      // Native side rejected (no audio session, etc.) — ignore.
    } catch (e) {
      debugPrint('[FftChannel.start] swallowed: $e');
    }
  }

  static Future<void> cancel() async {
    try {
      await _method.invokeMethod('cancel');
    } on MissingPluginException {
      // iOS has no native FFT extractor — nothing to cancel.
    } on PlatformException {
      // Already torn down — OK.
    } catch (e) {
      debugPrint('[FftChannel.cancel] swallowed: $e');
    }
  }

  /// Chunks: {key: String, offset: int (frame index), bands: Float64List
  /// (frames × 12, flattened), done: bool}.
  ///
  /// On iOS the receiver gets no frames (no native side); the provider
  /// observes a never-emitting stream and shows the flat-line fallback.
  static Stream<Map> get frames =>
      _events.receiveBroadcastStream().map((e) => e as Map).handleError((e) {
        debugPrint('[FftChannel.frames] stream error (suppressed): $e');
      });
}
