// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'اللغة';

  @override
  String get languageFollowSystem => 'اتباع النظام';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Baseus × Hanamimi';

  @override
  String get commonCancel => 'إلغاء';

  @override
  String get commonConfirm => 'موافق';

  @override
  String get commonBack => 'رجوع';

  @override
  String get commonDone => 'تم';

  @override
  String get commonUnknown => 'غير معروف';

  @override
  String get secUpmix => 'محرك Upmix';

  @override
  String get spatialAudioTitle => 'صوت مكاني 360';

  @override
  String get npNothingPlaying => 'لا شيء قيد التشغيل';

  @override
  String get npPickSong => 'اختر أغنية من مكتبتك';

  @override
  String get npSpatialSettings => 'إعدادات 360';

  @override
  String get npLyrics => 'الكلمات';

  @override
  String get libSearchHint => 'ابحث في موسيقاك…';

  @override
  String get libClearLibrary => 'مسح المكتبة';

  @override
  String get libImportMusic => 'استيراد الموسيقى';

  @override
  String libError(String error) {
    return 'حدث خطأ ما: $error';
  }

  @override
  String libNoMatch(String query) {
    return 'لا شيء يطابق \"$query\"';
  }

  @override
  String get libPermissionDenied =>
      'يحتاج Hana360 إلى إذن للعثور على موسيقاك\nلا يوجد وصول على هذا الجهاز؟ استورد بدلاً من ذلك.';

  @override
  String get libNoSongs =>
      'لا توجد أغانٍ على هذا الجهاز\nاستورد الموسيقى من ملفاتك للبدء';

  @override
  String get libGrantAccess => 'منح الوصول';

  @override
  String get libRescan => 'إعادة مسح';

  @override
  String get libAddedToQueue => 'أُضيفت إلى قائمة الانتظار';

  @override
  String get libNoAlbums => 'لا توجد ألبومات بعد';

  @override
  String get libNoFolders => 'لا توجد مجلدات بعد';

  @override
  String get libNoPlaylists => 'لا توجد قوائم تشغيل بعد';

  @override
  String libPlaylistCreated(String name) {
    return 'تم إنشاء قائمة \"$name\" 🌸';
  }

  @override
  String get libFolderHint => 'اضغط مطولاً على مجلد لتحويله إلى قائمة تشغيل';

  @override
  String libSongCount(int count) {
    return '$count أغانٍ';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count أغانٍ · $path';
  }

  @override
  String get homeGreetingLate => 'سهران ♪';

  @override
  String get homeGreetingMorning => 'صباح الخير ♪';

  @override
  String get homeGreetingAfternoon => 'مساء الخير ♪';

  @override
  String get homeGreetingEvening => 'مساء الخير ♪';

  @override
  String get homeJumpBackIn => 'متابعة الاستماع';

  @override
  String get homeForYou => 'لك';

  @override
  String get homeForYouSub => 'اختيارات على هذا الجهاز، من استماعك';

  @override
  String get homeWelcome => 'مرحباً بك في Hana360 🌸';

  @override
  String get homeAllQuiet => 'كل شيء هادئ 🌸';

  @override
  String get homeLibraryHint =>
      'موسيقاك في تبويب المكتبة — أضف المجلدات هناك. كل ما تشغّله يظهر هنا.';

  @override
  String get homePlayHint => 'شغّل شيئاً وسينتظرك هنا في المرة القادمة.';

  @override
  String get youRescanLibrary => 'إعادة مسح المكتبة';

  @override
  String get youExcludedFolders => 'المجلدات المستبعدة';

  @override
  String get youExcludedFoldersSub => 'إخفاء المجلدات من مكتبتك';

  @override
  String get youCatMode => 'وضع القط';

  @override
  String get youAbout => 'حول';

  @override
  String get youScanning => 'جارٍ مسح موسيقاك…';

  @override
  String get youOpenSource => 'مفتوح المصدر';

  @override
  String get youOpenSourceSub =>
      'Hana360 مشتق من Hanamimi (GPLv3) من ShaptakNaskar — تم التعديل 2026-08-10';

  @override
  String get youCheckUpdates => 'التحقق من التحديثات';

  @override
  String get youCheckUpdatesSub => 'الإصدارات الجديدة على GitHub Releases';

  @override
  String get youUpToDate => 'أنت على أحدث إصدار 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'من صنع Sappy';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'مواصلة التشغيل في الخلفية';

  @override
  String get youKeepPlayingAllowed => 'مسموح — لن يوقف النظام موسيقاك';

  @override
  String get youKeepPlayingTap => 'انقر لمنع النظام من إيقاف التشغيل';

  @override
  String get youExcludedFoldersTitle => 'المجلدات المستبعدة';

  @override
  String get youExcludedFoldersDesc =>
      'الأغاني في المجلدات المعطّلة تُستبعد من مكتبتك';

  @override
  String get youVisSensitivity => 'حساسية المرئيات';

  @override
  String get youVisSensitivitySub => 'ارفعها للأغاني التي لا تحركها كثيراً';

  @override
  String get youNerdMode => 'وضع المهووس';

  @override
  String get youNerdModeSub =>
      'إظهار الترميز ومعدل البت والمخرج في شاشة التشغيل';

  @override
  String get youEqualizer => 'المعادل';

  @override
  String get youComingSoon => 'قريباً';

  @override
  String get sleepTimer => 'مؤقت النوم';

  @override
  String get sleep15 => '15 دقيقة';

  @override
  String get sleep30 => '30 دقيقة';

  @override
  String get sleep1h => 'ساعة واحدة';

  @override
  String get sleepEndTrack => 'نهاية الأغنية';

  @override
  String get sleepFading => 'جارٍ التلاشي… أحلام سعيدة';

  @override
  String sleepIn(String time) {
    return 'النوم بعد $time';
  }

  @override
  String get sleepEndTrackActive => 'النوم عند انتهاء هذه الأغنية';

  @override
  String get sleepCancel => 'إلغاء المؤقت';

  @override
  String get queueUpNext => 'التالي';

  @override
  String get queueEmpty => 'قائمة الانتظار فارغة';

  @override
  String get updateAvailable => 'يتوفر تحديث ✨';

  @override
  String get updateNoNotes => 'لا توجد ملاحظات إصدار.';

  @override
  String get updateInstalling => 'جارٍ فتح المثبّت…';

  @override
  String get updateFailed => 'تعذر التحديث — حاول لاحقاً';

  @override
  String get updateLater => 'لاحقاً';

  @override
  String get updateRetry => 'إعادة المحاولة';

  @override
  String get updateNow => 'تحديث';

  @override
  String get spatialToggleTitle => 'صوت مكاني 360';

  @override
  String get spatialOn => 'مفعّل';

  @override
  String get spatialOff => 'معطّل';

  @override
  String get lyricsNoFound => 'لم يتم العثور على كلمات';

  @override
  String get lyricsJustListening => 'هذه الأغنية للاستماع فقط';

  @override
  String get lyricsTrySource => 'جرّب مصدراً آخر';

  @override
  String get lyricsSource => 'مصدر الكلمات';

  @override
  String get lyricsWordSynced => 'متزامنة بالكلمة';

  @override
  String get lyricsLineSynced => 'متزامنة بالسطر';

  @override
  String get lyricsUnsynced => 'غير متزامنة';

  @override
  String get plNoPlaylists => 'لا توجد قوائم تشغيل — أنشئ واحدة أولاً!';

  @override
  String get plAddToPlaylist => 'إضافة إلى قائمة تشغيل';

  @override
  String plAddedTo(String name) {
    return 'أُضيفت إلى $name';
  }

  @override
  String get shareLyrics => 'مشاركة الكلمات';

  @override
  String get shareMaxLines => 'تم تحديد الحد الأقصى من الأسطر';

  @override
  String sharePickLines(int count) {
    return 'اختر حتى $count أسطر';
  }

  @override
  String get sharePickHint => 'اختر بعض الأسطر أدناه…';

  @override
  String get shareButton => 'مشاركة';

  @override
  String get batTitle => 'أبقِ الموسيقى تعمل 🎵';

  @override
  String get batBody =>
      'قد يوقف تحسين البطارية في Android موسيقاك عند إيقاف الشاشة. اسمح لـ Hana360 بالعمل دون قيود.\n\nيمكنك تغيير ذلك في You → \"مواصلة التشغيل في الخلفية\".';

  @override
  String get batNotNow => 'ليس الآن';

  @override
  String get batAllow => 'السماح';

  @override
  String get algoSwitch => 'الخوارزمية';

  @override
  String get speakerDistance => 'مسافة السماعة';

  @override
  String get channelTrim => 'ضبط القناة';

  @override
  String get masterGain => 'الكسب الرئيسي';

  @override
  String get secHrtf => 'تخصيص HRTF';

  @override
  String get outputGain => 'كسب الإخراج';

  @override
  String get secEq => 'معادل مكاني';

  @override
  String get secReverb => 'الصدى';

  @override
  String get roomSize => 'الغرفة';

  @override
  String get reverbGain => 'كسب الصدى';

  @override
  String get secTracking => 'تتبع الرأس';

  @override
  String get trackOff => 'إيقاف';

  @override
  String get trackSensor => 'مستشعر الهاتف';

  @override
  String get trackManual => 'XY يدوي';

  @override
  String get dragHint => 'اسحب لضبط اتجاه الرأس (يتبع الصوت)';

  @override
  String get customEq => 'مخصص';

  @override
  String get eqPresetMusic => 'موسيقى';

  @override
  String get eqPresetCinema => 'سينما';

  @override
  String get eqPresetGame => 'ألعاب';

  @override
  String get eqPresetVoice => 'صوت';

  @override
  String get hrtfGroup0 => 'ذكر / صغير / صغير';

  @override
  String get hrtfGroup1 => 'ذكر / صغير / متوسط';

  @override
  String get hrtfGroup2 => 'ذكر / صغير / كبير';

  @override
  String get hrtfGroup3 => 'ذكر / متوسط / صغير';

  @override
  String get hrtfGroup4 => 'ذكر / متوسط / متوسط';

  @override
  String get hrtfGroup5 => 'ذكر / متوسط / كبير';

  @override
  String get hrtfGroup6 => 'ذكر / كبير / صغير';

  @override
  String get hrtfGroup7 => 'ذكر / كبير / متوسط';

  @override
  String get hrtfGroup8 => 'ذكر / كبير / كبير';

  @override
  String get hrtfGroup9 => 'أنثى / صغير / صغير';

  @override
  String get hrtfGroup10 => 'أنثى / صغير / متوسط';

  @override
  String get hrtfGroup11 => 'أنثى / صغير / كبير';

  @override
  String get hrtfGroup12 => 'أنثى / متوسط / صغير';

  @override
  String get hrtfGroup13 => 'أنثى / متوسط / متوسط';

  @override
  String get hrtfGroup14 => 'أنثى / متوسط / كبير';

  @override
  String get navHome => 'الرئيسية';

  @override
  String get navLibrary => 'المكتبة';

  @override
  String get navPlaying => 'قيد التشغيل';

  @override
  String get navYou => 'أنت';

  @override
  String get tabSongs => 'الأغاني';

  @override
  String get tabAlbums => 'الألبومات';

  @override
  String get tabFolders => 'المجلدات';

  @override
  String get tabPlaylists => 'قوائم التشغيل';

  @override
  String get youMood => 'المزاج';

  @override
  String get youCompanion => 'رفيقتك';

  @override
  String get youBuddies => 'الأصدقاء';

  @override
  String get youSound => 'الصوت';

  @override
  String get youMore => 'المزيد';

  @override
  String get themeCherryBlossom => 'زهر الكرز';

  @override
  String get themeStarryNight => 'ليلة مرصعة بالنجوم';

  @override
  String get themeAdaptiveLight => 'ضوء متكيف';

  @override
  String get themeAdaptiveDark => 'داكن متكيف';

  @override
  String youListenedTogether(int h, int m) {
    return '$hس $mد استماعاً معاً';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'الرأس وشاشة التشغيل';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'يقف على عنوان المكتبة';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'تغفو على المشغل المصغر';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'تتجول فوق الأغاني المفضلة';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'تتوهج في السمات الداكنة';

  @override
  String get accBow => 'فيونكة وردية';

  @override
  String get accHeadphones => 'سماعات صغيرة';

  @override
  String get accFlower => 'زهرة';

  @override
  String get accCrown => 'تاج صغير';

  @override
  String accUnlockLabel(int h) {
    return 'استمع $h ساعات';
  }

  @override
  String get youCrossfade => 'تلاشي متقاطع';

  @override
  String get youCrossfadeSub => 'امزج نهاية الأغنية بالتالية';

  @override
  String get youSmartShuffle => 'خلط ذكي';

  @override
  String get youSmartShuffleSub =>
      'يميل الخلط نحو مفضلاتك — يُحسب على هذا الجهاز';

  @override
  String get libLikedSongs => 'الأغاني المفضلة';

  @override
  String get libTapHeart => 'اضغط على قلب الأغنية للاحتفاظ بها هنا';

  @override
  String get libRemovedFromQueue => 'أُزيلت من قائمة الانتظار';

  @override
  String get libRemovedFromLibrary => 'أُزيلت من المكتبة';

  @override
  String get libRemoveFromLibrary => 'إزالة من المكتبة';

  @override
  String get libNewPlaylist => 'قائمة تشغيل جديدة';

  @override
  String get libPlaylistName => 'اسم قائمة التشغيل';

  @override
  String get libCreate => 'إنشاء';

  @override
  String get libSwipeHint => 'اسحب لليسار للإزالة · اضغط مطولاً لإعادة الترتيب';

  @override
  String get libChooseCover => 'اختر صورة الغلاف';

  @override
  String get libBackToArtCover => 'العودة إلى غلاف الأغنية';

  @override
  String libDeleteConfirm(String name) {
    return 'حذف \"$name\"؟';
  }

  @override
  String get libDeleteKeepSongs => 'الأغاني نفسها تبقى على جهازك';

  @override
  String get libKeep => 'إبقاء';

  @override
  String get libDelete => 'حذف';

  @override
  String get libRemoveKeepFile => 'الملف نفسه يبقى على جهازك';

  @override
  String get libClearConfirm => 'إزالة جميع الملفات؟';

  @override
  String get libLibraryCleared => 'تم تفريغ المكتبة';

  @override
  String get libPickAudioFiles => 'اختر ملفات صوتية…';

  @override
  String get libImportFolder => 'استيراد مجلد';

  @override
  String get libScanWholeFolder => 'مسح مجلد كامل… (مستحسن)';

  @override
  String libImportFailed(String error) {
    return 'فشل الاستيراد: $error';
  }

  @override
  String get libNoAudioFound => 'لم يتم العثور على ملفات صوتية';

  @override
  String libImportedCount(int count) {
    return 'تم استيراد $count أغنية';
  }

  @override
  String get libNothingHere =>
      'لا شيء هنا بعد — اسحب لليسار للإزالة، اضغط مطولاً لإعادة الترتيب';

  @override
  String get sidebarYourLibrary => 'مكتبتك';

  @override
  String get sidebarPlaylists => 'قوائم التشغيل';

  @override
  String get sidebarFolders => 'المجلدات';

  @override
  String get rowQueue => 'قائمة الانتظار';

  @override
  String get rowRemove => 'إزالة';

  @override
  String get rowPlaylist => 'قائمة تشغيل';

  @override
  String plTrackCount(int count) {
    return '$count مقطوعة';
  }

  @override
  String get lyricsSourceAuto => 'تلقائي';

  @override
  String get lyricsSourceEmbedded => 'مضمن';

  @override
  String get lyricsSourceBestQuality => 'أفضل جودة متاحة';

  @override
  String get lyricsSourceFileTags => 'من وسوم ملف الصوت نفسه';

  @override
  String get lyricsSourceWordOnline => 'متزامن بالكلمة (عبر الإنترنت)';

  @override
  String get lyricsSourceLineOnline => 'متزامن بالسطر (عبر الإنترنت)';

  @override
  String get lyricsSourceNotFound => 'غير موجودة لهذه الأغنية';

  @override
  String get npCatModeUnlocked => 'مياو؟! تم فتح وضع القطة 🐱';

  @override
  String get shellResumePlayback => 'استئناف التشغيل';

  @override
  String get shellPlay => 'تشغيل';

  @override
  String get devSection => 'المطور';

  @override
  String get devModeUnlocked => '🛠️ تم فتح وضع المطور';

  @override
  String get devUnlockAll => 'فتح جميع الإكسسوارات';

  @override
  String get devClearLyricsCache => 'مسح ذاكرة الكلمات المؤقتة';

  @override
  String get devRefetchLyrics => 'إعادة جلب جميع الكلمات…';

  @override
  String get devLyricsCleared => 'تم مسح ذاكرة الكلمات';

  @override
  String get devHideOptions => 'إخفاء خيارات المطور';

  @override
  String get devModeOff => 'تم إيقاف وضع المطور';

  @override
  String get youCantReadFolders => 'تعذرت قراءة مجلدات الموسيقى لديك';

  @override
  String get youNoMusicFolders => 'لم يتم العثور على مجلدات موسيقى';
}
