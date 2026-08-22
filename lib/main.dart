import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app.dart';
import 'audio/audio_handler.dart';
import 'audio/queue_manager.dart';
import 'providers/audio_provider.dart';
import 'providers/theme_provider.dart';
import 'ui/screens/three60_splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();

  final audioHandler = await AudioService.init(
    builder: () => HanamimiAudioHandler(QueueManager()),
    config: const AudioServiceConfig(
      androidNotificationChannelId: 'com.hanamimi.app.channel.audio',
      androidNotificationChannelName: 'Hana360 playback',
      androidNotificationOngoing: true,
      androidStopForegroundOnPause: true,
      androidNotificationIcon: 'drawable/ic_stat_hanamimi',
    ),
  );

  runApp(ProviderScope(
    overrides: [
      sharedPrefsProvider.overrideWithValue(prefs),
      audioHandlerProvider.overrideWithValue(audioHandler),
    ],
    child: const _SplashGate(),
  ));
}

class _SplashGate extends StatefulWidget {
  const _SplashGate();
  @override
  State<_SplashGate> createState() => _SplashGateState();
}

class _SplashGateState extends State<_SplashGate> {
  bool _showSplash = true;
  @override
  Widget build(BuildContext context) {
    if (_showSplash) {
      return Directionality(
        textDirection: TextDirection.ltr,
        child: T360Splash(onEnter: _onEnter),
      );
    }
    return const HanamimiApp();
  }

  void _onEnter() => setState(() => _showSplash = false);
}
