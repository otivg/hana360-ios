// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class AppLocalizationsFa extends AppLocalizations {
  AppLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'زبان';

  @override
  String get languageFollowSystem => 'پیروی از سیستم';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Baseus × Hanamimi';

  @override
  String get commonCancel => 'لغو';

  @override
  String get commonConfirm => 'تأیید';

  @override
  String get commonBack => 'بازگشت';

  @override
  String get commonDone => 'انجام شد';

  @override
  String get commonUnknown => 'ناشناخته';

  @override
  String get secUpmix => 'موتور Upmix';

  @override
  String get spatialAudioTitle => 'صدای فضایی ۳۶۰';

  @override
  String get npNothingPlaying => 'چیزی در حال پخش نیست';

  @override
  String get npPickSong => 'آهنگی از کتابخانه خود انتخاب کنید';

  @override
  String get npSpatialSettings => 'تنظیمات ۳۶۰';

  @override
  String get npLyrics => 'متن آهنگ';

  @override
  String get libSearchHint => 'موسیقی خود را جستجو کنید…';

  @override
  String get libClearLibrary => 'خالی کردن کتابخانه';

  @override
  String get libImportMusic => 'وارد کردن موسیقی';

  @override
  String libError(String error) {
    return 'خطایی رخ داد: $error';
  }

  @override
  String libNoMatch(String query) {
    return 'چیزی با \"$query\" مطابقت ندارد';
  }

  @override
  String get libPermissionDenied =>
      'Hana360 برای یافتن موسیقی شما به مجوز نیاز دارد\nدسترسی در این دستگاه وجود ندارد؟ وارد کنید.';

  @override
  String get libNoSongs =>
      'آهنگی در این دستگاه یافت نشد\nاز فایل‌های خود موسیقی وارد کنید';

  @override
  String get libGrantAccess => 'اعطای دسترسی';

  @override
  String get libRescan => 'اسکن مجدد';

  @override
  String get libAddedToQueue => 'به صف اضافه شد';

  @override
  String get libNoAlbums => 'هنوز آلبومی نیست';

  @override
  String get libNoFolders => 'هنوز پوشه‌ای نیست';

  @override
  String get libNoPlaylists => 'هنوز لیست پخشی نیست';

  @override
  String libPlaylistCreated(String name) {
    return 'لیست پخش \"$name\" ساخته شد 🌸';
  }

  @override
  String get libFolderHint => 'برای تبدیل پوشه به لیست پخش، طولانی لمس کنید';

  @override
  String libSongCount(int count) {
    return '$count آهنگ';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count آهنگ · $path';
  }

  @override
  String get homeGreetingLate => 'تا دیروقت بیدارید ♪';

  @override
  String get homeGreetingMorning => 'صبح بخیر ♪';

  @override
  String get homeGreetingAfternoon => 'ظهر بخیر ♪';

  @override
  String get homeGreetingEvening => 'شب بخیر ♪';

  @override
  String get homeJumpBackIn => 'ادامه گوش دادن';

  @override
  String get homeForYou => 'برای شما';

  @override
  String get homeForYouSub => 'بر اساس شنیده‌های شما، در این دستگاه انتخاب شد';

  @override
  String get homeWelcome => 'به Hana360 خوش آمدید 🌸';

  @override
  String get homeAllQuiet => 'همه چیز آرام است 🌸';

  @override
  String get homeLibraryHint =>
      'موسیقی شما در برگه کتابخانه است — پوشه‌ها را آنجا اضافه کنید. هرچه پخش می‌کنید اینجا جمع می‌شود.';

  @override
  String get homePlayHint =>
      'چیزی پخش کنید و دفعه بعد اینجا منتظرتان خواهد بود.';

  @override
  String get youRescanLibrary => 'اسکن مجدد کتابخانه';

  @override
  String get youExcludedFolders => 'پوشه‌های مستثنا';

  @override
  String get youExcludedFoldersSub => 'پنهان کردن پوشه‌ها از کتابخانه';

  @override
  String get youCatMode => 'حالت گربه';

  @override
  String get youAbout => 'درباره';

  @override
  String get youScanning => 'در حال اسکن موسیقی شما…';

  @override
  String get youOpenSource => 'متن‌باز';

  @override
  String get youOpenSourceSub =>
      'Hana360 مشتق از Hanamimi (GPLv3) اثر ShaptakNaskar است — تغییر یافته در 2026-08-10';

  @override
  String get youCheckUpdates => 'بررسی به‌روزرسانی';

  @override
  String get youCheckUpdatesSub => 'نسخه‌های جدید در GitHub Releases';

  @override
  String get youUpToDate => 'شما به‌روز هستید 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'ساخته Sappy';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'ادامه پخش در پس‌زمینه';

  @override
  String get youKeepPlayingAllowed =>
      'مجاز — سیستم موسیقی شما را متوقف نمی‌کند';

  @override
  String get youKeepPlayingTap =>
      'برای جلوگیری از توقف پخش توسط سیستم لمس کنید';

  @override
  String get youExcludedFoldersTitle => 'پوشه‌های مستثنا';

  @override
  String get youExcludedFoldersDesc =>
      'آهنگ‌های پوشه‌های خاموش از کتابخانه شما حذف می‌شوند';

  @override
  String get youVisSensitivity => 'حساسیت نمایشگر';

  @override
  String get youVisSensitivitySub =>
      'برای آهنگ‌هایی که کم حرکت می‌کنند بالا ببرید';

  @override
  String get youNerdMode => 'حالت حرفه‌ای';

  @override
  String get youNerdModeSub => 'نمایش کدک، نرخ بیت و خروجی در صفحه پخش';

  @override
  String get youEqualizer => 'اکولایزر';

  @override
  String get youComingSoon => 'به‌زودی';

  @override
  String get sleepTimer => 'تایمر خواب';

  @override
  String get sleep15 => '۱۵ دقیقه';

  @override
  String get sleep30 => '۳۰ دقیقه';

  @override
  String get sleep1h => '۱ ساعت';

  @override
  String get sleepEndTrack => 'پایان آهنگ';

  @override
  String get sleepFading => 'در حال محو شدن… خواب‌های شیرین';

  @override
  String sleepIn(String time) {
    return 'خواب در $time';
  }

  @override
  String get sleepEndTrackActive => 'خواب با پایان این آهنگ';

  @override
  String get sleepCancel => 'لغو تایمر';

  @override
  String get queueUpNext => 'بعدی';

  @override
  String get queueEmpty => 'صف خالی است';

  @override
  String get updateAvailable => 'به‌روزرسانی موجود است ✨';

  @override
  String get updateNoNotes => 'یادداشت انتشار وجود ندارد.';

  @override
  String get updateInstalling => 'در حال باز کردن نصب‌کننده…';

  @override
  String get updateFailed => 'به‌روزرسانی نشد — بعداً دوباره تلاش کنید';

  @override
  String get updateLater => 'بعداً';

  @override
  String get updateRetry => 'تلاش مجدد';

  @override
  String get updateNow => 'به‌روزرسانی';

  @override
  String get spatialToggleTitle => 'صدای فضایی ۳۶۰';

  @override
  String get spatialOn => 'روشن';

  @override
  String get spatialOff => 'خاموش';

  @override
  String get lyricsNoFound => 'متنی یافت نشد';

  @override
  String get lyricsJustListening => 'این فقط برای گوش دادن است';

  @override
  String get lyricsTrySource => 'منبع دیگری را امتحان کنید';

  @override
  String get lyricsSource => 'منبع متن آهنگ';

  @override
  String get lyricsWordSynced => 'همگام با واژه';

  @override
  String get lyricsLineSynced => 'همگام با خط';

  @override
  String get lyricsUnsynced => 'بدون همگام‌سازی';

  @override
  String get plNoPlaylists => 'هنوز لیست پخشی نیست — اول یکی بسازید!';

  @override
  String get plAddToPlaylist => 'افزودن به لیست پخش';

  @override
  String plAddedTo(String name) {
    return 'به $name اضافه شد';
  }

  @override
  String get shareLyrics => 'اشتراک‌گذاری متن آهنگ';

  @override
  String get shareMaxLines => 'حداکثر خطوط انتخاب شد';

  @override
  String sharePickLines(int count) {
    return 'حداکثر $count خط انتخاب کنید';
  }

  @override
  String get sharePickHint => 'چند خط از پایین انتخاب کنید…';

  @override
  String get shareButton => 'اشتراک‌گذاری';

  @override
  String get batTitle => 'بگذارید موسیقی ادامه یابد 🎵';

  @override
  String get batBody =>
      'بهینه‌سازی باتری اندروید ممکن است با خاموش شدن صفحه، موسیقی را متوقف کند. به Hana360 اجازه دهید بدون محدودیت اجرا شود.\n\nمی‌توانید این را در You → \"ادامه پخش در پس‌زمینه\" تغییر دهید.';

  @override
  String get batNotNow => 'الان نه';

  @override
  String get batAllow => 'اجازه دادن';

  @override
  String get algoSwitch => 'الگوریتم';

  @override
  String get speakerDistance => 'فاصله بلندگو';

  @override
  String get channelTrim => 'تنظیم کانال';

  @override
  String get masterGain => 'بهره اصلی';

  @override
  String get secHrtf => 'شخصی‌سازی HRTF';

  @override
  String get outputGain => 'بهره خروجی';

  @override
  String get secEq => 'اکولایزر فضایی';

  @override
  String get secReverb => 'طنین';

  @override
  String get roomSize => 'اتاق';

  @override
  String get reverbGain => 'بهره طنین';

  @override
  String get secTracking => 'ردیابی سر';

  @override
  String get trackOff => 'خاموش';

  @override
  String get trackSensor => 'حسگر گوشی';

  @override
  String get trackManual => 'XY دستی';

  @override
  String get dragHint => 'برای تنظیم جهت سر بکشید (میدان صوتی دنبال می‌کند)';

  @override
  String get customEq => 'سفارشی';

  @override
  String get eqPresetMusic => 'موسیقی';

  @override
  String get eqPresetCinema => 'سینما';

  @override
  String get eqPresetGame => 'بازی';

  @override
  String get eqPresetVoice => 'صدا';

  @override
  String get hrtfGroup0 => 'مرد / کوچک / کوچک';

  @override
  String get hrtfGroup1 => 'مرد / کوچک / متوسط';

  @override
  String get hrtfGroup2 => 'مرد / کوچک / بزرگ';

  @override
  String get hrtfGroup3 => 'مرد / متوسط / کوچک';

  @override
  String get hrtfGroup4 => 'مرد / متوسط / متوسط';

  @override
  String get hrtfGroup5 => 'مرد / متوسط / بزرگ';

  @override
  String get hrtfGroup6 => 'مرد / بزرگ / کوچک';

  @override
  String get hrtfGroup7 => 'مرد / بزرگ / متوسط';

  @override
  String get hrtfGroup8 => 'مرد / بزرگ / بزرگ';

  @override
  String get hrtfGroup9 => 'زن / کوچک / کوچک';

  @override
  String get hrtfGroup10 => 'زن / کوچک / متوسط';

  @override
  String get hrtfGroup11 => 'زن / کوچک / بزرگ';

  @override
  String get hrtfGroup12 => 'زن / متوسط / کوچک';

  @override
  String get hrtfGroup13 => 'زن / متوسط / متوسط';

  @override
  String get hrtfGroup14 => 'زن / متوسط / بزرگ';

  @override
  String get navHome => 'خانه';

  @override
  String get navLibrary => 'کتابخانه';

  @override
  String get navPlaying => 'در حال پخش';

  @override
  String get navYou => 'شما';

  @override
  String get tabSongs => 'آهنگ‌ها';

  @override
  String get tabAlbums => 'آلبوم‌ها';

  @override
  String get tabFolders => 'پوشه‌ها';

  @override
  String get tabPlaylists => 'لیست‌های پخش';

  @override
  String get youMood => 'حال و هوا';

  @override
  String get youCompanion => 'همدم شما';

  @override
  String get youBuddies => 'دوستان';

  @override
  String get youSound => 'صدا';

  @override
  String get youMore => 'بیشتر';

  @override
  String get themeCherryBlossom => 'شکوفه گیلاس';

  @override
  String get themeStarryNight => 'شب پرستاره';

  @override
  String get themeAdaptiveLight => 'روشن تطبیقی';

  @override
  String get themeAdaptiveDark => 'تیره تطبیقی';

  @override
  String youListenedTogether(int h, int m) {
    return '$h ساعت $m دقیقه با هم گوش دادید';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'سربرگ و صفحه پخش';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'روی عنوان کتابخانه می‌نشیند';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'روی پخش‌کننده کوچک چرت می‌زند';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'روی آهنگ‌های پسندیده راه می‌رود';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'در پوسته‌های تیره می‌درخشد';

  @override
  String get accBow => 'پاپیون صورتی';

  @override
  String get accHeadphones => 'هدفون کوچک';

  @override
  String get accFlower => 'گل';

  @override
  String get accCrown => 'تاج کوچک';

  @override
  String accUnlockLabel(int h) {
    return '$h ساعت گوش دهید';
  }

  @override
  String get youCrossfade => 'محو متقاطع';

  @override
  String get youCrossfadeSub => 'پایان آهنگ را با آهنگ بعدی ترکیب کنید';

  @override
  String get youSmartShuffle => 'پخش تصادفی هوشمند';

  @override
  String get youSmartShuffleSub =>
      'پخش تصادفی به علاقه‌مندی‌های شما گرایش دارد — محاسبه روی این دستگاه';

  @override
  String get libLikedSongs => 'آهنگ‌های پسندیده';

  @override
  String get libTapHeart => 'برای نگه داشتن آهنگ اینجا، روی قلب آن بزنید';

  @override
  String get libRemovedFromQueue => 'از صف حذف شد';

  @override
  String get libRemovedFromLibrary => 'از کتابخانه حذف شد';

  @override
  String get libRemoveFromLibrary => 'حذف از کتابخانه';

  @override
  String get libNewPlaylist => 'لیست پخش جدید';

  @override
  String get libPlaylistName => 'نام لیست پخش';

  @override
  String get libCreate => 'ایجاد';

  @override
  String get libSwipeHint => 'برای حذف به چپ بکشید · برای مرتب‌سازی نگه دارید';

  @override
  String get libChooseCover => 'انتخاب تصویر جلد';

  @override
  String get libBackToArtCover => 'بازگشت به جلد آهنگ';

  @override
  String libDeleteConfirm(String name) {
    return 'حذف \"$name\"؟';
  }

  @override
  String get libDeleteKeepSongs => 'خود آهنگ‌ها روی دستگاه شما می‌مانند';

  @override
  String get libKeep => 'نگه داشتن';

  @override
  String get libDelete => 'حذف';

  @override
  String get libRemoveKeepFile => 'خود فایل روی دستگاه شما می‌ماند';

  @override
  String get libClearConfirm => 'حذف همه فایل‌ها؟';

  @override
  String get libLibraryCleared => 'کتابخانه خالی شد';

  @override
  String get libPickAudioFiles => 'انتخاب فایل‌های صوتی…';

  @override
  String get libImportFolder => 'وارد کردن پوشه';

  @override
  String get libScanWholeFolder => 'اسکن کل پوشه… (توصیه می‌شود)';

  @override
  String libImportFailed(String error) {
    return 'وارد کردن ناموفق بود: $error';
  }

  @override
  String get libNoAudioFound => 'فایل صوتی یافت نشد';

  @override
  String libImportedCount(int count) {
    return '$count آهنگ وارد شد';
  }

  @override
  String get libNothingHere =>
      'هنوز چیزی نیست — برای حذف به چپ بکشید، برای مرتب‌سازی نگه دارید';

  @override
  String get sidebarYourLibrary => 'کتابخانه شما';

  @override
  String get sidebarPlaylists => 'لیست‌های پخش';

  @override
  String get sidebarFolders => 'پوشه‌ها';

  @override
  String get rowQueue => 'صف';

  @override
  String get rowRemove => 'حذف';

  @override
  String get rowPlaylist => 'لیست پخش';

  @override
  String plTrackCount(int count) {
    return '$count قطعه';
  }

  @override
  String get lyricsSourceAuto => 'خودکار';

  @override
  String get lyricsSourceEmbedded => 'تعبیه‌شده';

  @override
  String get lyricsSourceBestQuality => 'بهترین کیفیت موجود';

  @override
  String get lyricsSourceFileTags => 'از برچسب‌های خود فایل صوتی';

  @override
  String get lyricsSourceWordOnline => 'همگام با واژه (آنلاین)';

  @override
  String get lyricsSourceLineOnline => 'همگام با خط (آنلاین)';

  @override
  String get lyricsSourceNotFound => 'برای این آهنگ یافت نشد';

  @override
  String get npCatModeUnlocked => 'میو؟! حالت گربه باز شد 🐱';

  @override
  String get shellResumePlayback => 'ادامه پخش';

  @override
  String get shellPlay => 'پخش';

  @override
  String get devSection => 'توسعه‌دهنده';

  @override
  String get devModeUnlocked => '🛠️ حالت توسعه‌دهنده باز شد';

  @override
  String get devUnlockAll => 'باز کردن همه لوازم جانبی';

  @override
  String get devClearLyricsCache => 'پاک کردن حافظه متن‌ها';

  @override
  String get devRefetchLyrics => 'بازیابی دوباره همه متن‌ها…';

  @override
  String get devLyricsCleared => 'حافظه متن‌ها پاک شد';

  @override
  String get devHideOptions => 'پنهان کردن گزینه‌های توسعه‌دهنده';

  @override
  String get devModeOff => 'حالت توسعه‌دهنده خاموش شد';

  @override
  String get youCantReadFolders => 'پوشه‌های موسیقی شما خوانده نشد';

  @override
  String get youNoMusicFolders => 'پوشه موسیقی یافت نشد';
}
