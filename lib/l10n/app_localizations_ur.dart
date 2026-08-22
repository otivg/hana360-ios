// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'زبان';

  @override
  String get languageFollowSystem => 'نظام کی پیروی کریں';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Baseus × Hanamimi';

  @override
  String get commonCancel => 'منسوخ کریں';

  @override
  String get commonConfirm => 'ٹھیک ہے';

  @override
  String get commonBack => 'واپس';

  @override
  String get commonDone => 'مکمل';

  @override
  String get commonUnknown => 'نامعلوم';

  @override
  String get secUpmix => 'اپ مکس انجن';

  @override
  String get spatialAudioTitle => '۳۶۰ مقامی آڈیو';

  @override
  String get npNothingPlaying => 'کچھ نہیں چل رہا';

  @override
  String get npPickSong => 'اپنی لائبریری سے کوئی گانا منتخب کریں';

  @override
  String get npSpatialSettings => '۳۶۰ ترتیبات';

  @override
  String get npLyrics => 'بول';

  @override
  String get libSearchHint => 'اپنی موسیقی تلاش کریں…';

  @override
  String get libClearLibrary => 'لائبریری خالی کریں';

  @override
  String get libImportMusic => 'موسیقی درآمد کریں';

  @override
  String libError(String error) {
    return 'کچھ غلط ہو گیا: $error';
  }

  @override
  String libNoMatch(String query) {
    return '\"$query\" سے کچھ مطابقت نہیں رکھتا';
  }

  @override
  String get libPermissionDenied =>
      'آپ کی موسیقی تلاش کرنے کے لیے Hana360 کو اجازت درکار ہے\nاس ڈیوائس پر رسائی نہیں؟ درآمد کریں۔';

  @override
  String get libNoSongs =>
      'اس ڈیوائس پر کوئی گانا نہیں ملا\nاپنی فائلوں سے موسیقی درآمد کریں';

  @override
  String get libGrantAccess => 'رسائی دیں';

  @override
  String get libRescan => 'دوبارہ اسکین کریں';

  @override
  String get libAddedToQueue => 'قطار میں شامل ہوا';

  @override
  String get libNoAlbums => 'ابھی کوئی البم نہیں';

  @override
  String get libNoFolders => 'ابھی کوئی فولڈر نہیں';

  @override
  String get libNoPlaylists => 'ابھی کوئی پلے لسٹ نہیں';

  @override
  String libPlaylistCreated(String name) {
    return 'پلے لسٹ \"$name\" بنائی گئی 🌸';
  }

  @override
  String get libFolderHint => 'فولڈر کو پلے لسٹ میں بدلنے کے لیے دیر تک دبائیں';

  @override
  String libSongCount(int count) {
    return '$count گانے';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count گانے · $path';
  }

  @override
  String get homeGreetingLate => 'دیر رات تک جاگ رہے ♪';

  @override
  String get homeGreetingMorning => 'صبح بخیر ♪';

  @override
  String get homeGreetingAfternoon => 'دوپہر بخیر ♪';

  @override
  String get homeGreetingEvening => 'شام بخیر ♪';

  @override
  String get homeJumpBackIn => 'دوبارہ سنیں';

  @override
  String get homeForYou => 'آپ کے لیے';

  @override
  String get homeForYouSub =>
      'آپ کی سننے کی عادت کی بنیاد پر، اس ڈیوائس پر منتخب';

  @override
  String get homeWelcome => 'Hana360 میں خوش آمدید 🌸';

  @override
  String get homeAllQuiet => 'سب پرسکون 🌸';

  @override
  String get homeLibraryHint =>
      'آپ کی موسیقی لائبریری ٹیب میں ہے — وہاں فولڈر شامل کریں۔ جو کچھ آپ چلاتے ہیں وہ یہاں جمع ہوتا ہے۔';

  @override
  String get homePlayHint =>
      'کچھ چلائیں اور اگلی بار یہ یہاں آپ کا انتظار کرے گا۔';

  @override
  String get youRescanLibrary => 'لائبریری دوبارہ اسکین کریں';

  @override
  String get youExcludedFolders => 'خارج شدہ فولڈر';

  @override
  String get youExcludedFoldersSub => 'اپنی لائبریری سے فولڈر چھپائیں';

  @override
  String get youCatMode => 'بلی موڈ';

  @override
  String get youAbout => 'کے بارے میں';

  @override
  String get youScanning => 'آپ کی موسیقی اسکین ہو رہی ہے…';

  @override
  String get youOpenSource => 'اوپن سورس';

  @override
  String get youOpenSourceSub =>
      'Hana360 ShaptakNaskar کے Hanamimi (GPLv3) کا مشتق ہے — 2026-08-10 کو ترمیم شدہ';

  @override
  String get youCheckUpdates => 'اپ ڈیٹ چیک کریں';

  @override
  String get youCheckUpdatesSub => 'نئی بلڈز GitHub Releases پر آتی ہیں';

  @override
  String get youUpToDate => 'آپ تازہ ترین ورژن پر ہیں 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Sappy نے بنایا';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'پس منظر میں چلاتے رہیں';

  @override
  String get youKeepPlayingAllowed =>
      'اجازت دی گئی — نظام آپ کی موسیقی نہیں روکے گا';

  @override
  String get youKeepPlayingTap =>
      'نظام کو پلے بیک روکنے سے بچانے کے لیے تھپتھپائیں';

  @override
  String get youExcludedFoldersTitle => 'خارج شدہ فولڈر';

  @override
  String get youExcludedFoldersDesc =>
      'بند کیے گئے فولڈر کے گانے آپ کی لائبریری سے باہر رہتے ہیں';

  @override
  String get youVisSensitivity => 'ویژولائزر حساسیت';

  @override
  String get youVisSensitivitySub => 'کم حرکت والے گانوں کے لیے بڑھائیں';

  @override
  String get youNerdMode => 'نرڈ موڈ';

  @override
  String get youNerdModeSub => 'پلیئر پر کوڈیک، بٹ ریٹ اور آؤٹ پٹ دکھائیں';

  @override
  String get youEqualizer => 'ایکویلائزر';

  @override
  String get youComingSoon => 'جلد آرہا ہے';

  @override
  String get sleepTimer => 'نیند کا ٹائمر';

  @override
  String get sleep15 => '۱۵ منٹ';

  @override
  String get sleep30 => '۳۰ منٹ';

  @override
  String get sleep1h => '۱ گھنٹہ';

  @override
  String get sleepEndTrack => 'گانے کے آخر میں';

  @override
  String get sleepFading => 'مدھم ہو رہا… میٹھے خواب';

  @override
  String sleepIn(String time) {
    return '$time میں سوئیں';
  }

  @override
  String get sleepEndTrackActive => 'یہ گانا ختم ہونے پر سوئیں';

  @override
  String get sleepCancel => 'ٹائمر منسوخ کریں';

  @override
  String get queueUpNext => 'اگلا';

  @override
  String get queueEmpty => 'قطار خالی ہے';

  @override
  String get updateAvailable => 'اپ ڈیٹ دستیاب ✨';

  @override
  String get updateNoNotes => 'کوئی ریلیز نوٹ نہیں۔';

  @override
  String get updateInstalling => 'انسٹالر کھل رہا ہے…';

  @override
  String get updateFailed => 'اپ ڈیٹ نہیں ہو سکی — بعد میں دوبارہ کوشش کریں';

  @override
  String get updateLater => 'بعد میں';

  @override
  String get updateRetry => 'دوبارہ کوشش کریں';

  @override
  String get updateNow => 'اپ ڈیٹ کریں';

  @override
  String get spatialToggleTitle => '۳۶۰ مقامی آڈیو';

  @override
  String get spatialOn => 'آن';

  @override
  String get spatialOff => 'آف';

  @override
  String get lyricsNoFound => 'کوئی بول نہیں ملے';

  @override
  String get lyricsJustListening => 'یہ صرف سننے کے لیے ہے';

  @override
  String get lyricsTrySource => 'کوئی اور ذریعہ آزمائیں';

  @override
  String get lyricsSource => 'بول کا ذریعہ';

  @override
  String get lyricsWordSynced => 'لفظ کے ساتھ ہم آہنگ';

  @override
  String get lyricsLineSynced => 'لائن کے ساتھ ہم آہنگ';

  @override
  String get lyricsUnsynced => 'غیر ہم آہنگ';

  @override
  String get plNoPlaylists => 'ابھی کوئی پلے لسٹ نہیں — پہلے بنائیں!';

  @override
  String get plAddToPlaylist => 'پلے لسٹ میں شامل کریں';

  @override
  String plAddedTo(String name) {
    return '$name میں شامل ہوا';
  }

  @override
  String get shareLyrics => 'بول شیئر کریں';

  @override
  String get shareMaxLines => 'زیادہ سے زیادہ لائنیں منتخب';

  @override
  String sharePickLines(int count) {
    return 'زیادہ سے زیادہ $count لائنیں منتخب کریں';
  }

  @override
  String get sharePickHint => 'نیچے کچھ لائنیں منتخب کریں…';

  @override
  String get shareButton => 'شیئر کریں';

  @override
  String get batTitle => 'موسیقی چلتی رہے 🎵';

  @override
  String get batBody =>
      'اسکرین بند ہونے پر Android کی بیٹری آپٹیمائزیشن آپ کی موسیقی روک سکتی ہے۔ Hana360 کو بغیر رکاوٹ چلنے دیں۔\n\nآپ اسے You → \"پس منظر میں چلاتے رہیں\" سے کسی بھی وقت بدل سکتے ہیں۔';

  @override
  String get batNotNow => 'ابھی نہیں';

  @override
  String get batAllow => 'اجازت دیں';

  @override
  String get algoSwitch => 'الگورتھم';

  @override
  String get speakerDistance => 'اسپیکر کا فاصلہ';

  @override
  String get channelTrim => 'چینل ایڈجسٹمنٹ';

  @override
  String get masterGain => 'ماسٹر گین';

  @override
  String get secHrtf => 'HRTF شخصی بنانا';

  @override
  String get outputGain => 'آؤٹ پٹ گین';

  @override
  String get secEq => 'مقامی EQ';

  @override
  String get secReverb => 'گونج';

  @override
  String get roomSize => 'کمرہ';

  @override
  String get reverbGain => 'گونج گین';

  @override
  String get secTracking => 'سر کی ٹریکنگ';

  @override
  String get trackOff => 'آف';

  @override
  String get trackSensor => 'فون سینسر';

  @override
  String get trackManual => 'دستی XY';

  @override
  String get dragHint =>
      'سر کی سمت ایڈجسٹ کرنے کے لیے گھسیٹیں (آواز کا میدان ساتھ چلتا ہے)';

  @override
  String get customEq => 'کسٹم';

  @override
  String get eqPresetMusic => 'موسیقی';

  @override
  String get eqPresetCinema => 'سنیما';

  @override
  String get eqPresetGame => 'گیم';

  @override
  String get eqPresetVoice => 'آواز';

  @override
  String get hrtfGroup0 => 'مرد / چھوٹا / چھوٹا';

  @override
  String get hrtfGroup1 => 'مرد / چھوٹا / درمیانہ';

  @override
  String get hrtfGroup2 => 'مرد / چھوٹا / بڑا';

  @override
  String get hrtfGroup3 => 'مرد / درمیانہ / چھوٹا';

  @override
  String get hrtfGroup4 => 'مرد / درمیانہ / درمیانہ';

  @override
  String get hrtfGroup5 => 'مرد / درمیانہ / بڑا';

  @override
  String get hrtfGroup6 => 'مرد / بڑا / چھوٹا';

  @override
  String get hrtfGroup7 => 'مرد / بڑا / درمیانہ';

  @override
  String get hrtfGroup8 => 'مرد / بڑا / بڑا';

  @override
  String get hrtfGroup9 => 'عورت / چھوٹا / چھوٹا';

  @override
  String get hrtfGroup10 => 'عورت / چھوٹا / درمیانہ';

  @override
  String get hrtfGroup11 => 'عورت / چھوٹا / بڑا';

  @override
  String get hrtfGroup12 => 'عورت / درمیانہ / چھوٹا';

  @override
  String get hrtfGroup13 => 'عورت / درمیانہ / درمیانہ';

  @override
  String get hrtfGroup14 => 'عورت / درمیانہ / بڑا';

  @override
  String get navHome => 'ہوم';

  @override
  String get navLibrary => 'لائبریری';

  @override
  String get navPlaying => 'چل رہا ہے';

  @override
  String get navYou => 'آپ';

  @override
  String get tabSongs => 'گانے';

  @override
  String get tabAlbums => 'البمز';

  @override
  String get tabFolders => 'فولڈرز';

  @override
  String get tabPlaylists => 'پلے لسٹس';

  @override
  String get youMood => 'مزاج';

  @override
  String get youCompanion => 'آپ کی ساتھی';

  @override
  String get youBuddies => 'دوست';

  @override
  String get youSound => 'آواز';

  @override
  String get youMore => 'مزید';

  @override
  String get themeCherryBlossom => 'چیری بلاسم';

  @override
  String get themeStarryNight => 'ستاروں بھری رات';

  @override
  String get themeAdaptiveLight => 'موافق روشنی';

  @override
  String get themeAdaptiveDark => 'موافق تاریکی';

  @override
  String youListenedTogether(int h, int m) {
    return 'ایک ساتھ $h گھنٹے $m منٹ سنا';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'ہیڈر اور پلیئر';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'لائبریری کے عنوان پر بیٹھتا ہے';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'منی پلیئر پر جھپکی لیتی ہے';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'پسندیدہ گانوں پر چلتی ہے';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'ڈارک تھیمز پر چمکتے ہیں';

  @override
  String get accBow => 'گلابی کمان';

  @override
  String get accHeadphones => 'چھوٹے ہیڈ فون';

  @override
  String get accFlower => 'پھول';

  @override
  String get accCrown => 'چھوٹا تاج';

  @override
  String accUnlockLabel(int h) {
    return '$h گھنٹے سنیں';
  }

  @override
  String get youCrossfade => 'کراس فیڈ';

  @override
  String get youCrossfadeSub => 'گانے کے آخر کو اگلے میں ملائیں';

  @override
  String get youSmartShuffle => 'سمارٹ شفل';

  @override
  String get youSmartShuffleSub =>
      'شفل آپ کے پسندیدہ کی طرف جھکتا ہے — اس ڈیوائس پر حساب';

  @override
  String get libLikedSongs => 'پسندیدہ گانے';

  @override
  String get libTapHeart => 'گانے کو یہاں رکھنے کے لیے اس کے دل پر تھپتھپائیں';

  @override
  String get libRemovedFromQueue => 'قطار سے ہٹا دیا گیا';

  @override
  String get libRemovedFromLibrary => 'لائبریری سے ہٹا دیا گیا';

  @override
  String get libRemoveFromLibrary => 'لائبریری سے ہٹائیں';

  @override
  String get libNewPlaylist => 'نئی پلے لسٹ';

  @override
  String get libPlaylistName => 'پلے لسٹ کا نام';

  @override
  String get libCreate => 'بنائیں';

  @override
  String get libSwipeHint =>
      'ہٹانے کے لیے بائیں سوائپ کریں · ترتیب کے لیے دبائے رکھیں';

  @override
  String get libChooseCover => 'کور کی تصویر منتخب کریں';

  @override
  String get libBackToArtCover => 'گانے کے کور پر واپس جائیں';

  @override
  String libDeleteConfirm(String name) {
    return '\"$name\" حذف کریں؟';
  }

  @override
  String get libDeleteKeepSongs => 'گانے خود آپ کے ڈیوائس پر رہیں گے';

  @override
  String get libKeep => 'رکھیں';

  @override
  String get libDelete => 'حذف کریں';

  @override
  String get libRemoveKeepFile => 'فائل خود آپ کے ڈیوائس پر رہے گی';

  @override
  String get libClearConfirm => 'تمام فائلیں ہٹائیں؟';

  @override
  String get libLibraryCleared => 'لائبریری خالی ہو گئی';

  @override
  String get libPickAudioFiles => 'آڈیو فائلیں منتخب کریں…';

  @override
  String get libImportFolder => 'فولڈر درآمد کریں';

  @override
  String get libScanWholeFolder => 'پورا فولڈر اسکین کریں… (تجویز کردہ)';

  @override
  String libImportFailed(String error) {
    return 'درآمد ناکام: $error';
  }

  @override
  String get libNoAudioFound => 'کوئی آڈیو فائل نہیں ملی';

  @override
  String libImportedCount(int count) {
    return '$count گانے درآمد ہوئے';
  }

  @override
  String get libNothingHere =>
      'ابھی کچھ نہیں — ہٹانے کے لیے بائیں سوائپ کریں، ترتیب کے لیے دبائے رکھیں';

  @override
  String get sidebarYourLibrary => 'آپ کی لائبریری';

  @override
  String get sidebarPlaylists => 'پلے لسٹس';

  @override
  String get sidebarFolders => 'فولڈرز';

  @override
  String get rowQueue => 'قطار';

  @override
  String get rowRemove => 'ہٹائیں';

  @override
  String get rowPlaylist => 'پلے لسٹ';

  @override
  String plTrackCount(int count) {
    return '$count ٹریکس';
  }

  @override
  String get lyricsSourceAuto => 'خودکار';

  @override
  String get lyricsSourceEmbedded => 'ایمبیڈڈ';

  @override
  String get lyricsSourceBestQuality => 'بہترین دستیاب معیار';

  @override
  String get lyricsSourceFileTags => 'آڈیو فائل کے اپنے ٹیگز سے';

  @override
  String get lyricsSourceWordOnline => 'لفظ کے ساتھ ہم آہنگ (آن لائن)';

  @override
  String get lyricsSourceLineOnline => 'لائن کے ساتھ ہم آہنگ (آن لائن)';

  @override
  String get lyricsSourceNotFound => 'اس گانے کے لیے نہیں ملا';

  @override
  String get npCatModeUnlocked => 'میاؤں؟! بلی موڈ کھل گیا 🐱';

  @override
  String get shellResumePlayback => 'پلے بیک دوبارہ شروع کریں';

  @override
  String get shellPlay => 'چلائیں';

  @override
  String get devSection => 'ڈیولپر';

  @override
  String get devModeUnlocked => '🛠️ ڈیولپر موڈ کھل گیا';

  @override
  String get devUnlockAll => 'تمام لوازمات کھولیں';

  @override
  String get devClearLyricsCache => 'بول کا کیش صاف کریں';

  @override
  String get devRefetchLyrics => 'تمام بول دوبارہ لائیں…';

  @override
  String get devLyricsCleared => 'بول کا کیش صاف ہو گیا';

  @override
  String get devHideOptions => 'ڈیولپر آپشنز چھپائیں';

  @override
  String get devModeOff => 'ڈیولپر موڈ بند';

  @override
  String get youCantReadFolders => 'آپ کے موسیقی کے فولڈر پڑھے نہ جا سکے';

  @override
  String get youNoMusicFolders => 'کوئی موسیقی فولڈر نہیں ملا';
}
