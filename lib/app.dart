import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'l10n/app_localizations.dart';
import 'l10n/safe_localizations.dart';

import 'providers/app_language_provider.dart';
import 'providers/audio_provider.dart';
import 'providers/companion_provider.dart';
import 'providers/open_with_provider.dart';
import 'providers/reco_provider.dart';
import 'providers/session_provider.dart';
import 'providers/settings_provider.dart';
import 'providers/theme_provider.dart';
import 'reco/play_tracker.dart';
import 'theme/app_theme.dart';
import 'theme/theme_tokens.dart';
import 'ui/app_shell.dart';
import 'ui/handheld_scroll_behavior.dart';
import 'ui/theme_animator.dart';

class HanamimiApp extends ConsumerStatefulWidget {
  const HanamimiApp({super.key});

  @override
  ConsumerState<HanamimiApp> createState() => _HanamimiAppState();
}

class _HanamimiAppState extends ConsumerState<HanamimiApp>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // 从 iOS「设置 → Hana360 → 语言」返回时重新读取 UserDefaults,
    // 让系统设置里的语言切换立即生效 (系统设置在前台不会推送)。
    if (state == AppLifecycleState.resumed) {
      ref.read(appLanguageProvider.notifier).refresh();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(currentThemeProvider);
    final locale = ref.watch(appLocaleProvider);
    ref.watch(playCountRecorderProvider);
    ref.watch(playSequenceTrackerProvider); // M38a co-play/skip logging
    ref.watch(smartShufflePusherProvider); // M38c weighted shuffle
    ref.watch(crossfadeProvider); // pushes the setting into the engine
    ref.watch(listenTimeProvider); // accumulates while playing
    ref.watch(openWithProvider); // handles "open with Hanamimi" intents
    ref.watch(sessionPersistenceProvider); // saves what's playing for resume

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness:
          theme.isDark ? Brightness.light : Brightness.dark,
      systemNavigationBarColor: theme.surface,
      systemNavigationBarIconBrightness:
          theme.isDark ? Brightness.light : Brightness.dark,
    ));

    return MaterialApp(
      title: 'Hana360',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.from(theme),
      // 4.0.23+: 多语言 (中文/English, 可在 iOS 设置 → Hana360 或 App 内切换;
      // P2.4: supportedLocales 由 gen-l10n 自动派生, 新增语言只加 ARB 即可)
      locale: locale,
      supportedLocales: AppLocalizations.supportedLocales,
      // 4.0.31: 用安全委托替代 AppLocalizations.localizationsDelegates 里的内置
      // Material/Cupertino/Widgets 委托 — 对内置不支持的语言 (ii/hmd/sjo/za/tdd/
      // nbf/pcm/wuu/yue 等) 回退 English, 避免 getMaterialTranslation(...)! 抛空断言
      // 导致 App 冻结。自定义 AppLocalizations 仍用真实 locale 正常翻译。
      localizationsDelegates: <LocalizationsDelegate<dynamic>>[
        AppLocalizations.delegate,
        ...safeBuiltInLocalizationsDelegates,
      ],
      // 4.0.29: 兜底 — locale 解析到 supportedLocales 内最接近项,
      // 防止 unsupported locale 导致 UI 冻结 (appLocaleProvider 已
      // safeResolve, 此处是最后一道保险)。
      localeResolutionCallback: (deviceLocale, supportedLocales) {
        if (deviceLocale == null) return supportedLocales.first;
        for (final s in supportedLocales) {
          if (s.languageCode == deviceLocale.languageCode &&
              s.scriptCode == deviceLocale.scriptCode) {
            return s;
          }
        }
        for (final s in supportedLocales) {
          if (s.languageCode == deviceLocale.languageCode) return s;
        }
        return supportedLocales.first;
      },
      // Finger/stylus drag-scroll for handheld touchscreens.
      scrollBehavior: const HandheldScrollBehavior(),
      home: AnimatedTheme(
        data: AppTheme.from(theme),
        duration: Anim.themeCrossfade,
        child: const ThemeAnimator(child: AppShell()),
      ),
    );
  }
}
