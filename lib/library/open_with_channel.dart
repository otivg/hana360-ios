import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

/// Dart side of MainActivity's "open with Hanamimi" handling.
///
/// iOS has no native "open with" handler (the Info.plist has no
/// CFBundleDocumentTypes for audio files registered). Until then the
/// calls are silent no-ops: app launches with no pending media, and
/// broadcasts are ignored. Same rationale as FftChannel — never let
/// MissingPluginException surface up the Flutter framework into the
/// render tree (ErrorWidget rebuilds that race the playing-page
/// rebuild fire `debugNeedsLayout: is not true` → red box).
class OpenWithChannel {
  static const _channel = MethodChannel('hanamimi/open_with');

  /// The ACTION_VIEW payload that launched the app, if any — consumed
  /// on read. Keys: uri, path (nullable), title (nullable).
  static Future<Map?> getPendingMedia() async {
    try {
      return await _channel.invokeMethod<Map>('getPendingMedia');
    } on MissingPluginException {
      return null;
    } on PlatformException {
      return null;
    } catch (e) {
      debugPrint('[OpenWithChannel.getPendingMedia] swallowed: $e');
      return null;
    }
  }

  /// Payloads arriving while the app is already running.
  static void setListener(void Function(Map payload) onMedia) {
    try {
      _channel.setMethodCallHandler((call) async {
        if (call.method == 'openMedia') {
          // Validate shape before handing off; the Dart side expects a Map.
          if (call.arguments is Map) {
            try {
              onMedia(call.arguments as Map);
            } catch (e) {
              debugPrint('[OpenWithChannel.setListener] callback threw: $e');
            }
          }
        }
      });
    } catch (e) {
      // iOS has no native "open with" handler — setMethodCallHandler on an
      // unregistered channel throws. Swallow so the page rebuild doesn't
      // surface it as an ErrorWidget mid-frame.
      debugPrint('[OpenWithChannel.setListener] no native side: $e');
    }
  }
}
