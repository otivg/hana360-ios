// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Uighur Uyghur (`ug`).
class AppLocalizationsUg extends AppLocalizations {
  AppLocalizationsUg([String locale = 'ug']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'تىل';

  @override
  String get languageFollowSystem => 'سىستېمىغا ئەگىشىش';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Baseus × Hanamimi';

  @override
  String get commonCancel => 'بىكار قىلىش';

  @override
  String get commonConfirm => 'بولىدۇ';

  @override
  String get commonBack => 'قايتىش';

  @override
  String get commonDone => 'تاماملاندى';

  @override
  String get commonUnknown => 'نامەلۇم';

  @override
  String get secUpmix => 'Upmix ماتورى';

  @override
  String get spatialAudioTitle => '360 بوشلۇقلىق ئاۋاز';

  @override
  String get npNothingPlaying => 'ھازىرچە نەرسە قويۇلماۋاتىدۇ';

  @override
  String get npPickSong => 'مۇزىكا كۈتۈپخانىڭىزدىن بىر ناخشا تاللاڭ';

  @override
  String get npSpatialSettings => '360 تەڭشىكى';

  @override
  String get npLyrics => 'ناخشا تېكىستى';

  @override
  String get libSearchHint => 'مۇزىكىڭىزنى ئىزدەڭ…';

  @override
  String get libClearLibrary => 'مۇزىكا كۈتۈپخانىسىنى تازىلاش';

  @override
  String get libImportMusic => 'مۇزىكا كىرگۈزۈش';

  @override
  String libError(String error) {
    return 'خاتالىق كۆرۈلدى: $error';
  }

  @override
  String libNoMatch(String query) {
    return '«$query» غا ماس كېلىدىغان نەرسە تېپىلمىدى';
  }

  @override
  String get libPermissionDenied =>
      'Hana360 مۇزىكىڭىزنى تېپىش ئۈچۈن ھوقۇق كېرەك\nبۇ ئۈسكۈنىدە زىيارەت يوق؟ كىرگۈزۈڭ.';

  @override
  String get libNoSongs =>
      'بۇ ئۈسكۈنىدە ناخشا تېپىلمىدى\nھۆججەتلىرىڭىزدىن مۇزىكا كىرگۈزۈڭ';

  @override
  String get libGrantAccess => 'زىيارەت بېرىش';

  @override
  String get libRescan => 'قايتا سىكاننېرلاش';

  @override
  String get libAddedToQueue => 'قويۇش تىزىملىكىگە قوشۇلدى';

  @override
  String get libNoAlbums => 'تېخى ئالبوم يوق';

  @override
  String get libNoFolders => 'تېخى ھۆججەت قىسقۇچ يوق';

  @override
  String get libNoPlaylists => 'تېخى قويۇش تىزىملىكى يوق';

  @override
  String libPlaylistCreated(String name) {
    return '«$name» قويۇش تىزىملىكى قۇرۇلدى 🌸';
  }

  @override
  String get libFolderHint =>
      'ھۆججەت قىسقۇچنى ئۇزۇن بېسىپ قويۇش تىزىملىكىگە ئايلاندۇرۇڭ';

  @override
  String libSongCount(int count) {
    return '$count ناخشا';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count ناخشا · $path';
  }

  @override
  String get homeGreetingLate => 'يېرىم كېچىدە ئۇخلىمىغان ♪';

  @override
  String get homeGreetingMorning => 'خەيرلىك ئەتىگەن ♪';

  @override
  String get homeGreetingAfternoon => 'خەيرلىك چۈش ♪';

  @override
  String get homeGreetingEvening => 'خەيرلىك كەچ ♪';

  @override
  String get homeJumpBackIn => 'داۋاملىق ئاڭلاش';

  @override
  String get homeForYou => 'سىز ئۈچۈن';

  @override
  String get homeForYouSub =>
      'سىزنىڭ ئاڭلاش خاتىرىڭىز ئاساسىدا، بۇ ئۈسكۈنىدە تاللاندى';

  @override
  String get homeWelcome => 'Hana360 گە خۇش كەلدىڭىز 🌸';

  @override
  String get homeAllQuiet => 'ھەممە نەرسە جىمجىت 🌸';

  @override
  String get homeLibraryHint =>
      'مۇزىكىڭىز مۇزىكا كۈتۈپخانىسى بەتكۈچىدە — ئۇ يەرگە ھۆججەت قىسقۇچ قوشۇڭ. قويغانلىرىڭىزنىڭ ھەممىسى بۇ يەرگە يىغىلىدۇ.';

  @override
  String get homePlayHint =>
      'بىر نەرسە قويۇڭ، كېيىنكى قېتىم بۇ يەردە سىزنى كۈتىدۇ.';

  @override
  String get youRescanLibrary => 'مۇزىكا كۈتۈپخانىسىنى قايتا سىكاننېرلاش';

  @override
  String get youExcludedFolders => 'چىقىرىۋېتىلگەن ھۆججەت قىسقۇچلار';

  @override
  String get youExcludedFoldersSub =>
      'مۇزىكا كۈتۈپخانىڭىزدىن ھۆججەت قىسقۇچلارنى يوشۇرۇش';

  @override
  String get youCatMode => 'مۈشۈك ھالىتى';

  @override
  String get youAbout => 'ھەققىدە';

  @override
  String get youScanning => 'مۇزىكىڭىز سىكاننېرلانماقتا…';

  @override
  String get youOpenSource => 'ئوچۇق كود';

  @override
  String get youOpenSourceSub =>
      'Hana360 — ShaptakNaskar نىڭ Hanamimi (GPLv3) دىن تارقالغان نۇسخا — 2026-08-10 ئۆزگەرتىلگەن';

  @override
  String get youCheckUpdates => 'يېڭىلاشنى تەكشۈرۈش';

  @override
  String get youCheckUpdatesSub => 'يېڭى نۇسخىلار GitHub Releases دا چىقىدۇ';

  @override
  String get youUpToDate => 'سىز ئەڭ يېڭى نۇسخىداسىز 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Sappy قۇرغان';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'كەينىدە داۋاملىق قويۇش';

  @override
  String get youKeepPlayingAllowed =>
      'رۇخسەت بېرىلدى — سىستېما مۇزىكىڭىزنى توختاتمايدۇ';

  @override
  String get youKeepPlayingTap =>
      'سىستېمىنىڭ قويۇشنى توختىتىشىنىڭ ئالدىنى ئېلىش ئۈچۈن بېسىڭ';

  @override
  String get youExcludedFoldersTitle => 'چىقىرىۋېتىلگەن ھۆججەت قىسقۇچلار';

  @override
  String get youExcludedFoldersDesc =>
      'تاقالغان ھۆججەت قىسقۇچلاردىكى ناخشىلار مۇزىكا كۈتۈپخانىڭىزدىن چىقىرىۋېتىلىدۇ';

  @override
  String get youVisSensitivity => 'كۆرسەتكۈچ سەزگۈرلۈكى';

  @override
  String get youVisSensitivitySub => 'دىمىق ناخشىلار ئۈچۈن ئاشۇرۇڭ';

  @override
  String get youNerdMode => 'نېرد ھالىتى';

  @override
  String get youNerdModeSub => 'قويغۇچتا codec، bitrate ۋە چىقىم كۆرسەت';

  @override
  String get youEqualizer => 'تەڭلىگۈچ';

  @override
  String get youComingSoon => 'تېز كەلگۈسىدە';

  @override
  String get sleepTimer => 'ئۇخلاش ۋاقىتلىغۇچى';

  @override
  String get sleep15 => '15 مىنۇت';

  @override
  String get sleep30 => '30 مىنۇت';

  @override
  String get sleep1h => '1 سائەت';

  @override
  String get sleepEndTrack => 'ناخشا ئاخىرلاشقاندا';

  @override
  String get sleepFading => 'ئاستا ئاۋاز تۆۋەنلەۋاتىدۇ… ئېسىل چۈش';

  @override
  String sleepIn(String time) {
    return '$time ئىچىدە ئۇخلاش';
  }

  @override
  String get sleepEndTrackActive => 'بۇ ناخشا تۈگىگەندە ئۇخلاش';

  @override
  String get sleepCancel => 'ۋاقىتلىغۇچنى بىكار قىلىش';

  @override
  String get queueUpNext => 'كېيىنكى';

  @override
  String get queueEmpty => 'قويۇش تىزىملىكى بوش';

  @override
  String get updateAvailable => 'يېڭىلاش بار ✨';

  @override
  String get updateNoNotes => 'نەشرىيات خاتىرىسى يوق.';

  @override
  String get updateInstalling => 'قاچىلىغۇچ ئېچىلماقتا…';

  @override
  String get updateFailed => 'يېڭىلاش مەغلۇب بولدى — كېيىن قايتا سىناڭ';

  @override
  String get updateLater => 'كېيىن';

  @override
  String get updateRetry => 'قايتا سىناش';

  @override
  String get updateNow => 'يېڭىلاش';

  @override
  String get spatialToggleTitle => '360 بوشلۇقلىق ئاۋاز';

  @override
  String get spatialOn => 'ئېچىش';

  @override
  String get spatialOff => 'تاقاش';

  @override
  String get lyricsNoFound => 'ناخشا تېكىستى تېپىلمىدى';

  @override
  String get lyricsJustListening => 'بۇ پەقەت ئاڭلاش ئۈچۈن';

  @override
  String get lyricsTrySource => 'باشقا مەنبە سىناڭ';

  @override
  String get lyricsSource => 'تېكىست مەنبەسى';

  @override
  String get lyricsWordSynced => 'سۆز-سۆز سىنكرون';

  @override
  String get lyricsLineSynced => 'قۇر-قۇر سىنكرون';

  @override
  String get lyricsUnsynced => 'سىنكرون ئەمەس';

  @override
  String get plNoPlaylists => 'تېخى قويۇش تىزىملىكى يوق — ئاۋۋال بىرنى قۇرۇڭ!';

  @override
  String get plAddToPlaylist => 'قويۇش تىزىملىكىگە قوشۇش';

  @override
  String plAddedTo(String name) {
    return '$name غا قوشۇلدى';
  }

  @override
  String get shareLyrics => 'ناخشا تېكىستىنى ھەمبەھىرلەش';

  @override
  String get shareMaxLines => 'ئەڭ كۆپ قۇر تاللاندى';

  @override
  String sharePickLines(int count) {
    return 'ئەڭ كۆپ $count قۇر تاللاڭ';
  }

  @override
  String get sharePickHint => 'تۆۋەندە بىر قانچە قۇر تاللاڭ…';

  @override
  String get shareButton => 'ھەمبەھىرلەش';

  @override
  String get batTitle => 'مۇزىكا داۋاملىق قويۇلسۇن 🎵';

  @override
  String get batBody =>
      'Android نىڭ باتارېيە ئەلالاشتۇرۇشى ئېكران يېپىلغاندا مۇزىكىڭىزنى توختىتىشى مۇمكىن. Hana360 نىڭ چەكسىز ئىشلىشىگە رۇخسەت بېرىڭ.\n\nبۇنى You → «كەينىدە داۋاملىق قويۇش» دىن ئۆزگەرتەلەيسىز.';

  @override
  String get batNotNow => 'ھازىر ئەمەس';

  @override
  String get batAllow => 'رۇخسەت بېرىش';

  @override
  String get algoSwitch => 'ئالگورىتم';

  @override
  String get speakerDistance => 'كۈچەيتكۈچ ئارىلىقى';

  @override
  String get channelTrim => 'قانال تەڭشەش';

  @override
  String get masterGain => 'ئاساسىي ئاۋاز';

  @override
  String get secHrtf => 'HRTF شەخسىيلەشتۈرۈش';

  @override
  String get outputGain => 'چىقىم ئاۋازى';

  @override
  String get secEq => 'بوشلۇقلىق EQ';

  @override
  String get secReverb => 'ياڭرىق';

  @override
  String get roomSize => 'ئۆي';

  @override
  String get reverbGain => 'ياڭرىق ئاۋازى';

  @override
  String get secTracking => 'باش سېزىش';

  @override
  String get trackOff => 'تاقاش';

  @override
  String get trackSensor => 'تېلېفون سېنزورى';

  @override
  String get trackManual => 'قول XY';

  @override
  String get dragHint =>
      'باش يۆنىلىشىنى تەڭشەش ئۈچۈن سۆرەڭ (ئاۋاز مەيدانى ئەگىشىدۇ)';

  @override
  String get customEq => 'شەخسىي';

  @override
  String get eqPresetMusic => 'مۇزىكا';

  @override
  String get eqPresetCinema => 'كىنو';

  @override
  String get eqPresetGame => 'ئويۇن';

  @override
  String get eqPresetVoice => 'ئاۋاز';

  @override
  String get hrtfGroup0 => 'ئەر / كىچىك باش / كىچىك قۇلاق';

  @override
  String get hrtfGroup1 => 'ئەر / كىچىك باش / ئوتتۇرا قۇلاق';

  @override
  String get hrtfGroup2 => 'ئەر / كىچىك باش / چوڭ قۇلاق';

  @override
  String get hrtfGroup3 => 'ئەر / ئوتتۇرا باش / كىچىك قۇلاق';

  @override
  String get hrtfGroup4 => 'ئەر / ئوتتۇرا باش / ئوتتۇرا قۇلاق';

  @override
  String get hrtfGroup5 => 'ئەر / ئوتتۇرا باش / چوڭ قۇلاق';

  @override
  String get hrtfGroup6 => 'ئەر / چوڭ باش / كىچىك قۇلاق';

  @override
  String get hrtfGroup7 => 'ئەر / چوڭ باش / ئوتتۇرا قۇلاق';

  @override
  String get hrtfGroup8 => 'ئەر / چوڭ باش / چوڭ قۇلاق';

  @override
  String get hrtfGroup9 => 'ئايال / كىچىك باش / كىچىك قۇلاق';

  @override
  String get hrtfGroup10 => 'ئايال / كىچىك باش / ئوتتۇرا قۇلاق';

  @override
  String get hrtfGroup11 => 'ئايال / كىچىك باش / چوڭ قۇلاق';

  @override
  String get hrtfGroup12 => 'ئايال / ئوتتۇرا باش / كىچىك قۇلاق';

  @override
  String get hrtfGroup13 => 'ئايال / ئوتتۇرا باش / ئوتتۇرا قۇلاق';

  @override
  String get hrtfGroup14 => 'ئايال / ئوتتۇرا باش / چوڭ قۇلاق';

  @override
  String get navHome => 'باش بەت';

  @override
  String get navLibrary => 'مۇزىكا كۈتۈپخانىسى';

  @override
  String get navPlaying => 'قويۇلماقتا';

  @override
  String get navYou => 'سىز';

  @override
  String get tabSongs => 'ناخشىلار';

  @override
  String get tabAlbums => 'ئالبوملار';

  @override
  String get tabFolders => 'ھۆججەت قىسقۇچلار';

  @override
  String get tabPlaylists => 'قويۇش تىزىملىكلىرى';

  @override
  String get youMood => 'كەيپىيات';

  @override
  String get youCompanion => 'سىزنىڭ ھەمراھىڭىز';

  @override
  String get youBuddies => 'دوستلار';

  @override
  String get youSound => 'ئاۋاز';

  @override
  String get youMore => 'تېخىمۇ كۆپ';

  @override
  String get themeCherryBlossom => 'گىلاس گۈلى';

  @override
  String get themeStarryNight => 'يۇلتۇزلۇق كېچە';

  @override
  String get themeAdaptiveLight => 'ئاپتوماتىك يورۇق';

  @override
  String get themeAdaptiveDark => 'ئاپتوماتىك قاراڭغۇ';

  @override
  String youListenedTogether(int h, int m) {
    return 'بىرلىكتە $h سائەت $m مىنۇت ئاڭلىدىڭىز';
  }

  @override
  String get buddyHana => 'Hanon 花音';

  @override
  String get buddyHanaHome => 'باش قىسمى ۋە قويغۇچ';

  @override
  String get buddyParrot => 'Qingyu 青羽';

  @override
  String get buddyParrotHome => 'مۇزىكا كۈتۈپخانىسى ماۋزۇسىغا قونىدۇ';

  @override
  String get buddyCat => 'Yuemian 月眠';

  @override
  String get buddyCatHome => 'كىچىك قويغۇچتا ئۇخلايدۇ';

  @override
  String get buddyDuck => 'Paopao 泡泡';

  @override
  String get buddyDuckHome => 'ياقتۇرغان ناخشىلار ئۈستىدە مېڭىدۇ';

  @override
  String get buddyFireflies => 'Xingchen 星尘';

  @override
  String get buddyFirefliesHome => 'قاراڭغۇ تېمىلاردا پارقىرايدۇ';

  @override
  String get accBow => 'گۈلرەڭ بالاڭ';

  @override
  String get accHeadphones => 'كىچىك قۇلاقچا';

  @override
  String get accFlower => 'گۈل';

  @override
  String get accCrown => 'كىچىك تاج';

  @override
  String accUnlockLabel(int h) {
    return '$h سائەت ئاڭلاپ ئېچىش';
  }

  @override
  String get youCrossfade => 'كېسىشىپ ئۆتۈش';

  @override
  String get youCrossfadeSub => 'ناخشا ئاخىرىنى كېيىنكىگە قوشۇش';

  @override
  String get youSmartShuffle => 'ئەقلىي ئارىلاشتۇرۇش';

  @override
  String get youSmartShuffleSub =>
      'ئارىلاشتۇرۇش ياقتۇرغانلىرىڭىزغا مايىل — بۇ ئۈسكۈنىدە ھېسابلىنىدۇ';

  @override
  String get libLikedSongs => 'ياقتۇرغان ناخشىلار';

  @override
  String get libTapHeart => 'ناخشىدىكى يۈرەكنى بېسىپ بۇ يەردە ساقلاڭ';

  @override
  String get libRemovedFromQueue => 'قويۇش تىزىملىكىدىن چىقىرىۋېتىلدى';

  @override
  String get libRemovedFromLibrary => 'مۇزىكا كۈتۈپخانىسىدىن چىقىرىۋېتىلدى';

  @override
  String get libRemoveFromLibrary => 'مۇزىكا كۈتۈپخانىسىدىن چىقىرىش';

  @override
  String get libNewPlaylist => 'يېڭى قويۇش تىزىملىكى';

  @override
  String get libPlaylistName => 'قويۇش تىزىملىكى نامى';

  @override
  String get libCreate => 'قۇرۇش';

  @override
  String get libSwipeHint => 'سولغا سۈرۈپ چىقىرىش · ئۇزۇن بېسىپ رەتلەش';

  @override
  String get libChooseCover => 'مۇقاۋا رەسىمىنى تاللاش';

  @override
  String get libBackToArtCover => 'ناخشا مۇقاۋىسىغا قايتىش';

  @override
  String libDeleteConfirm(String name) {
    return '«$name» نى ئۆچۈرەمسىز؟';
  }

  @override
  String get libDeleteKeepSongs => 'ناخشىلارنىڭ ئۆزى ئۈسكۈنىڭىزدە قالىدۇ';

  @override
  String get libKeep => 'ساقلاش';

  @override
  String get libDelete => 'ئۆچۈرۈش';

  @override
  String get libRemoveKeepFile => 'ھۆججەتنىڭ ئۆزى ئۈسكۈنىڭىزدە قالىدۇ';

  @override
  String get libClearConfirm => 'بارلىق ھۆججەتلەرنى چىقىرىۋېتەمسىز؟';

  @override
  String get libLibraryCleared => 'مۇزىكا كۈتۈپخانىسى تازىلاندى';

  @override
  String get libPickAudioFiles => 'ئاۋاز ھۆججەتلىرىنى تاللاڭ…';

  @override
  String get libImportFolder => 'ھۆججەت قىسقۇچ كىرگۈزۈش';

  @override
  String get libScanWholeFolder =>
      'پۈتۈن ھۆججەت قىسقۇچنى سىكاننېرلاش… (تەۋسىيە)';

  @override
  String libImportFailed(String error) {
    return 'كىرگۈزۈش مەغلۇب بولدى: $error';
  }

  @override
  String get libNoAudioFound => 'ئاۋاز ھۆججىتى تېپىلمىدى';

  @override
  String libImportedCount(int count) {
    return '$count ناخشا كىرگۈزۈلدى';
  }

  @override
  String get libNothingHere =>
      'تېخى ھېچنەرسە يوق — سولغا سۈرۈپ چىقىرىش، ئۇزۇن بېسىپ رەتلەش';

  @override
  String get sidebarYourLibrary => 'مۇزىكا كۈتۈپخانىڭىز';

  @override
  String get sidebarPlaylists => 'قويۇش تىزىملىكلىرى';

  @override
  String get sidebarFolders => 'ھۆججەت قىسقۇچلار';

  @override
  String get rowQueue => 'قويۇش تىزىملىكىگە قوشۇش';

  @override
  String get rowRemove => 'چىقىرىش';

  @override
  String get rowPlaylist => 'قويۇش تىزىملىكى';

  @override
  String plTrackCount(int count) {
    return '$count ناخشا';
  }

  @override
  String get lyricsSourceAuto => 'ئاپتوماتىك';

  @override
  String get lyricsSourceEmbedded => 'سىڭدۈرۈلگەن';

  @override
  String get lyricsSourceBestQuality => 'ئەڭ ياخشى مەۋجۇت سۈپەت';

  @override
  String get lyricsSourceFileTags => 'ئاۋاز ھۆججىتىنىڭ ئۆز بەلگىلىرىدىن';

  @override
  String get lyricsSourceWordOnline => 'سۆز-سۆز سىنكرون (توردا)';

  @override
  String get lyricsSourceLineOnline => 'قۇر-قۇر سىنكرون (توردا)';

  @override
  String get lyricsSourceNotFound => 'بۇ ناخشا ئۈچۈن تېپىلمىدى';

  @override
  String get npCatModeUnlocked => 'مىياۋ؟! مۈشۈك ھالىتى ئېچىلدى 🐱';

  @override
  String get shellResumePlayback => 'قويۇشنى داۋاملاشتۇرۇش';

  @override
  String get shellPlay => 'قويۇش';

  @override
  String get devSection => 'دېۋېلوپېر';

  @override
  String get devModeUnlocked => '🛠️ دېۋېلوپېر ھالىتى ئېچىلدى';

  @override
  String get devUnlockAll => 'بارلىق ئەشيا ئەبزەللەرنى ئېچىش';

  @override
  String get devClearLyricsCache => 'تېكىست كېشىنى تازىلاش';

  @override
  String get devRefetchLyrics => 'بارلىق تېكىستلەرنى قايتا ئېلىش…';

  @override
  String get devLyricsCleared => 'تېكىست كېشى تازىلاندى';

  @override
  String get devHideOptions => 'دېۋېلوپېر تاللانمىلىرىنى يوشۇرۇش';

  @override
  String get devModeOff => 'دېۋېلوپېر ھالىتى تاقالدى';

  @override
  String get youCantReadFolders => 'مۇزىكا ھۆججەت قىسقۇچلىرىڭىزنى ئوقۇيالمىدى';

  @override
  String get youNoMusicFolders => 'مۇزىكا ھۆججەت قىسقۇچى تېپىلمىدى';
}
