import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_bo.dart';
import 'app_localizations_ca.dart';
import 'app_localizations_cs.dart';
import 'app_localizations_da.dart';
import 'app_localizations_de.dart';
import 'app_localizations_el.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_fi.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_he.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_hr.dart';
import 'app_localizations_hu.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_kk.dart';
import 'app_localizations_kn.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_mn.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_no.dart';
import 'app_localizations_or.dart';
import 'app_localizations_pa.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ro.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_sk.dart';
import 'app_localizations_sl.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_sw.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tl.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_ug.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('bn'),
    Locale('bo'),
    Locale('ca'),
    Locale('cs'),
    Locale('da'),
    Locale('de'),
    Locale('el'),
    Locale('en'),
    Locale('es'),
    Locale('fa'),
    Locale('fi'),
    Locale('fr'),
    Locale('gu'),
    Locale('he'),
    Locale('hi'),
    Locale('hr'),
    Locale('hu'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('kk'),
    Locale('kn'),
    Locale('ko'),
    Locale('ml'),
    Locale('mn'),
    Locale('mr'),
    Locale('ms'),
    Locale('nl'),
    Locale('no'),
    Locale('or'),
    Locale('pa'),
    Locale('pl'),
    Locale('pt'),
    Locale('ro'),
    Locale('ru'),
    Locale('sk'),
    Locale('sl'),
    Locale('sv'),
    Locale('sw'),
    Locale('ta'),
    Locale('te'),
    Locale('th'),
    Locale('tl'),
    Locale('tr'),
    Locale('ug'),
    Locale('uk'),
    Locale('ur'),
    Locale('vi'),
    Locale('zh'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
  ];

  /// App display name
  ///
  /// In zh, this message translates to:
  /// **'Hana360'**
  String get appName;

  /// Settings section: language
  ///
  /// In zh, this message translates to:
  /// **'语言'**
  String get languageSettings;

  /// Follow system language option
  ///
  /// In zh, this message translates to:
  /// **'跟随系统'**
  String get languageFollowSystem;

  /// Chinese option
  ///
  /// In zh, this message translates to:
  /// **'中文'**
  String get languageChinese;

  /// English option
  ///
  /// In zh, this message translates to:
  /// **'English'**
  String get languageEnglish;

  /// Splash entry button
  ///
  /// In zh, this message translates to:
  /// **'Baseus × Hanamimi'**
  String get splashEnter;

  /// Common: cancel
  ///
  /// In zh, this message translates to:
  /// **'取消'**
  String get commonCancel;

  /// Common: confirm
  ///
  /// In zh, this message translates to:
  /// **'确定'**
  String get commonConfirm;

  /// Common: back
  ///
  /// In zh, this message translates to:
  /// **'返回'**
  String get commonBack;

  /// Common: done
  ///
  /// In zh, this message translates to:
  /// **'完成'**
  String get commonDone;

  /// Common: unknown
  ///
  /// In zh, this message translates to:
  /// **'未知'**
  String get commonUnknown;

  /// No description provided for @secUpmix.
  ///
  /// In zh, this message translates to:
  /// **'上混引擎'**
  String get secUpmix;

  /// No description provided for @spatialAudioTitle.
  ///
  /// In zh, this message translates to:
  /// **'360 空间音效'**
  String get spatialAudioTitle;

  /// No description provided for @npNothingPlaying.
  ///
  /// In zh, this message translates to:
  /// **'暂无播放'**
  String get npNothingPlaying;

  /// No description provided for @npPickSong.
  ///
  /// In zh, this message translates to:
  /// **'从资料库选择歌曲'**
  String get npPickSong;

  /// No description provided for @npSpatialSettings.
  ///
  /// In zh, this message translates to:
  /// **'360 设置'**
  String get npSpatialSettings;

  /// No description provided for @npLyrics.
  ///
  /// In zh, this message translates to:
  /// **'Lyrics'**
  String get npLyrics;

  /// No description provided for @libSearchHint.
  ///
  /// In zh, this message translates to:
  /// **'搜索你的音乐…'**
  String get libSearchHint;

  /// No description provided for @libClearLibrary.
  ///
  /// In zh, this message translates to:
  /// **'清空列表'**
  String get libClearLibrary;

  /// No description provided for @libImportMusic.
  ///
  /// In zh, this message translates to:
  /// **'导入音乐'**
  String get libImportMusic;

  /// No description provided for @libError.
  ///
  /// In zh, this message translates to:
  /// **'出错了: {error}'**
  String libError(String error);

  /// No description provided for @libNoMatch.
  ///
  /// In zh, this message translates to:
  /// **'没有匹配 \"{query}\" 的结果'**
  String libNoMatch(String query);

  /// No description provided for @libPermissionDenied.
  ///
  /// In zh, this message translates to:
  /// **'Hana360 需要权限来查找你的音乐\n设备无访问权限？改用导入。'**
  String get libPermissionDenied;

  /// No description provided for @libNoSongs.
  ///
  /// In zh, this message translates to:
  /// **'设备上没有找到歌曲\n从文件导入音乐即可开始'**
  String get libNoSongs;

  /// No description provided for @libGrantAccess.
  ///
  /// In zh, this message translates to:
  /// **'授予权限'**
  String get libGrantAccess;

  /// No description provided for @libRescan.
  ///
  /// In zh, this message translates to:
  /// **'重新扫描'**
  String get libRescan;

  /// No description provided for @libAddedToQueue.
  ///
  /// In zh, this message translates to:
  /// **'已加入队列'**
  String get libAddedToQueue;

  /// No description provided for @libNoAlbums.
  ///
  /// In zh, this message translates to:
  /// **'还没有专辑'**
  String get libNoAlbums;

  /// No description provided for @libNoFolders.
  ///
  /// In zh, this message translates to:
  /// **'还没有文件夹'**
  String get libNoFolders;

  /// No description provided for @libNoPlaylists.
  ///
  /// In zh, this message translates to:
  /// **'还没有播放列表'**
  String get libNoPlaylists;

  /// No description provided for @libPlaylistCreated.
  ///
  /// In zh, this message translates to:
  /// **'播放列表 \"{name}\" 已创建 🌸'**
  String libPlaylistCreated(String name);

  /// No description provided for @libFolderHint.
  ///
  /// In zh, this message translates to:
  /// **'长按文件夹可转为播放列表'**
  String get libFolderHint;

  /// No description provided for @libSongCount.
  ///
  /// In zh, this message translates to:
  /// **'{count} 首歌曲'**
  String libSongCount(int count);

  /// No description provided for @libSongCountPath.
  ///
  /// In zh, this message translates to:
  /// **'{count} 首歌曲 · {path}'**
  String libSongCountPath(int count, String path);

  /// No description provided for @homeGreetingLate.
  ///
  /// In zh, this message translates to:
  /// **'夜深了 ♪'**
  String get homeGreetingLate;

  /// No description provided for @homeGreetingMorning.
  ///
  /// In zh, this message translates to:
  /// **'早上好 ♪'**
  String get homeGreetingMorning;

  /// No description provided for @homeGreetingAfternoon.
  ///
  /// In zh, this message translates to:
  /// **'下午好 ♪'**
  String get homeGreetingAfternoon;

  /// No description provided for @homeGreetingEvening.
  ///
  /// In zh, this message translates to:
  /// **'晚上好 ♪'**
  String get homeGreetingEvening;

  /// No description provided for @homeJumpBackIn.
  ///
  /// In zh, this message translates to:
  /// **'继续收听'**
  String get homeJumpBackIn;

  /// No description provided for @homeForYou.
  ///
  /// In zh, this message translates to:
  /// **'为你推荐'**
  String get homeForYou;

  /// No description provided for @homeForYouSub.
  ///
  /// In zh, this message translates to:
  /// **'基于你的收听，在本机为你挑选'**
  String get homeForYouSub;

  /// No description provided for @homeWelcome.
  ///
  /// In zh, this message translates to:
  /// **'欢迎来到 Hana360 🌸'**
  String get homeWelcome;

  /// No description provided for @homeAllQuiet.
  ///
  /// In zh, this message translates to:
  /// **'一切安静 🌸'**
  String get homeAllQuiet;

  /// No description provided for @homeLibraryHint.
  ///
  /// In zh, this message translates to:
  /// **'你的音乐在「资料库」标签页 — 在那里添加文件夹。播放过的音乐都会汇集在这里。'**
  String get homeLibraryHint;

  /// No description provided for @homePlayHint.
  ///
  /// In zh, this message translates to:
  /// **'播放一首歌，下次它会在这里等你。'**
  String get homePlayHint;

  /// No description provided for @youRescanLibrary.
  ///
  /// In zh, this message translates to:
  /// **'重新扫描库'**
  String get youRescanLibrary;

  /// No description provided for @youExcludedFolders.
  ///
  /// In zh, this message translates to:
  /// **'排除的文件夹'**
  String get youExcludedFolders;

  /// No description provided for @youExcludedFoldersSub.
  ///
  /// In zh, this message translates to:
  /// **'从资料库中隐藏文件夹'**
  String get youExcludedFoldersSub;

  /// No description provided for @youCatMode.
  ///
  /// In zh, this message translates to:
  /// **'猫咪模式'**
  String get youCatMode;

  /// No description provided for @youAbout.
  ///
  /// In zh, this message translates to:
  /// **'关于'**
  String get youAbout;

  /// No description provided for @youScanning.
  ///
  /// In zh, this message translates to:
  /// **'正在扫描你的音乐…'**
  String get youScanning;

  /// No description provided for @youOpenSource.
  ///
  /// In zh, this message translates to:
  /// **'开源声明'**
  String get youOpenSource;

  /// No description provided for @youOpenSourceSub.
  ///
  /// In zh, this message translates to:
  /// **'Hana360 是 Hanamimi (GPLv3) by ShaptakNaskar 的衍生作品 — 修改于 2026-08-10'**
  String get youOpenSourceSub;

  /// No description provided for @youCheckUpdates.
  ///
  /// In zh, this message translates to:
  /// **'检查更新'**
  String get youCheckUpdates;

  /// No description provided for @youCheckUpdatesSub.
  ///
  /// In zh, this message translates to:
  /// **'新版本发布在 GitHub Releases'**
  String get youCheckUpdatesSub;

  /// No description provided for @youUpToDate.
  ///
  /// In zh, this message translates to:
  /// **'已是最新版本 🐾'**
  String get youUpToDate;

  /// No description provided for @youGithub.
  ///
  /// In zh, this message translates to:
  /// **'GitHub'**
  String get youGithub;

  /// No description provided for @youGithubSub.
  ///
  /// In zh, this message translates to:
  /// **'github.com/ShaptakNaskar'**
  String get youGithubSub;

  /// No description provided for @youMadeBy.
  ///
  /// In zh, this message translates to:
  /// **'Made by Sappy'**
  String get youMadeBy;

  /// No description provided for @youMadeBySub.
  ///
  /// In zh, this message translates to:
  /// **'sappy-dir.vercel.app'**
  String get youMadeBySub;

  /// No description provided for @youKeepPlaying.
  ///
  /// In zh, this message translates to:
  /// **'后台保持播放'**
  String get youKeepPlaying;

  /// No description provided for @youKeepPlayingAllowed.
  ///
  /// In zh, this message translates to:
  /// **'已允许 — 系统不会暂停你的音乐'**
  String get youKeepPlayingAllowed;

  /// No description provided for @youKeepPlayingTap.
  ///
  /// In zh, this message translates to:
  /// **'点击停止系统终止播放'**
  String get youKeepPlayingTap;

  /// No description provided for @youExcludedFoldersTitle.
  ///
  /// In zh, this message translates to:
  /// **'排除的文件夹'**
  String get youExcludedFoldersTitle;

  /// No description provided for @youExcludedFoldersDesc.
  ///
  /// In zh, this message translates to:
  /// **'已关闭文件夹中的歌曲将从资料库移除'**
  String get youExcludedFoldersDesc;

  /// No description provided for @youVisSensitivity.
  ///
  /// In zh, this message translates to:
  /// **'可视化灵敏度'**
  String get youVisSensitivity;

  /// No description provided for @youVisSensitivitySub.
  ///
  /// In zh, this message translates to:
  /// **'歌曲动感弱时调高'**
  String get youVisSensitivitySub;

  /// No description provided for @youNerdMode.
  ///
  /// In zh, this message translates to:
  /// **'极客模式'**
  String get youNerdMode;

  /// No description provided for @youNerdModeSub.
  ///
  /// In zh, this message translates to:
  /// **'在播放页显示编码、码率与音频输出'**
  String get youNerdModeSub;

  /// No description provided for @youEqualizer.
  ///
  /// In zh, this message translates to:
  /// **'均衡器'**
  String get youEqualizer;

  /// No description provided for @youComingSoon.
  ///
  /// In zh, this message translates to:
  /// **'即将推出'**
  String get youComingSoon;

  /// No description provided for @sleepTimer.
  ///
  /// In zh, this message translates to:
  /// **'睡眠定时器'**
  String get sleepTimer;

  /// No description provided for @sleep15.
  ///
  /// In zh, this message translates to:
  /// **'15 分钟'**
  String get sleep15;

  /// No description provided for @sleep30.
  ///
  /// In zh, this message translates to:
  /// **'30 分钟'**
  String get sleep30;

  /// No description provided for @sleep1h.
  ///
  /// In zh, this message translates to:
  /// **'1 小时'**
  String get sleep1h;

  /// No description provided for @sleepEndTrack.
  ///
  /// In zh, this message translates to:
  /// **'歌曲结束时'**
  String get sleepEndTrack;

  /// No description provided for @sleepFading.
  ///
  /// In zh, this message translates to:
  /// **'淡出中…好梦'**
  String get sleepFading;

  /// No description provided for @sleepIn.
  ///
  /// In zh, this message translates to:
  /// **'{time} 后入睡'**
  String sleepIn(String time);

  /// No description provided for @sleepEndTrackActive.
  ///
  /// In zh, this message translates to:
  /// **'歌曲结束时入睡'**
  String get sleepEndTrackActive;

  /// No description provided for @sleepCancel.
  ///
  /// In zh, this message translates to:
  /// **'取消定时'**
  String get sleepCancel;

  /// No description provided for @queueUpNext.
  ///
  /// In zh, this message translates to:
  /// **'接下来播放'**
  String get queueUpNext;

  /// No description provided for @queueEmpty.
  ///
  /// In zh, this message translates to:
  /// **'队列为空'**
  String get queueEmpty;

  /// No description provided for @updateAvailable.
  ///
  /// In zh, this message translates to:
  /// **'发现新版本 ✨'**
  String get updateAvailable;

  /// No description provided for @updateNoNotes.
  ///
  /// In zh, this message translates to:
  /// **'没有发布说明。'**
  String get updateNoNotes;

  /// No description provided for @updateInstalling.
  ///
  /// In zh, this message translates to:
  /// **'正在打开安装器…'**
  String get updateInstalling;

  /// No description provided for @updateFailed.
  ///
  /// In zh, this message translates to:
  /// **'更新失败 — 请稍后重试'**
  String get updateFailed;

  /// No description provided for @updateLater.
  ///
  /// In zh, this message translates to:
  /// **'稍后'**
  String get updateLater;

  /// No description provided for @updateRetry.
  ///
  /// In zh, this message translates to:
  /// **'重试'**
  String get updateRetry;

  /// No description provided for @updateNow.
  ///
  /// In zh, this message translates to:
  /// **'更新'**
  String get updateNow;

  /// No description provided for @spatialToggleTitle.
  ///
  /// In zh, this message translates to:
  /// **'360 空间音效'**
  String get spatialToggleTitle;

  /// No description provided for @spatialOn.
  ///
  /// In zh, this message translates to:
  /// **'已开启'**
  String get spatialOn;

  /// No description provided for @spatialOff.
  ///
  /// In zh, this message translates to:
  /// **'已关闭'**
  String get spatialOff;

  /// No description provided for @lyricsNoFound.
  ///
  /// In zh, this message translates to:
  /// **'未找到歌词'**
  String get lyricsNoFound;

  /// No description provided for @lyricsJustListening.
  ///
  /// In zh, this message translates to:
  /// **'这首歌只适合静静聆听'**
  String get lyricsJustListening;

  /// No description provided for @lyricsTrySource.
  ///
  /// In zh, this message translates to:
  /// **'尝试其他来源'**
  String get lyricsTrySource;

  /// No description provided for @lyricsSource.
  ///
  /// In zh, this message translates to:
  /// **'歌词来源'**
  String get lyricsSource;

  /// No description provided for @lyricsWordSynced.
  ///
  /// In zh, this message translates to:
  /// **'逐词同步'**
  String get lyricsWordSynced;

  /// No description provided for @lyricsLineSynced.
  ///
  /// In zh, this message translates to:
  /// **'逐行同步'**
  String get lyricsLineSynced;

  /// No description provided for @lyricsUnsynced.
  ///
  /// In zh, this message translates to:
  /// **'未同步'**
  String get lyricsUnsynced;

  /// No description provided for @plNoPlaylists.
  ///
  /// In zh, this message translates to:
  /// **'还没有播放列表 — 先创建一个吧！'**
  String get plNoPlaylists;

  /// No description provided for @plAddToPlaylist.
  ///
  /// In zh, this message translates to:
  /// **'添加到播放列表'**
  String get plAddToPlaylist;

  /// No description provided for @plAddedTo.
  ///
  /// In zh, this message translates to:
  /// **'已添加到 {name}'**
  String plAddedTo(String name);

  /// No description provided for @shareLyrics.
  ///
  /// In zh, this message translates to:
  /// **'分享歌词'**
  String get shareLyrics;

  /// No description provided for @shareMaxLines.
  ///
  /// In zh, this message translates to:
  /// **'已达最大行数'**
  String get shareMaxLines;

  /// No description provided for @sharePickLines.
  ///
  /// In zh, this message translates to:
  /// **'最多选择 {count} 行'**
  String sharePickLines(int count);

  /// No description provided for @sharePickHint.
  ///
  /// In zh, this message translates to:
  /// **'在下方选择一些歌词…'**
  String get sharePickHint;

  /// No description provided for @shareButton.
  ///
  /// In zh, this message translates to:
  /// **'分享'**
  String get shareButton;

  /// No description provided for @batTitle.
  ///
  /// In zh, this message translates to:
  /// **'让音乐继续播放 🎵'**
  String get batTitle;

  /// No description provided for @batBody.
  ///
  /// In zh, this message translates to:
  /// **'Android 的电池优化可能会在屏幕关闭时暂停你的音乐。允许 Hana360 不受限制运行，播放才能保持稳定。\n\n你随时可以在「You → 后台保持播放」中更改此设置。'**
  String get batBody;

  /// No description provided for @batNotNow.
  ///
  /// In zh, this message translates to:
  /// **'稍后'**
  String get batNotNow;

  /// No description provided for @batAllow.
  ///
  /// In zh, this message translates to:
  /// **'允许'**
  String get batAllow;

  /// No description provided for @algoSwitch.
  ///
  /// In zh, this message translates to:
  /// **'算法开关'**
  String get algoSwitch;

  /// No description provided for @speakerDistance.
  ///
  /// In zh, this message translates to:
  /// **'音箱距离'**
  String get speakerDistance;

  /// No description provided for @channelTrim.
  ///
  /// In zh, this message translates to:
  /// **'通道补偿'**
  String get channelTrim;

  /// No description provided for @masterGain.
  ///
  /// In zh, this message translates to:
  /// **'主增益'**
  String get masterGain;

  /// No description provided for @secHrtf.
  ///
  /// In zh, this message translates to:
  /// **'HRTF 个性化'**
  String get secHrtf;

  /// No description provided for @outputGain.
  ///
  /// In zh, this message translates to:
  /// **'输出增益'**
  String get outputGain;

  /// No description provided for @secEq.
  ///
  /// In zh, this message translates to:
  /// **'空间 EQ'**
  String get secEq;

  /// No description provided for @secReverb.
  ///
  /// In zh, this message translates to:
  /// **'混响'**
  String get secReverb;

  /// No description provided for @roomSize.
  ///
  /// In zh, this message translates to:
  /// **'房间'**
  String get roomSize;

  /// No description provided for @reverbGain.
  ///
  /// In zh, this message translates to:
  /// **'混响增益'**
  String get reverbGain;

  /// No description provided for @secTracking.
  ///
  /// In zh, this message translates to:
  /// **'头部追踪'**
  String get secTracking;

  /// No description provided for @trackOff.
  ///
  /// In zh, this message translates to:
  /// **'关闭'**
  String get trackOff;

  /// No description provided for @trackSensor.
  ///
  /// In zh, this message translates to:
  /// **'手机传感器'**
  String get trackSensor;

  /// No description provided for @trackManual.
  ///
  /// In zh, this message translates to:
  /// **'手动 XY'**
  String get trackManual;

  /// No description provided for @dragHint.
  ///
  /// In zh, this message translates to:
  /// **'拖动调节头部朝向 (声场随之转动)'**
  String get dragHint;

  /// No description provided for @customEq.
  ///
  /// In zh, this message translates to:
  /// **'自定义'**
  String get customEq;

  /// No description provided for @eqPresetMusic.
  ///
  /// In zh, this message translates to:
  /// **'音乐'**
  String get eqPresetMusic;

  /// No description provided for @eqPresetCinema.
  ///
  /// In zh, this message translates to:
  /// **'影院'**
  String get eqPresetCinema;

  /// No description provided for @eqPresetGame.
  ///
  /// In zh, this message translates to:
  /// **'游戏'**
  String get eqPresetGame;

  /// No description provided for @eqPresetVoice.
  ///
  /// In zh, this message translates to:
  /// **'人声'**
  String get eqPresetVoice;

  /// No description provided for @hrtfGroup0.
  ///
  /// In zh, this message translates to:
  /// **'男·小头·小耳'**
  String get hrtfGroup0;

  /// No description provided for @hrtfGroup1.
  ///
  /// In zh, this message translates to:
  /// **'男·小头·中耳'**
  String get hrtfGroup1;

  /// No description provided for @hrtfGroup2.
  ///
  /// In zh, this message translates to:
  /// **'男·小头·大耳'**
  String get hrtfGroup2;

  /// No description provided for @hrtfGroup3.
  ///
  /// In zh, this message translates to:
  /// **'男·中头·小耳'**
  String get hrtfGroup3;

  /// No description provided for @hrtfGroup4.
  ///
  /// In zh, this message translates to:
  /// **'男·中头·中耳'**
  String get hrtfGroup4;

  /// No description provided for @hrtfGroup5.
  ///
  /// In zh, this message translates to:
  /// **'男·中头·大耳'**
  String get hrtfGroup5;

  /// No description provided for @hrtfGroup6.
  ///
  /// In zh, this message translates to:
  /// **'男·大头·小耳'**
  String get hrtfGroup6;

  /// No description provided for @hrtfGroup7.
  ///
  /// In zh, this message translates to:
  /// **'男·大头·中耳'**
  String get hrtfGroup7;

  /// No description provided for @hrtfGroup8.
  ///
  /// In zh, this message translates to:
  /// **'男·大头·大耳'**
  String get hrtfGroup8;

  /// No description provided for @hrtfGroup9.
  ///
  /// In zh, this message translates to:
  /// **'女·小头·小耳'**
  String get hrtfGroup9;

  /// No description provided for @hrtfGroup10.
  ///
  /// In zh, this message translates to:
  /// **'女·小头·中耳'**
  String get hrtfGroup10;

  /// No description provided for @hrtfGroup11.
  ///
  /// In zh, this message translates to:
  /// **'女·小头·大耳'**
  String get hrtfGroup11;

  /// No description provided for @hrtfGroup12.
  ///
  /// In zh, this message translates to:
  /// **'女·中头·小耳'**
  String get hrtfGroup12;

  /// No description provided for @hrtfGroup13.
  ///
  /// In zh, this message translates to:
  /// **'女·中头·中耳'**
  String get hrtfGroup13;

  /// No description provided for @hrtfGroup14.
  ///
  /// In zh, this message translates to:
  /// **'女·中头·大耳'**
  String get hrtfGroup14;

  /// No description provided for @navHome.
  ///
  /// In zh, this message translates to:
  /// **'首页'**
  String get navHome;

  /// No description provided for @navLibrary.
  ///
  /// In zh, this message translates to:
  /// **'资料库'**
  String get navLibrary;

  /// No description provided for @navPlaying.
  ///
  /// In zh, this message translates to:
  /// **'播放'**
  String get navPlaying;

  /// No description provided for @navYou.
  ///
  /// In zh, this message translates to:
  /// **'我的'**
  String get navYou;

  /// No description provided for @tabSongs.
  ///
  /// In zh, this message translates to:
  /// **'歌曲'**
  String get tabSongs;

  /// No description provided for @tabAlbums.
  ///
  /// In zh, this message translates to:
  /// **'专辑'**
  String get tabAlbums;

  /// No description provided for @tabFolders.
  ///
  /// In zh, this message translates to:
  /// **'文件夹'**
  String get tabFolders;

  /// No description provided for @tabPlaylists.
  ///
  /// In zh, this message translates to:
  /// **'播放列表'**
  String get tabPlaylists;

  /// No description provided for @youMood.
  ///
  /// In zh, this message translates to:
  /// **'心情'**
  String get youMood;

  /// No description provided for @youCompanion.
  ///
  /// In zh, this message translates to:
  /// **'你的陪伴'**
  String get youCompanion;

  /// No description provided for @youBuddies.
  ///
  /// In zh, this message translates to:
  /// **'小伙伴'**
  String get youBuddies;

  /// No description provided for @youSound.
  ///
  /// In zh, this message translates to:
  /// **'声音'**
  String get youSound;

  /// No description provided for @youMore.
  ///
  /// In zh, this message translates to:
  /// **'更多'**
  String get youMore;

  /// No description provided for @themeCherryBlossom.
  ///
  /// In zh, this message translates to:
  /// **'樱花'**
  String get themeCherryBlossom;

  /// No description provided for @themeStarryNight.
  ///
  /// In zh, this message translates to:
  /// **'星夜'**
  String get themeStarryNight;

  /// No description provided for @themeAdaptiveLight.
  ///
  /// In zh, this message translates to:
  /// **'自适应浅色'**
  String get themeAdaptiveLight;

  /// No description provided for @themeAdaptiveDark.
  ///
  /// In zh, this message translates to:
  /// **'自适应深色'**
  String get themeAdaptiveDark;

  /// No description provided for @youListenedTogether.
  ///
  /// In zh, this message translates to:
  /// **'一起听了 {h} 小时 {m} 分钟'**
  String youListenedTogether(int h, int m);

  /// No description provided for @buddyHana.
  ///
  /// In zh, this message translates to:
  /// **'Hanon 花音'**
  String get buddyHana;

  /// No description provided for @buddyHanaHome.
  ///
  /// In zh, this message translates to:
  /// **'页眉与播放页'**
  String get buddyHanaHome;

  /// No description provided for @buddyParrot.
  ///
  /// In zh, this message translates to:
  /// **'Qingyu 青羽'**
  String get buddyParrot;

  /// No description provided for @buddyParrotHome.
  ///
  /// In zh, this message translates to:
  /// **'停在资料库标题上'**
  String get buddyParrotHome;

  /// No description provided for @buddyCat.
  ///
  /// In zh, this message translates to:
  /// **'Yuemian 月眠'**
  String get buddyCat;

  /// No description provided for @buddyCatHome.
  ///
  /// In zh, this message translates to:
  /// **'在迷你播放器上打盹'**
  String get buddyCatHome;

  /// No description provided for @buddyDuck.
  ///
  /// In zh, this message translates to:
  /// **'Paopao 泡泡'**
  String get buddyDuck;

  /// No description provided for @buddyDuckHome.
  ///
  /// In zh, this message translates to:
  /// **'在喜欢歌曲上踱步'**
  String get buddyDuckHome;

  /// No description provided for @buddyFireflies.
  ///
  /// In zh, this message translates to:
  /// **'Xingchen 星尘'**
  String get buddyFireflies;

  /// No description provided for @buddyFirefliesHome.
  ///
  /// In zh, this message translates to:
  /// **'在深色主题里发光'**
  String get buddyFirefliesHome;

  /// No description provided for @accBow.
  ///
  /// In zh, this message translates to:
  /// **'粉色蝴蝶结'**
  String get accBow;

  /// No description provided for @accHeadphones.
  ///
  /// In zh, this message translates to:
  /// **'小耳机'**
  String get accHeadphones;

  /// No description provided for @accFlower.
  ///
  /// In zh, this message translates to:
  /// **'花朵'**
  String get accFlower;

  /// No description provided for @accCrown.
  ///
  /// In zh, this message translates to:
  /// **'小皇冠'**
  String get accCrown;

  /// No description provided for @accUnlockLabel.
  ///
  /// In zh, this message translates to:
  /// **'收听 {h} 小时解锁'**
  String accUnlockLabel(int h);

  /// No description provided for @youCrossfade.
  ///
  /// In zh, this message translates to:
  /// **'交叉淡化'**
  String get youCrossfade;

  /// No description provided for @youCrossfadeSub.
  ///
  /// In zh, this message translates to:
  /// **'把歌曲结尾融入下一首'**
  String get youCrossfadeSub;

  /// No description provided for @youSmartShuffle.
  ///
  /// In zh, this message translates to:
  /// **'智能随机'**
  String get youSmartShuffle;

  /// No description provided for @youSmartShuffleSub.
  ///
  /// In zh, this message translates to:
  /// **'随机播放偏向你的最爱 — 本机计算'**
  String get youSmartShuffleSub;

  /// No description provided for @libLikedSongs.
  ///
  /// In zh, this message translates to:
  /// **'喜欢的歌曲'**
  String get libLikedSongs;

  /// No description provided for @libTapHeart.
  ///
  /// In zh, this message translates to:
  /// **'点击歌曲上的爱心即可保留在这里'**
  String get libTapHeart;

  /// No description provided for @libRemovedFromQueue.
  ///
  /// In zh, this message translates to:
  /// **'已从队列移除'**
  String get libRemovedFromQueue;

  /// No description provided for @libRemovedFromLibrary.
  ///
  /// In zh, this message translates to:
  /// **'已从资料库移除'**
  String get libRemovedFromLibrary;

  /// No description provided for @libRemoveFromLibrary.
  ///
  /// In zh, this message translates to:
  /// **'从资料库移除'**
  String get libRemoveFromLibrary;

  /// No description provided for @libNewPlaylist.
  ///
  /// In zh, this message translates to:
  /// **'新建播放列表'**
  String get libNewPlaylist;

  /// No description provided for @libPlaylistName.
  ///
  /// In zh, this message translates to:
  /// **'播放列表名称'**
  String get libPlaylistName;

  /// No description provided for @libCreate.
  ///
  /// In zh, this message translates to:
  /// **'创建'**
  String get libCreate;

  /// No description provided for @libSwipeHint.
  ///
  /// In zh, this message translates to:
  /// **'左滑移除 · 长按排序'**
  String get libSwipeHint;

  /// No description provided for @libChooseCover.
  ///
  /// In zh, this message translates to:
  /// **'选择封面图片'**
  String get libChooseCover;

  /// No description provided for @libBackToArtCover.
  ///
  /// In zh, this message translates to:
  /// **'恢复为歌曲封面'**
  String get libBackToArtCover;

  /// No description provided for @libDeleteConfirm.
  ///
  /// In zh, this message translates to:
  /// **'删除 \"{name}\"？'**
  String libDeleteConfirm(String name);

  /// No description provided for @libDeleteKeepSongs.
  ///
  /// In zh, this message translates to:
  /// **'歌曲本身会保留在你的设备上'**
  String get libDeleteKeepSongs;

  /// No description provided for @libKeep.
  ///
  /// In zh, this message translates to:
  /// **'保留'**
  String get libKeep;

  /// No description provided for @libDelete.
  ///
  /// In zh, this message translates to:
  /// **'删除'**
  String get libDelete;

  /// No description provided for @libRemoveKeepFile.
  ///
  /// In zh, this message translates to:
  /// **'文件本身会保留在你的设备上'**
  String get libRemoveKeepFile;

  /// No description provided for @libClearConfirm.
  ///
  /// In zh, this message translates to:
  /// **'移除全部歌曲？'**
  String get libClearConfirm;

  /// No description provided for @libLibraryCleared.
  ///
  /// In zh, this message translates to:
  /// **'资料库已清空'**
  String get libLibraryCleared;

  /// No description provided for @libPickAudioFiles.
  ///
  /// In zh, this message translates to:
  /// **'选择音频文件…'**
  String get libPickAudioFiles;

  /// No description provided for @libImportFolder.
  ///
  /// In zh, this message translates to:
  /// **'导入文件夹'**
  String get libImportFolder;

  /// No description provided for @libScanWholeFolder.
  ///
  /// In zh, this message translates to:
  /// **'扫描整个文件夹…（推荐）'**
  String get libScanWholeFolder;

  /// No description provided for @libImportFailed.
  ///
  /// In zh, this message translates to:
  /// **'导入失败: {error}'**
  String libImportFailed(String error);

  /// No description provided for @libNoAudioFound.
  ///
  /// In zh, this message translates to:
  /// **'未找到音频文件'**
  String get libNoAudioFound;

  /// No description provided for @libImportedCount.
  ///
  /// In zh, this message translates to:
  /// **'已导入 {count} 首歌曲'**
  String libImportedCount(int count);

  /// No description provided for @libNothingHere.
  ///
  /// In zh, this message translates to:
  /// **'这里还空着 — 左滑可移除，长按可排序'**
  String get libNothingHere;

  /// No description provided for @sidebarYourLibrary.
  ///
  /// In zh, this message translates to:
  /// **'你的资料库'**
  String get sidebarYourLibrary;

  /// No description provided for @sidebarPlaylists.
  ///
  /// In zh, this message translates to:
  /// **'播放列表'**
  String get sidebarPlaylists;

  /// No description provided for @sidebarFolders.
  ///
  /// In zh, this message translates to:
  /// **'文件夹'**
  String get sidebarFolders;

  /// No description provided for @rowQueue.
  ///
  /// In zh, this message translates to:
  /// **'加入队列'**
  String get rowQueue;

  /// No description provided for @rowRemove.
  ///
  /// In zh, this message translates to:
  /// **'移除'**
  String get rowRemove;

  /// No description provided for @rowPlaylist.
  ///
  /// In zh, this message translates to:
  /// **'播放列表'**
  String get rowPlaylist;

  /// No description provided for @plTrackCount.
  ///
  /// In zh, this message translates to:
  /// **'{count} 首曲目'**
  String plTrackCount(int count);

  /// No description provided for @lyricsSourceAuto.
  ///
  /// In zh, this message translates to:
  /// **'自动'**
  String get lyricsSourceAuto;

  /// No description provided for @lyricsSourceEmbedded.
  ///
  /// In zh, this message translates to:
  /// **'内嵌'**
  String get lyricsSourceEmbedded;

  /// No description provided for @lyricsSourceBestQuality.
  ///
  /// In zh, this message translates to:
  /// **'最佳可用质量'**
  String get lyricsSourceBestQuality;

  /// No description provided for @lyricsSourceFileTags.
  ///
  /// In zh, this message translates to:
  /// **'来自音频文件自身的标签'**
  String get lyricsSourceFileTags;

  /// No description provided for @lyricsSourceWordOnline.
  ///
  /// In zh, this message translates to:
  /// **'逐词同步（在线）'**
  String get lyricsSourceWordOnline;

  /// No description provided for @lyricsSourceLineOnline.
  ///
  /// In zh, this message translates to:
  /// **'逐行同步（在线）'**
  String get lyricsSourceLineOnline;

  /// No description provided for @lyricsSourceNotFound.
  ///
  /// In zh, this message translates to:
  /// **'此歌曲未找到'**
  String get lyricsSourceNotFound;

  /// No description provided for @npCatModeUnlocked.
  ///
  /// In zh, this message translates to:
  /// **'喵？！猫咪模式已解锁 🐱'**
  String get npCatModeUnlocked;

  /// No description provided for @shellResumePlayback.
  ///
  /// In zh, this message translates to:
  /// **'继续播放'**
  String get shellResumePlayback;

  /// No description provided for @shellPlay.
  ///
  /// In zh, this message translates to:
  /// **'播放'**
  String get shellPlay;

  /// No description provided for @devSection.
  ///
  /// In zh, this message translates to:
  /// **'开发者'**
  String get devSection;

  /// No description provided for @devModeUnlocked.
  ///
  /// In zh, this message translates to:
  /// **'🛠️ 开发者模式已解锁'**
  String get devModeUnlocked;

  /// No description provided for @devUnlockAll.
  ///
  /// In zh, this message translates to:
  /// **'解锁全部配件'**
  String get devUnlockAll;

  /// No description provided for @devClearLyricsCache.
  ///
  /// In zh, this message translates to:
  /// **'清空歌词缓存'**
  String get devClearLyricsCache;

  /// No description provided for @devRefetchLyrics.
  ///
  /// In zh, this message translates to:
  /// **'重新拉取全部歌词…'**
  String get devRefetchLyrics;

  /// No description provided for @devLyricsCleared.
  ///
  /// In zh, this message translates to:
  /// **'歌词缓存已清空'**
  String get devLyricsCleared;

  /// No description provided for @devHideOptions.
  ///
  /// In zh, this message translates to:
  /// **'隐藏开发者选项'**
  String get devHideOptions;

  /// No description provided for @devModeOff.
  ///
  /// In zh, this message translates to:
  /// **'开发者模式已关闭'**
  String get devModeOff;

  /// No description provided for @youCantReadFolders.
  ///
  /// In zh, this message translates to:
  /// **'无法读取你的音乐文件夹'**
  String get youCantReadFolders;

  /// No description provided for @youNoMusicFolders.
  ///
  /// In zh, this message translates to:
  /// **'未找到音乐文件夹'**
  String get youNoMusicFolders;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'ar',
    'bn',
    'bo',
    'ca',
    'cs',
    'da',
    'de',
    'el',
    'en',
    'es',
    'fa',
    'fi',
    'fr',
    'gu',
    'he',
    'hi',
    'hr',
    'hu',
    'id',
    'it',
    'ja',
    'kk',
    'kn',
    'ko',
    'ml',
    'mn',
    'mr',
    'ms',
    'nl',
    'no',
    'or',
    'pa',
    'pl',
    'pt',
    'ro',
    'ru',
    'sk',
    'sl',
    'sv',
    'sw',
    'ta',
    'te',
    'th',
    'tl',
    'tr',
    'ug',
    'uk',
    'ur',
    'vi',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+script codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.scriptCode) {
          case 'Hant':
            return AppLocalizationsZhHant();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'bn':
      return AppLocalizationsBn();
    case 'bo':
      return AppLocalizationsBo();
    case 'ca':
      return AppLocalizationsCa();
    case 'cs':
      return AppLocalizationsCs();
    case 'da':
      return AppLocalizationsDa();
    case 'de':
      return AppLocalizationsDe();
    case 'el':
      return AppLocalizationsEl();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fa':
      return AppLocalizationsFa();
    case 'fi':
      return AppLocalizationsFi();
    case 'fr':
      return AppLocalizationsFr();
    case 'gu':
      return AppLocalizationsGu();
    case 'he':
      return AppLocalizationsHe();
    case 'hi':
      return AppLocalizationsHi();
    case 'hr':
      return AppLocalizationsHr();
    case 'hu':
      return AppLocalizationsHu();
    case 'id':
      return AppLocalizationsId();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'kk':
      return AppLocalizationsKk();
    case 'kn':
      return AppLocalizationsKn();
    case 'ko':
      return AppLocalizationsKo();
    case 'ml':
      return AppLocalizationsMl();
    case 'mn':
      return AppLocalizationsMn();
    case 'mr':
      return AppLocalizationsMr();
    case 'ms':
      return AppLocalizationsMs();
    case 'nl':
      return AppLocalizationsNl();
    case 'no':
      return AppLocalizationsNo();
    case 'or':
      return AppLocalizationsOr();
    case 'pa':
      return AppLocalizationsPa();
    case 'pl':
      return AppLocalizationsPl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ro':
      return AppLocalizationsRo();
    case 'ru':
      return AppLocalizationsRu();
    case 'sk':
      return AppLocalizationsSk();
    case 'sl':
      return AppLocalizationsSl();
    case 'sv':
      return AppLocalizationsSv();
    case 'sw':
      return AppLocalizationsSw();
    case 'ta':
      return AppLocalizationsTa();
    case 'te':
      return AppLocalizationsTe();
    case 'th':
      return AppLocalizationsTh();
    case 'tl':
      return AppLocalizationsTl();
    case 'tr':
      return AppLocalizationsTr();
    case 'ug':
      return AppLocalizationsUg();
    case 'uk':
      return AppLocalizationsUk();
    case 'ur':
      return AppLocalizationsUr();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
