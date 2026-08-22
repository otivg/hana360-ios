import 'dart:ui' show Locale, PlatformDispatcher;

import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../l10n/app_localizations.dart';

import 'theme_provider.dart' show sharedPrefsProvider;

/// App 语言选择。持久化键 `app_language` 与 iOS
/// Settings.bundle (设置 → Hana360 → 语言) 共用 NSUserDefaults —
/// SharedPreferences on iOS IS NSUserDefaults, 所以 App 内选择与
/// 系统设置天然双向同步, 无需原生 MethodChannel。
///
/// 取值:
///   [appLanguageFollowSystem] = 'follow' → 跟随系统
///   其他 → 具体语言代码 (zh/en/hi/es/ja/ar/... — 与 ARB locale 及
///          Settings.bundle 的 Values 完全一致)
const appLanguageFollowSystem = 'follow';

/// 语言代码 → 母语显示名 (App 内语言切换列表用; 与 Settings.bundle Titles 一致)。
/// 新增语言时在这里补一行 + 加 ARB 即可, 无需改其他代码。
const languageDisplayNames = <String, String>{
  'zh': '中文',
  'zh_Hant': '繁體中文',
  'en': 'English',
  'hi': 'हिन्दी',
  'es': 'Español',
  'ar': 'العربية',
  'fr': 'Français',
  'bn': 'বাংলা',
  'pt': 'Português',
  'ru': 'Русский',
  'id': 'Bahasa Indonesia',
  'ur': 'اردو',
  'de': 'Deutsch',
  'ja': '日本語',
  // 中华民族语言 (Flutter 内置有翻译, 可正常切换)
  'mn': 'ᠮᠣᠩᠭᠣᠯ 蒙古文',
  'bo': 'བོད་སྐད 藏文',
  'ug': 'ئۇيغۇرچە 维吾尔文',
  'kk': 'Қазақша 哈萨克文',
  'mr': 'मराठी',
  'vi': 'Tiếng Việt',
  'te': 'తెలుగు',
  'tr': 'Türkçe',
  'sw': 'Kiswahili',
  'tl': 'Tagalog',
  'fa': 'فارسی',
  'ko': '한국어',
  'th': 'ไทย',
  'it': 'Italiano',
  'nl': 'Nederlands',
  'pl': 'Polski',
  'sv': 'Svenska',
  'no': 'Norsk',
  'da': 'Dansk',
  'fi': 'Suomi',
  'cs': 'Čeština',
  'hu': 'Magyar',
  'ro': 'Română',
  'sk': 'Slovenčina',
  'hr': 'Hrvatski',
  'sl': 'Slovenščina',
  'uk': 'Українська',
  'el': 'Ελληνικά',
  'he': 'עברית',
  'ca': 'Català',
  'ms': 'Bahasa Melayu',
  'gu': 'ગુજરાતી',
  'kn': 'ಕನ್ನಡ',
  'ml': 'മലയാളം',
  'or': 'ଓଡ଼ିଆ',
  'pa': 'ਪੰਜਾਬੀ',
  'ta': 'தமிழ்',
};

class AppLanguageNotifier extends Notifier<String> {
  static const _key = 'app_language';

  @override
  String build() {
    return ref.watch(sharedPrefsProvider).getString(_key) ??
        appLanguageFollowSystem;
  }

  /// 写入用户选择的语言。**关键**: 用完整 tag 保留 scriptCode
  /// (如 'zh_Hant' 不能丢成 'zh')，否则简体繁体会互窜。
  /// 支持两种调用: set(Locale) 或 set(appLanguageFollowSystem) 字符串。
  void set(Object code) {
    final sp = ref.read(sharedPrefsProvider);
    if (code is Locale) {
      final tag = code.scriptCode != null && code.scriptCode!.isNotEmpty
          ? '${code.languageCode}_${code.scriptCode}'
          : code.languageCode;
      state = tag;
      sp.setString(_key, tag);
    } else if (code == appLanguageFollowSystem) {
      state = appLanguageFollowSystem;
      sp.remove(_key); // 跟随系统 = 清空自定义值
    }
  }

  /// 从 iOS 设置返回时调用: 重新读取 UserDefaults, 让系统设置里的
  /// 语言改动立即生效 (App 在前台时系统设置不会推送)。
  void refresh() {
    state = build();
  }
}

final appLanguageProvider =
    NotifierProvider<AppLanguageNotifier, String>(AppLanguageNotifier.new);

/// 解析后的实际 Locale (供 MaterialApp.locale 使用):
/// - 用户显式选择 → 用所选语言代码 (支持 `zh_Hant` 这类带下划线的 tag)
/// - 跟随系统 → 系统语言在支持列表内则用之, 否则 English
/// **关键**: 返回值**永远**是 `AppLocalizations.supportedLocales` 里的
/// 一项 (safeResolve 兜底), 否则 MaterialApp 会因 unsupported locale
/// 触发异常 → 语言弹层冻结。
final appLocaleProvider = Provider<Locale>((ref) {
  final code = ref.watch(appLanguageProvider);
  final supported = AppLocalizations.supportedLocales;

  // 在 supportedLocales 里找与 target 最接近的 locale; 找不到则 English。
  Locale safeResolve(Locale target) {
    for (final s in supported) {
      if (s.languageCode == target.languageCode &&
          s.scriptCode == target.scriptCode) {
        return s;
      }
    }
    for (final s in supported) {
      if (s.languageCode == target.languageCode) return s;
    }
    return const Locale('en');
  }

  if (code != appLanguageFollowSystem) {
    // 解析 'zh_Hant' / 'zh_CN' 这类带下划线的 tag,
    // 还原 languageCode + scriptCode (否则繁体会丢成简体)
    if (code.contains('_')) {
      final parts = code.split('_');
      return safeResolve(Locale.fromSubtags(
        languageCode: parts[0],
        scriptCode: parts.length > 1 ? parts[1] : null,
      ));
    }
    return safeResolve(Locale(code));
  }
  final sys = PlatformDispatcher.instance.locale;
  final match = supported
      .where((l) => l.languageCode == sys.languageCode)
      .toList();
  if (match.isNotEmpty) {
    // 精确匹配脚本/区域优先 (如 zh_Hant), 否则取首个语言代码匹配
    for (final l in match) {
      if (l.scriptCode == sys.scriptCode) return l;
    }
    return match.first;
  }
  return const Locale('en');
});
