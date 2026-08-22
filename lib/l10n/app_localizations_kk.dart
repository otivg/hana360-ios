// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kazakh (`kk`).
class AppLocalizationsKk extends AppLocalizations {
  AppLocalizationsKk([String locale = 'kk']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'Тіл';

  @override
  String get languageFollowSystem => 'Жүйені қадағалау';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Baseus × Hanamimi';

  @override
  String get commonCancel => 'Болдырмау';

  @override
  String get commonConfirm => 'Жарайды';

  @override
  String get commonBack => 'Қайту';

  @override
  String get commonDone => 'Аяқталды';

  @override
  String get commonUnknown => 'Белгісіз';

  @override
  String get secUpmix => 'Upmix қозғалтқышы';

  @override
  String get spatialAudioTitle => '360 кеңістіктік дыбыс';

  @override
  String get npNothingPlaying => 'Ештеңе ойнап тұрған жоқ';

  @override
  String get npPickSong => 'Кітапханаңыздан ән таңдаңыз';

  @override
  String get npSpatialSettings => '360 баптаулар';

  @override
  String get npLyrics => 'Ән мәтіні';

  @override
  String get libSearchHint => 'Музыкаңызды іздеу…';

  @override
  String get libClearLibrary => 'Кітапхананы тазалау';

  @override
  String get libImportMusic => 'Музыка импорттау';

  @override
  String libError(String error) {
    return 'Қате орын алды: $error';
  }

  @override
  String libNoMatch(String query) {
    return '«$query» сәйкес ештеңе табылмады';
  }

  @override
  String get libPermissionDenied =>
      'Hana360 музыкаңызды табу үшін рұқсат қажет\nБұл құрылғыда қолжетімділік жоқ па? Импорттаңыз.';

  @override
  String get libNoSongs =>
      'Бұл құрылғыда ән табылмады\nФайлдарыңыздан музыка импорттаңыз';

  @override
  String get libGrantAccess => 'Қолжетімділік беру';

  @override
  String get libRescan => 'Қайта сканерлеу';

  @override
  String get libAddedToQueue => 'Кезекке қосылды';

  @override
  String get libNoAlbums => 'Әлі альбом жоқ';

  @override
  String get libNoFolders => 'Әлі бума жоқ';

  @override
  String get libNoPlaylists => 'Әлі ойнату тізімі жоқ';

  @override
  String libPlaylistCreated(String name) {
    return '«$name» ойнату тізімі жасалды 🌸';
  }

  @override
  String get libFolderHint => 'буманы ұзақ басып ойнату тізіміне айналдыру';

  @override
  String libSongCount(int count) {
    return '$count ән';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count ән · $path';
  }

  @override
  String get homeGreetingLate => 'Түн ортасында әлі ояу ♪';

  @override
  String get homeGreetingMorning => 'Қайырлы таң ♪';

  @override
  String get homeGreetingAfternoon => 'Қайырлы күн ♪';

  @override
  String get homeGreetingEvening => 'Қайырлы кеш ♪';

  @override
  String get homeJumpBackIn => 'ТЫҢДАУДЫ ЖАЛҒАСТЫРУ';

  @override
  String get homeForYou => 'СІЗГЕ АРНАЛҒАН';

  @override
  String get homeForYouSub =>
      'тыңдау тарихыңызға сүйеніп, осы құрылғыда таңдалды';

  @override
  String get homeWelcome => 'Hana360-ға қош келдіңіз 🌸';

  @override
  String get homeAllQuiet => 'Бәрі тыныш 🌸';

  @override
  String get homeLibraryHint =>
      'Музыкаңыз Кітапхана қойындысында — сол жерге бума қосыңыз. Ойнатқандарыңыз осында жиналады.';

  @override
  String get homePlayHint => 'Бірдеңе ойнатыңыз, келесі жолы ол осында күтеді.';

  @override
  String get youRescanLibrary => 'Кітапхананы қайта сканерлеу';

  @override
  String get youExcludedFolders => 'Алып тасталған бумалар';

  @override
  String get youExcludedFoldersSub => 'Кітапханадан бумаларды жасыру';

  @override
  String get youCatMode => 'Мысық режимі';

  @override
  String get youAbout => 'Туралы';

  @override
  String get youScanning => 'Музыкаңыз сканерленуде…';

  @override
  String get youOpenSource => 'Ашық бастапқы код';

  @override
  String get youOpenSourceSub =>
      'Hana360 — ShaptakNaskar-дың Hanamimi (GPLv3) туындысы — 2026-08-10 өзгертілген';

  @override
  String get youCheckUpdates => 'Жаңартуларды тексеру';

  @override
  String get youCheckUpdatesSub => 'Жаңа нұсқалар GitHub Releases-те шығады';

  @override
  String get youUpToDate => 'Сіз соңғы нұсқадасыз 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Sappy жасаған';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'Фонда жалғастырып ойнату';

  @override
  String get youKeepPlayingAllowed =>
      'Рұқсат етілді — жүйе музыкаңызды тоқтатпайды';

  @override
  String get youKeepPlayingTap =>
      'Жүйенің ойнатуды тоқтатуын болдырмау үшін түртіңіз';

  @override
  String get youExcludedFoldersTitle => 'Алып тасталған бумалар';

  @override
  String get youExcludedFoldersDesc =>
      'өшірілген бумадағы әндер кітапханаңыздан алып тасталады';

  @override
  String get youVisSensitivity => 'Көрнекілендіргіш сезімталдығы';

  @override
  String get youVisSensitivitySub => 'әрең қозғалатын әндер үшін арттыру';

  @override
  String get youNerdMode => 'Nerd режимі';

  @override
  String get youNerdModeSub => 'Ойнатқышта codec, bitrate және шығысты көрсету';

  @override
  String get youEqualizer => 'Эквалайзер';

  @override
  String get youComingSoon => 'Жақында шығады';

  @override
  String get sleepTimer => 'Ұйқы таймері';

  @override
  String get sleep15 => '15 минут';

  @override
  String get sleep30 => '30 минут';

  @override
  String get sleep1h => '1 сағат';

  @override
  String get sleepEndTrack => 'Ән аяқталғанда';

  @override
  String get sleepFading => 'Ақырындап сөніп барады… тәтті түс';

  @override
  String sleepIn(String time) {
    return '$time ішінде ұйықтау';
  }

  @override
  String get sleepEndTrackActive => 'Бұл ән аяқталғанда ұйықтау';

  @override
  String get sleepCancel => 'Таймерді болдырмау';

  @override
  String get queueUpNext => 'Келесі';

  @override
  String get queueEmpty => 'Кезек бос';

  @override
  String get updateAvailable => 'Жаңарту бар ✨';

  @override
  String get updateNoNotes => 'Шығарылым жазбасы жоқ.';

  @override
  String get updateInstalling => 'Орнатушы ашылуда…';

  @override
  String get updateFailed => 'Жаңарту сәтсіз — кейінірек қайталаңыз';

  @override
  String get updateLater => 'Кейінірек';

  @override
  String get updateRetry => 'Қайталау';

  @override
  String get updateNow => 'Жаңарту';

  @override
  String get spatialToggleTitle => '360 кеңістіктік дыбыс';

  @override
  String get spatialOn => 'Қосу';

  @override
  String get spatialOff => 'Өшіру';

  @override
  String get lyricsNoFound => 'Ән мәтіні табылмады';

  @override
  String get lyricsJustListening => 'Бұл тек тыңдауға арналған';

  @override
  String get lyricsTrySource => 'Басқа көзді көріңіз';

  @override
  String get lyricsSource => 'Мәтін көзі';

  @override
  String get lyricsWordSynced => 'Сөзбе-сөз синхрондалған';

  @override
  String get lyricsLineSynced => 'Жолма-жол синхрондалған';

  @override
  String get lyricsUnsynced => 'Синхрондалмаған';

  @override
  String get plNoPlaylists =>
      'Әлі ойнату тізімі жоқ — алдымен біреуін жасаңыз!';

  @override
  String get plAddToPlaylist => 'Ойнату тізіміне қосу';

  @override
  String plAddedTo(String name) {
    return '$name ішіне қосылды';
  }

  @override
  String get shareLyrics => 'Ән мәтінін бөлісу';

  @override
  String get shareMaxLines => 'Жолдардың максималды саны таңдалды';

  @override
  String sharePickLines(int count) {
    return 'Ең көбі $count жол таңдаңыз';
  }

  @override
  String get sharePickHint => 'Төменде бірнеше жол таңдаңыз…';

  @override
  String get shareButton => 'Бөлісу';

  @override
  String get batTitle => 'Музыка жалғаса берсін 🎵';

  @override
  String get batBody =>
      'Android-тің батарея оңтайландыруы экран өшкенде музыкаңызды тоқтатуы мүмкін. Hana360-ға шектеусіз жұмыс істеуге рұқсат беріңіз.\n\nОны You → «Фонда жалғастырып ойнату» бөлімінен өзгерте аласыз.';

  @override
  String get batNotNow => 'Қазір емес';

  @override
  String get batAllow => 'Рұқсат беру';

  @override
  String get algoSwitch => 'Алгоритм';

  @override
  String get speakerDistance => 'Дыбыстағыш қашықтығы';

  @override
  String get channelTrim => 'Арна реттеуі';

  @override
  String get masterGain => 'Негізгі деңгей';

  @override
  String get secHrtf => 'HRTF жекелендіру';

  @override
  String get outputGain => 'Шығыс деңгейі';

  @override
  String get secEq => 'Кеңістіктік EQ';

  @override
  String get secReverb => 'Жаңғырық';

  @override
  String get roomSize => 'Бөлме';

  @override
  String get reverbGain => 'Жаңғырық деңгейі';

  @override
  String get secTracking => 'Бас қадағалау';

  @override
  String get trackOff => 'Өшіру';

  @override
  String get trackSensor => 'Телефон сенсоры';

  @override
  String get trackManual => 'Қолмен XY';

  @override
  String get dragHint => 'Бас бағытын реттеу үшін сүйреңіз (дыбыс өрісі ереді)';

  @override
  String get customEq => 'Теңшеу';

  @override
  String get eqPresetMusic => 'Музыка';

  @override
  String get eqPresetCinema => 'Кино';

  @override
  String get eqPresetGame => 'Ойын';

  @override
  String get eqPresetVoice => 'Дауыс';

  @override
  String get hrtfGroup0 => 'Ер / Кіші бас / Кіші құлақ';

  @override
  String get hrtfGroup1 => 'Ер / Кіші бас / Орта құлақ';

  @override
  String get hrtfGroup2 => 'Ер / Кіші бас / Үлкен құлақ';

  @override
  String get hrtfGroup3 => 'Ер / Орта бас / Кіші құлақ';

  @override
  String get hrtfGroup4 => 'Ер / Орта бас / Орта құлақ';

  @override
  String get hrtfGroup5 => 'Ер / Орта бас / Үлкен құлақ';

  @override
  String get hrtfGroup6 => 'Ер / Үлкен бас / Кіші құлақ';

  @override
  String get hrtfGroup7 => 'Ер / Үлкен бас / Орта құлақ';

  @override
  String get hrtfGroup8 => 'Ер / Үлкен бас / Үлкен құлақ';

  @override
  String get hrtfGroup9 => 'Әйел / Кіші бас / Кіші құлақ';

  @override
  String get hrtfGroup10 => 'Әйел / Кіші бас / Орта құлақ';

  @override
  String get hrtfGroup11 => 'Әйел / Кіші бас / Үлкен құлақ';

  @override
  String get hrtfGroup12 => 'Әйел / Орта бас / Кіші құлақ';

  @override
  String get hrtfGroup13 => 'Әйел / Орта бас / Орта құлақ';

  @override
  String get hrtfGroup14 => 'Әйел / Орта бас / Үлкен құлақ';

  @override
  String get navHome => 'Басты бет';

  @override
  String get navLibrary => 'Кітапхана';

  @override
  String get navPlaying => 'Ойнап тұр';

  @override
  String get navYou => 'Сіз';

  @override
  String get tabSongs => 'Әндер';

  @override
  String get tabAlbums => 'Альбомдар';

  @override
  String get tabFolders => 'Бумалар';

  @override
  String get tabPlaylists => 'Ойнату тізімдері';

  @override
  String get youMood => 'Көңіл-күй';

  @override
  String get youCompanion => 'Сіздің серігіңіз';

  @override
  String get youBuddies => 'Достар';

  @override
  String get youSound => 'Дыбыс';

  @override
  String get youMore => 'Толығырақ';

  @override
  String get themeCherryBlossom => 'Шие гүлі';

  @override
  String get themeStarryNight => 'Жұлдызды түн';

  @override
  String get themeAdaptiveLight => 'Бейімделгіш жарық';

  @override
  String get themeAdaptiveDark => 'Бейімделгіш қараңғы';

  @override
  String youListenedTogether(int h, int m) {
    return 'Бірге $h сағат $m минут тыңдадыңыз';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'Тақырыпша және ойнатқыш';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'Кітапхана тақырыбына қонады';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'Мини ойнатқышта ұйықтайды';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'Ұнаған әндердің үстінде жүреді';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'Қараңғы тақырыптарда жарқырайды';

  @override
  String get accBow => 'Қызғылт бантик';

  @override
  String get accHeadphones => 'Кіші құлаққап';

  @override
  String get accFlower => 'Гүл';

  @override
  String get accCrown => 'Кіші тәж';

  @override
  String accUnlockLabel(int h) {
    return '$h сағат тыңдап ашу';
  }

  @override
  String get youCrossfade => 'Кроссфейд';

  @override
  String get youCrossfadeSub => 'Ән соңын келесіге араластыру';

  @override
  String get youSmartShuffle => 'Ақылды араластыру';

  @override
  String get youSmartShuffleSub =>
      'Араластыру сіздің таңдаулыларыңызға бейім — осы құрылғыда есептеледі';

  @override
  String get libLikedSongs => 'Ұнаған әндер';

  @override
  String get libTapHeart => 'Әндегі жүректі түртіп осында сақтаңыз';

  @override
  String get libRemovedFromQueue => 'Кезектен алынды';

  @override
  String get libRemovedFromLibrary => 'Кітапханадан алынды';

  @override
  String get libRemoveFromLibrary => 'Кітапханадан алу';

  @override
  String get libNewPlaylist => 'Жаңа ойнату тізімі';

  @override
  String get libPlaylistName => 'Ойнату тізімінің аты';

  @override
  String get libCreate => 'Жасау';

  @override
  String get libSwipeHint => 'солға сырғытып алу · ұзақ басып реттеу';

  @override
  String get libChooseCover => 'Мұқаба суретін таңдау';

  @override
  String get libBackToArtCover => 'Ән мұқабасына қайту';

  @override
  String libDeleteConfirm(String name) {
    return '«$name» жойылсын ба?';
  }

  @override
  String get libDeleteKeepSongs => 'Әндердің өзі құрылғыңызда қалады';

  @override
  String get libKeep => 'Сақтау';

  @override
  String get libDelete => 'Жою';

  @override
  String get libRemoveKeepFile => 'Файлдың өзі құрылғыңызда қалады';

  @override
  String get libClearConfirm => 'Барлық файлды алып тастау керек пе?';

  @override
  String get libLibraryCleared => 'Кітапхана тазаланды';

  @override
  String get libPickAudioFiles => 'Аудио файлдарды таңдау…';

  @override
  String get libImportFolder => 'Бума импорттау';

  @override
  String get libScanWholeFolder => 'Бүкіл буманы сканерлеу… (ұсынылады)';

  @override
  String libImportFailed(String error) {
    return 'Импорт сәтсіз: $error';
  }

  @override
  String get libNoAudioFound => 'Аудио файл табылмады';

  @override
  String libImportedCount(int count) {
    return '$count ән импортталды';
  }

  @override
  String get libNothingHere =>
      'Әзірге ештеңе жоқ — солға сырғытып алу, ұзақ басып реттеу';

  @override
  String get sidebarYourLibrary => 'СІЗДІҢ КІТАПХАНАҢЫЗ';

  @override
  String get sidebarPlaylists => 'ОЙНАТУ ТІЗІМДЕРІ';

  @override
  String get sidebarFolders => 'БУМАЛАР';

  @override
  String get rowQueue => 'Кезек';

  @override
  String get rowRemove => 'Алу';

  @override
  String get rowPlaylist => 'Ойнату тізімі';

  @override
  String plTrackCount(int count) {
    return '$count трек';
  }

  @override
  String get lyricsSourceAuto => 'Авто';

  @override
  String get lyricsSourceEmbedded => 'Ендірілген';

  @override
  String get lyricsSourceBestQuality => 'Қолжетімді ең жақсы сапа';

  @override
  String get lyricsSourceFileTags => 'Аудио файлдың өз тегтерінен';

  @override
  String get lyricsSourceWordOnline => 'Сөзбе-сөз синхрон (онлайн)';

  @override
  String get lyricsSourceLineOnline => 'Жолма-жол синхрон (онлайн)';

  @override
  String get lyricsSourceNotFound => 'Бұл ән үшін табылмады';

  @override
  String get npCatModeUnlocked => 'Мияу?! Мысық режимі ашылды 🐱';

  @override
  String get shellResumePlayback => 'Ойнатуды жалғастыру';

  @override
  String get shellPlay => 'ОЙНАТУ';

  @override
  String get devSection => 'ӘЗІРЛЕУШІ';

  @override
  String get devModeUnlocked => '🛠️ Әзірлеуші режимі ашылды';

  @override
  String get devUnlockAll => 'Барлық керек-жарақты ашу';

  @override
  String get devClearLyricsCache => 'Ән мәтіні кэшін тазалау';

  @override
  String get devRefetchLyrics => 'Барлық ән мәтінін қайта алу…';

  @override
  String get devLyricsCleared => 'Ән мәтіні кэші тазаланды';

  @override
  String get devHideOptions => 'Әзірлеуші опцияларын жасыру';

  @override
  String get devModeOff => 'Әзірлеуші режимі өшірілді';

  @override
  String get youCantReadFolders => 'Музыка бумаларыңызды оқу мүмкін болмады';

  @override
  String get youNoMusicFolders => 'Музыка бумасы табылмады';
}
