// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tibetan (`bo`).
class AppLocalizationsBo extends AppLocalizations {
  AppLocalizationsBo([String locale = 'bo']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'སྐད་ཡིག';

  @override
  String get languageFollowSystem => 'མ་ལག་དང་མཐུན་པ';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Baseus × Hanamimi';

  @override
  String get commonCancel => 'དོར་བ';

  @override
  String get commonConfirm => 'ལེགས་སོ';

  @override
  String get commonBack => 'ཕྱིར་ལོག';

  @override
  String get commonDone => 'གྲུབ་ཟིན';

  @override
  String get commonUnknown => 'མི་གསལ་བ';

  @override
  String get secUpmix => 'Upmix ཡོ་ཆས';

  @override
  String get spatialAudioTitle => '360 མཁའ་ཁྱབ་སྒྲ';

  @override
  String get npNothingPlaying => 'གླུ་སྒྲོག་བཞིན་མེད';

  @override
  String get npPickSong => 'ཁྱེད་ཀྱི་གླུ་ཁང་ནས་གླུ་ཞིག་འདེམས།';

  @override
  String get npSpatialSettings => '360 སྒྲིག་བཀོད';

  @override
  String get npLyrics => 'གླུ་ཚིག';

  @override
  String get libSearchHint => 'ཁྱེད་ཀྱི་གླུ་འཚོལ།…';

  @override
  String get libClearLibrary => 'གླུ་ཁང་གཙང་བཤལ';

  @override
  String get libImportMusic => 'གླུ་གཞས་ཡོངས་འདྲེན';

  @override
  String libError(String error) {
    return 'ནོར་འཁྲུལ་བྱུང་སོང་། $error';
  }

  @override
  String libNoMatch(String query) {
    return '«$query» དང་མཐུན་པ་མེད';
  }

  @override
  String get libPermissionDenied =>
      'Hana360 ཀྱིས་ཁྱེད་ཀྱི་གླུ་འཚོལ་བར་ཆོག་མཆན་དགོས།\nལག་ཆ་འདི་ལ་འཛུལ་སྤྱོད་མེད་ན། ཡོངས་འདྲེན་གནང་།';

  @override
  String get libNoSongs =>
      'ལག་ཆ་འདི་སྟེང་གླུ་མ་རྙེད།\nཁྱེད་ཀྱི་ཡིག་ཚགས་ནས་གླུ་གཞས་ཡོངས་འདྲེན་གནང་།';

  @override
  String get libGrantAccess => 'འཛུལ་སྤྱོད་སྤྲོད་པ';

  @override
  String get libRescan => 'ཡང་བསྐྱར་ཞིབ་བཤེར';

  @override
  String get libAddedToQueue => 'གླུ་ཐོར་བསྣན་ཟིན';

  @override
  String get libNoAlbums => 'གླུ་དེབ་ད་དུང་མེད';

  @override
  String get libNoFolders => 'ཐག་ཁ་ཤོག་ཁང་ད་དུང་མེད';

  @override
  String get libNoPlaylists => 'གླུ་ཐོ་ད་དུང་མེད';

  @override
  String libPlaylistCreated(String name) {
    return 'གླུ་ཐོ་«$name» བཟོ་ཟིན 🌸';
  }

  @override
  String get libFolderHint => 'ཐག་ཁ་ཤོག་ཁང་རིང་པོར་ནོན་ན་གླུ་ཐོར་འགྱུར།';

  @override
  String libSongCount(int count) {
    return '$count གླུ';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count གླུ · $path';
  }

  @override
  String get homeGreetingLate => 'མཚན་མོ་ཧ་ཅང་རིང་པོར་གཉིད་མ་ཕྱུག་པ ♪';

  @override
  String get homeGreetingMorning => 'ཞོགས་པ་བདེ་ལེགས ♪';

  @override
  String get homeGreetingAfternoon => 'ཉིན་གུང་བདེ་ལེགས ♪';

  @override
  String get homeGreetingEvening => 'དགོང་མོ་བདེ་ལེགས ♪';

  @override
  String get homeJumpBackIn => 'མུ་མཐུད་ཉན་པ';

  @override
  String get homeForYou => 'ཁྱེད་ལ་ཕུལ་བ';

  @override
  String get homeForYouSub =>
      'ཁྱེད་ཀྱི་ཉན་ཐོ་གཞིར་བཟུང་ནས་ལག་ཆ་འདི་སྟེང་འདེམས་པ';

  @override
  String get homeWelcome => 'Hana360 ལ་ཕེབས་པར་དགའ་བསུ། 🌸';

  @override
  String get homeAllQuiet => 'ཐམས་ཅད་སྙིངས་པའི་སྟངས། 🌸';

  @override
  String get homeLibraryHint =>
      'ཁྱེད་ཀྱི་གླུ་གཞས་གླུ་ཁང་གི་ནང་ཡོད། དེར་ཐག་ཁ་ཤོག་ཁང་བསྣན་དགོས།';

  @override
  String get homePlayHint =>
      'གླུ་ཞིག་སྒྲོག་ལ། ཡང་བསྐྱར་དེར་ཁྱེད་ལ་སྒུག་གི་ཡོད།';

  @override
  String get youRescanLibrary => 'གླུ་ཁང་ཡང་བསྐྱར་ཞིབ་བཤེར';

  @override
  String get youExcludedFolders => 'བཀར་བའི་ཐག་ཁ་ཤོག་ཁང་';

  @override
  String get youExcludedFoldersSub => 'གླུ་ཁང་ནས་ཐག་ཁ་ཤོག་ཁང་སྦས་པ';

  @override
  String get youCatMode => 'བྱི་ལའི་རྣམ་པ';

  @override
  String get youAbout => 'སྐོར་གླེང་';

  @override
  String get youScanning => 'ཁྱེད་ཀྱི་གླུ་ཞིབ་བཤེར་བྱེད་བཞིན་ཡོད།…';

  @override
  String get youOpenSource => 'ཁ་ཕྱེ་འབྱུང་ཁུངས';

  @override
  String get youOpenSourceSub =>
      'Hana360 ནི་ ShaptakNaskar གྱི་ Hanamimi (GPLv3) ལས་བྱུང་བའི་རྣམ་གཞག་ཅིག་ཡིན། 2026-08-10 ལ་བསྒྱུར་བ';

  @override
  String get youCheckUpdates => 'ཡར་རྒྱས་ཞིབ་བཤེར';

  @override
  String get youCheckUpdatesSub =>
      'གསར་པའི་རྣམ་གཞག་ GitHub Releases ལ་འབྱུང་གི་ཡོད།';

  @override
  String get youUpToDate => 'ཁྱེད་ནི་དེ་ཤོས་གསར་པའི་རྣམ་གཞག་སྟེང་ཡོད། 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Sappy གིས་བཟོས་པ';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'རྒྱབ་ལྗོངས་སུ་མུ་མཐུད་སྒྲོག་པ';

  @override
  String get youKeepPlayingAllowed =>
      'ཆོག་མཆན་བྱུང་ཟིན — མ་ལག་གིས་ཁྱེད་ཀྱི་གླུ་མི་ཆོད་པ';

  @override
  String get youKeepPlayingTap => 'མ་ལག་གིས་སྒྲོག་པ་ཆོད་པ་མི་ཡོང་བར་ནོན་པ';

  @override
  String get youExcludedFoldersTitle => 'བཀར་བའི་ཐག་ཁ་ཤོག་ཁང་';

  @override
  String get youExcludedFoldersDesc =>
      'གཏན་ནས་ཕྱེ་མེད་ཀྱི་ཐག་ཁ་ཤོག་ཁང་གི་གླུ་ཁྱེད་ཀྱི་གླུ་ཁང་ནས་བཀར་གི་ཡོད།';

  @override
  String get youVisSensitivity => 'མཐོང་རིག་གི་སེམས་ཤུགས་ཚད།';

  @override
  String get youVisSensitivitySub => 'གླུ་མི་བསྐྱོད་པ་ཡིན་ན་མཐོ་རུ་གཏོང་བ';

  @override
  String get youNerdMode => 'Nerd རྣམ་པ';

  @override
  String get youNerdModeSub =>
      'སྒྲོག་ཡོ་ཆས་ལ་ codec, bitrate དང་འབྱུང་འབྲས་སྟོན་པ';

  @override
  String get youEqualizer => 'ཆ་འདྲ་སྒྲིག་ཡོ་ཆས';

  @override
  String get youComingSoon => 'མྱུར་དུ་འབྱུང་གི་ཡོད';

  @override
  String get sleepTimer => 'གཉིད་དུས་ཚོད';

  @override
  String get sleep15 => 'སྐར་མ 15';

  @override
  String get sleep30 => 'སྐར་མ 30';

  @override
  String get sleep1h => 'ཆུ་ཚོད 1';

  @override
  String get sleepEndTrack => 'གླུ་ཐ་མར';

  @override
  String get sleepFading => 'ཉམས་འཛུལ་བྱེད་བཞིན་ཡོད།…རྨི་ལམ་བཟང་པོ';

  @override
  String sleepIn(String time) {
    return '$time ནས་གཉིད་ལོག་པ';
  }

  @override
  String get sleepEndTrackActive => 'གླུ་འདི་ཚར་ཚེ་གཉིད་ལོག་པ';

  @override
  String get sleepCancel => 'དུས་ཚོད་དོར་བ';

  @override
  String get queueUpNext => 'རྗེས་མ';

  @override
  String get queueEmpty => 'གླུ་ཐོ་སྟོང་པ';

  @override
  String get updateAvailable => 'ཡར་རྒྱས་ཡོད། ✨';

  @override
  String get updateNoNotes => 'རྣམ་གཞག་གི་བརྗོད་ཚིག་མེད།';

  @override
  String get updateInstalling => 'འཛུགས་ཆས་ཕྱེ་བཞིན་ཡོད།…';

  @override
  String get updateFailed => 'ཡར་རྒྱས་མ་ཐུབ། ཕྱིས་སུ་ཡང་བསྐྱར་ཚོད་ལྟ།';

  @override
  String get updateLater => 'ཕྱིས་སུ';

  @override
  String get updateRetry => 'ཡང་བསྐྱར་ཚོད་ལྟ';

  @override
  String get updateNow => 'ཡར་རྒྱས་གཏོང་བ';

  @override
  String get spatialToggleTitle => '360 མཁའ་ཁྱབ་སྒྲ';

  @override
  String get spatialOn => 'ཕྱེ་བ';

  @override
  String get spatialOff => 'གཏན་ནས་ཕྱེ་བ';

  @override
  String get lyricsNoFound => 'གླུ་ཚིག་མ་རྙེད།';

  @override
  String get lyricsJustListening => 'འདི་ཉན་པ་ཁོ་ནར་ཡིན།';

  @override
  String get lyricsTrySource => 'གཞན་པའི་ཁུངས་ཚོད་ལྟ';

  @override
  String get lyricsSource => 'གླུ་ཚིག་གི་ཁུངས།';

  @override
  String get lyricsWordSynced => 'ཡི་གེ་རེ་རེར་མཉམ་སྦྲེལ';

  @override
  String get lyricsLineSynced => 'ཐོག་ཡིག་རེ་རེར་མཉམ་སྦྲེལ';

  @override
  String get lyricsUnsynced => 'མཉམ་སྦྲེལ་མེད་པ';

  @override
  String get plNoPlaylists => 'གླུ་ཐོ་ད་དུང་མེད། སྔོན་ལ་གཅིག་བཟོ་དགོས།';

  @override
  String get plAddToPlaylist => 'གླུ་ཐོར་བསྣན་པ';

  @override
  String plAddedTo(String name) {
    return '$name ལ་བསྣན་ཟིན།';
  }

  @override
  String get shareLyrics => 'གླུ་ཚིག་བགོ་སྤྱོད';

  @override
  String get shareMaxLines => 'ཐོག་ཡིག་གི་མཐོ་ཤོས་ཚད་འདེམས་ཟིན།';

  @override
  String sharePickLines(int count) {
    return 'མཐོ་ཤོས $count ཐོག་ཡིག་འདེམས།';
  }

  @override
  String get sharePickHint => 'འོག་ཏུ་ཐོག་ཡིག་ཁ་ཤས་འདེམས།…';

  @override
  String get shareButton => 'བགོ་སྤྱོད';

  @override
  String get batTitle => 'གླུ་མུ་མཐུད་སྒྲོག་པར་གཏོང་བ 🎵';

  @override
  String get batBody =>
      'Android ཀྱི་བཅིངས་གྲོལ་གྱི་འཕྲུལ་ཆས་མངོན་གསལ་ཕྱེ་མེད་ཀྱི་སྐབས་སུ་ཁྱེད་ཀྱི་གླུ་ཆོད་སྲིད། Hana360 ལ་ཚད་མེད་པར་ལས་ཀ་བྱེད་དུ་འཇུག་དགོས།';

  @override
  String get batNotNow => 'ད་ལྟ་མིན།';

  @override
  String get batAllow => 'ཆོག་མཆན';

  @override
  String get algoSwitch => 'ཨལ་གོ་རིཐམ';

  @override
  String get speakerDistance => 'སྒྲ་སྤེལ་གྱི་རྒྱང་ཐག';

  @override
  String get channelTrim => 'སྒྲ་ལམ་གྱི་བསྐྱར་སྒྲིག';

  @override
  String get masterGain => 'གཙོ་བོའི་སྒྲ་ཚད';

  @override
  String get secHrtf => 'HRTF སྒེར་བསྐྱར';

  @override
  String get outputGain => 'འབྱུང་འབྲས་ཀྱི་སྒྲ་ཚད';

  @override
  String get secEq => 'མཁའ་ཁྱབ་ EQ';

  @override
  String get secReverb => 'བསྐྱར་སྒྲ';

  @override
  String get roomSize => 'ཁང་པ';

  @override
  String get reverbGain => 'བསྐྱར་སྒྲའི་ཚད';

  @override
  String get secTracking => 'མགོ་ཟུར་རྗེས་འདེད';

  @override
  String get trackOff => 'གཏན་ནས་ཕྱེ་བ';

  @override
  String get trackSensor => 'ཁ་ལག་གི་སེན་སོར';

  @override
  String get trackManual => 'ལག་སྟོང་ XY';

  @override
  String get dragHint =>
      'མགོའི་ཕྱོགས་བསྐྱར་སྒྲིག་བྱེད་པར་འདེགས་པ (སྒྲའི་ཞིང་ཁ་རྗེས་སུ་འགྲོ)';

  @override
  String get customEq => 'རང་སྒྲིག';

  @override
  String get eqPresetMusic => 'གླུ་གཞས';

  @override
  String get eqPresetCinema => 'གློག་བརྙན།';

  @override
  String get eqPresetGame => 'རྩེད་མོ།';

  @override
  String get eqPresetVoice => 'སྐད་སྒྲ།';

  @override
  String get hrtfGroup0 => 'ཕོ། / མགོ་ཆུང་། / རྣ་བ་ཆུང་།';

  @override
  String get hrtfGroup1 => 'ཕོ། / མགོ་ཆུང་། / རྣ་བ་འབྲིང་།';

  @override
  String get hrtfGroup2 => 'ཕོ། / མགོ་ཆུང་། / རྣ་བ་ཆེ།';

  @override
  String get hrtfGroup3 => 'ཕོ། / མགོ་འབྲིང་། / རྣ་བ་ཆུང་།';

  @override
  String get hrtfGroup4 => 'ཕོ། / མགོ་འབྲིང་། / རྣ་བ་འབྲིང་།';

  @override
  String get hrtfGroup5 => 'ཕོ། / མགོ་འབྲིང་། / རྣ་བ་ཆེ།';

  @override
  String get hrtfGroup6 => 'ཕོ། / མགོ་ཆེ། / རྣ་བ་ཆུང་།';

  @override
  String get hrtfGroup7 => 'ཕོ། / མགོ་ཆེ། / རྣ་བ་འབྲིང་།';

  @override
  String get hrtfGroup8 => 'ཕོ། / མགོ་ཆེ། / རྣ་བ་ཆེ།';

  @override
  String get hrtfGroup9 => 'མོ། / མགོ་ཆུང་། / རྣ་བ་ཆུང་།';

  @override
  String get hrtfGroup10 => 'མོ། / མགོ་ཆུང་། / རྣ་བ་འབྲིང་།';

  @override
  String get hrtfGroup11 => 'མོ། / མགོ་ཆུང་། / རྣ་བ་ཆེ།';

  @override
  String get hrtfGroup12 => 'མོ། / མགོ་འབྲིང་། / རྣ་བ་ཆུང་།';

  @override
  String get hrtfGroup13 => 'མོ། / མགོ་འབྲིང་། / རྣ་བ་འབྲིང་།';

  @override
  String get hrtfGroup14 => 'མོ། / མགོ་འབྲིང་། / རྣ་བ་ཆེ།';

  @override
  String get navHome => 'ཐོག་ངོས།';

  @override
  String get navLibrary => 'གླུ་ཁང་།';

  @override
  String get navPlaying => 'སྒྲོག་བཞིན་པ';

  @override
  String get navYou => 'ཁྱེད་རང་།';

  @override
  String get tabSongs => 'གླུ་གཞས།';

  @override
  String get tabAlbums => 'གླུ་དེབ།';

  @override
  String get tabFolders => 'ཐག་ཁ་ཤོག་ཁང་།';

  @override
  String get tabPlaylists => 'གླུ་ཐོ།';

  @override
  String get youMood => 'སེམས་ཁམས།';

  @override
  String get youCompanion => 'ཁྱེད་ཀྱི་གྲོགས་པོ།';

  @override
  String get youBuddies => 'གྲོགས་པོ།';

  @override
  String get youSound => 'སྒྲ།';

  @override
  String get youMore => 'དེ་བས་མང་བ།';

  @override
  String get themeCherryBlossom => 'ཨ་མེ་ལི་ཡའི་མེ་ཏོག';

  @override
  String get themeStarryNight => 'སྐར་མ་ལྡན་པའི་མཚན་མོ།';

  @override
  String get themeAdaptiveLight => 'རང་འགྱུར་གྱི་འོད་སྣང་།';

  @override
  String get themeAdaptiveDark => 'རང་འགྱུར་གྱི་མུན་སྣང་།';

  @override
  String youListenedTogether(int h, int m) {
    return 'མཉམ་དུ་ཆུ་ཚོད $h སྐར་མ $m ཉན་ཟིན།';
  }

  @override
  String get buddyHana => 'Hanon 花音';

  @override
  String get buddyHanaHome => 'ཐོག་མཇུག་དང་སྒྲོག་ངོས།';

  @override
  String get buddyParrot => 'Qingyu 青羽';

  @override
  String get buddyParrotHome => 'གླུ་ཁང་གི་མཚན་སྟེང་སྡོད་ཀྱི་ཡོད།';

  @override
  String get buddyCat => 'Yuemian 月眠';

  @override
  String get buddyCatHome => 'སྒྲོག་ཡོ་ཆས་ཆུང་ངུའི་སྟེང་གཉིད་ཀྱི་ཡོད།';

  @override
  String get buddyDuck => 'Paopao 泡泡';

  @override
  String get buddyDuckHome => 'དགའ་པོའི་གླུ་སྟེང་འཁོར་གྱི་ཡོད།';

  @override
  String get buddyFireflies => 'Xingchen 星尘';

  @override
  String get buddyFirefliesHome => 'མུན་སྣང་གི་ངོས་སུ་འོད་འཕྲོ་གི་ཡོད།';

  @override
  String get accBow => 'སྨུག་པོའི་ཕྱེ་ལེབ།';

  @override
  String get accHeadphones => 'སྒྲ་ཉན་ཡོ་ཆས་ཆུང་ངུ།';

  @override
  String get accFlower => 'མེ་ཏོག';

  @override
  String get accCrown => 'རྒྱལ་ཟོག་ཆུང་ངུ།';

  @override
  String accUnlockLabel(int h) {
    return 'ཆུ་ཚོད $h ཉན་ནས་ཕྱེ་གི་ཡོད།';
  }

  @override
  String get youCrossfade => 'སྒྲ་འདྲེས།';

  @override
  String get youCrossfadeSub => 'གླུ་ཐ་མའི་མཇུག་རྗེས་མར་འདྲེས་གཏོང་བ།';

  @override
  String get youSmartShuffle => 'མཁས་ལྡན་གྱི་འཁོར་སྒྲོག།';

  @override
  String get youSmartShuffleSub =>
      'འཁོར་སྒྲོག་ཁྱེད་ཀྱི་དགའ་པོར་གཞོལ་གྱི་ཡོད། ལག་ཆ་འདི་སྟེང་རྩིས་པ';

  @override
  String get libLikedSongs => 'དགའ་པོའི་གླུ།';

  @override
  String get libTapHeart => 'གླུའི་སེམས་པ་ལ་ནོན་ན་འདིར་ཉར་ཚགས་བྱེད་གི་ཡོད།';

  @override
  String get libRemovedFromQueue => 'གླུ་ཐོ་ནས་བཕྲིད་ཟིན།';

  @override
  String get libRemovedFromLibrary => 'གླུ་ཁང་ནས་བཕྲིད་ཟིན།';

  @override
  String get libRemoveFromLibrary => 'གླུ་ཁང་ནས་བཕྲིད་པ།';

  @override
  String get libNewPlaylist => 'གླུ་ཐོ་གསར་པ།';

  @override
  String get libPlaylistName => 'གླུ་ཐོའི་མཚན།';

  @override
  String get libCreate => 'བཟོ་བ།';

  @override
  String get libSwipeHint =>
      'གཡོན་ཕྱོགས་སུ་ཕྱིར་འཕྱིད་ནས་བཕྲིད་པ · རིང་པོར་ནོན་ནས་གོ་རིམ་སྒྲིག་པ།';

  @override
  String get libChooseCover => 'ཁ་སྒྲོམ་གྱི་པར་འདེམས།';

  @override
  String get libBackToArtCover => 'གླུའི་ཁ་སྒྲོམ་ལ་ཕྱིར་ལོག';

  @override
  String libDeleteConfirm(String name) {
    return '«$name» གཏོར་བ་གནང་ངམ།';
  }

  @override
  String get libDeleteKeepSongs => 'གླུ་རང་ཉིད་ཁྱེད་ཀྱི་ལག་ཆ་སྟེང་ལུས་གི་ཡོད།';

  @override
  String get libKeep => 'ཉར་ཚགས།';

  @override
  String get libDelete => 'གཏོར་བ།';

  @override
  String get libRemoveKeepFile =>
      'ཡིག་ཚགས་རང་ཉིད་ཁྱེད་ཀྱི་ལག་ཆ་སྟེང་ལུས་གི་ཡོད།';

  @override
  String get libClearConfirm => 'ཡིག་ཚགས་ཐམས་ཅད་བཕྲིད་པ་གནང་ངམ།';

  @override
  String get libLibraryCleared => 'གླུ་ཁང་གཙང་བཤལ་བྱས་ཟིན།';

  @override
  String get libPickAudioFiles => 'སྒྲ་ཡིག་ཚགས་འདེམས།…';

  @override
  String get libImportFolder => 'ཐག་ཁ་ཤོག་ཁང་ཡོངས་འདྲེན།';

  @override
  String get libScanWholeFolder =>
      'ཐག་ཁ་ཤོག་ཁང་ཡོངས་རྫོགས་ཞིབ་བཤེར (གོང་འཕེལ་བྱས་པ)';

  @override
  String libImportFailed(String error) {
    return 'ཡོངས་འདྲེན་ཕམ་སོང་། $error';
  }

  @override
  String get libNoAudioFound => 'སྒྲ་ཡིག་ཚགས་མ་རྙེད།';

  @override
  String libImportedCount(int count) {
    return 'གླུ་གཞས $count ཡོངས་འདྲེན་བྱས་ཟིན།';
  }

  @override
  String get libNothingHere =>
      'ད་དུང་གང་ཡང་མེད། གཡོན་ཕྱོགས་སུ་ཕྱིར་འཕྱིད་ནས་བཕྲིད་པ · རིང་པོར་ནོན་ནས་སྒྲིག་པ།';

  @override
  String get sidebarYourLibrary => 'ཁྱེད་ཀྱི་གླུ་ཁང་།';

  @override
  String get sidebarPlaylists => 'གླུ་ཐོ།';

  @override
  String get sidebarFolders => 'ཐག་ཁ་ཤོག་ཁང་།';

  @override
  String get rowQueue => 'གླུ་ཐོར་བསྣན་པ།';

  @override
  String get rowRemove => 'བཕྲིད་པ།';

  @override
  String get rowPlaylist => 'གླུ་ཐོ།';

  @override
  String plTrackCount(int count) {
    return '$count གླུ།';
  }

  @override
  String get lyricsSourceAuto => 'རང་འགྱུར།';

  @override
  String get lyricsSourceEmbedded => 'ནང་དུ་བཅུག་པ';

  @override
  String get lyricsSourceBestQuality => 'ཡོད་པའི་ནང་གི་ཆེས་ལེགས་པའི་སྤུས་ཚད།';

  @override
  String get lyricsSourceFileTags => 'སྒྲ་ཡིག་ཚགས་རང་ཉིད་ཀྱི་བརྡ་ཐོན་ལས།';

  @override
  String get lyricsSourceWordOnline => 'ཡི་གེ་རེ་རེར་མཉམ་སྦྲེལ (དྲ་ཐོག)';

  @override
  String get lyricsSourceLineOnline => 'ཐོག་ཡིག་རེ་རེར་མཉམ་སྦྲེལ (དྲ་ཐོག)';

  @override
  String get lyricsSourceNotFound => 'གླུ་འདིའི་ཆེད་དུ་མ་རྙེད།';

  @override
  String get npCatModeUnlocked => 'མྱའུ། བྱི་ལའི་རྣམ་པ་ཕྱེ་ཟིན། 🐱';

  @override
  String get shellResumePlayback => 'མུ་མཐུད་སྒྲོག་པ།';

  @override
  String get shellPlay => 'སྒྲོག་པ།';

  @override
  String get devSection => 'འཕྲུལ་རྩལ་པ།';

  @override
  String get devModeUnlocked => '🛠️ འཕྲུལ་རྩལ་པའི་རྣམ་པ་ཕྱེ་ཟིན།';

  @override
  String get devUnlockAll => 'ཆ་ཆས་ཐམས་ཅད་ཕྱེ་བ།';

  @override
  String get devClearLyricsCache => 'གླུ་ཚིག་གི་ཉར་ཚགས་གཙང་བཤལ།';

  @override
  String get devRefetchLyrics => 'གླུ་ཚིག་ཐམས་ཅད་ཡང་བསྐྱར་འཐོབ་པ།…';

  @override
  String get devLyricsCleared => 'གླུ་ཚིག་གི་ཉར་ཚགས་གཙང་བཤལ་བྱས་ཟིན།';

  @override
  String get devHideOptions => 'འཕྲུལ་རྩལ་པའི་འདེམས་ཐོ་སྦས་པ།';

  @override
  String get devModeOff => 'འཕྲུལ་རྩལ་པའི་རྣམ་པ་གཏན་ནས་ཕྱེ་ཟིན།';

  @override
  String get youCantReadFolders => 'ཁྱེད་ཀྱི་གླུའི་ཐག་ཁ་ཤོག་ཁང་ཀློག་མ་ཐུབ།';

  @override
  String get youNoMusicFolders => 'གླུའི་ཐག་ཁ་ཤོག་ཁང་མ་རྙེད།';
}
