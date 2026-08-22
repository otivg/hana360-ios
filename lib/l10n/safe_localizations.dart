import 'dart:async';

import 'package:flutter/cupertino.dart' show CupertinoLocalizations;
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

/// 安全本地化委托 — 修复少数民族/方言语言切换后 App 冻结问题。
///
/// 根因: Flutter 内置的 GlobalMaterialLocalizations / GlobalCupertinoLocalizations /
/// GlobalWidgetsLocalizations 只支持有限语言列表。当 App locale 设为它们不支持的
/// 语言 (ii 彝文 / hmd 苗文 / sjo 锡伯 / za 壮文 / tdd 傣文 / nbf 纳西 /
/// pcm 皮钦 / wuu 吴语 / yue 粤语), 其 load() 内部 `getMaterialTranslation(locale)!`
/// 返回 null → 空断言抛异常 → Localizations 加载失败 → App 冻结
/// (release 模式下 assert(isSupported) 被编译器跳过, 无兜底)。
///
/// 修复: 对内置不支持的语言回退 English, 保证 load() 永不抛异常;
/// 自定义 AppLocalizations (36 语言) 仍用真实 locale 正常翻译, 不受影响。
class SafeMaterialLocalizationsDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const SafeMaterialLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<MaterialLocalizations> load(Locale locale) {
    final Locale target = GlobalMaterialLocalizations.delegate.isSupported(locale)
        ? locale
        : const Locale('en');
    return GlobalMaterialLocalizations.delegate.load(target);
  }

  @override
  bool shouldReload(SafeMaterialLocalizationsDelegate old) => false;
}

class SafeCupertinoLocalizationsDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const SafeCupertinoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<CupertinoLocalizations> load(Locale locale) {
    final Locale target =
        GlobalCupertinoLocalizations.delegate.isSupported(locale)
            ? locale
            : const Locale('en');
    return GlobalCupertinoLocalizations.delegate.load(target);
  }

  @override
  bool shouldReload(SafeCupertinoLocalizationsDelegate old) => false;
}

class SafeWidgetsLocalizationsDelegate
    extends LocalizationsDelegate<WidgetsLocalizations> {
  const SafeWidgetsLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<WidgetsLocalizations> load(Locale locale) {
    final Locale target = GlobalWidgetsLocalizations.delegate.isSupported(locale)
        ? locale
        : const Locale('en');
    return GlobalWidgetsLocalizations.delegate.load(target);
  }

  @override
  bool shouldReload(SafeWidgetsLocalizationsDelegate old) => false;
}

/// 替换 AppLocalizations.localizationsDelegates 里的内置委托 (Material/Cupertino/
/// Widgets), 让内置不支持的语言回退 English 而不是抛异常导致 App 冻结。
const List<LocalizationsDelegate<dynamic>> safeBuiltInLocalizationsDelegates =
    <LocalizationsDelegate<dynamic>>[
      SafeMaterialLocalizationsDelegate(),
      SafeCupertinoLocalizationsDelegate(),
      SafeWidgetsLocalizationsDelegate(),
    ];
