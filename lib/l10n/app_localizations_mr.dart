// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'भाषा';

  @override
  String get languageFollowSystem => 'सिस्टम फॉलो करा';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Baseus × Hanamimi';

  @override
  String get commonCancel => 'रद्द करा';

  @override
  String get commonConfirm => 'ठीक आहे';

  @override
  String get commonBack => 'मागे';

  @override
  String get commonDone => 'पूर्ण झाले';

  @override
  String get commonUnknown => 'अज्ञात';

  @override
  String get secUpmix => 'अपमिक्स इंजिन';

  @override
  String get spatialAudioTitle => '360 स्पेशल ऑडिओ';

  @override
  String get npNothingPlaying => 'काहीही चालू नाही';

  @override
  String get npPickSong => 'तुमच्या लायब्ररीतून एक गाणे निवडा';

  @override
  String get npSpatialSettings => '360 सेटिंग्ज';

  @override
  String get npLyrics => 'गीत';

  @override
  String get libSearchHint => 'तुमचे संगीत शोधा…';

  @override
  String get libClearLibrary => 'लायब्ररी रिकामी करा';

  @override
  String get libImportMusic => 'संगीत आयात करा';

  @override
  String libError(String error) {
    return 'काहीतरी चूक झाली: $error';
  }

  @override
  String libNoMatch(String query) {
    return '\"$query\" शी काहीही जुळले नाही';
  }

  @override
  String get libPermissionDenied =>
      'तुमचे संगीत शोधण्यासाठी Hana360 ला परवानगी हवी आहे\nया डिव्हाइसवर प्रवेश नाही? आयात करा.';

  @override
  String get libNoSongs =>
      'या डिव्हाइसवर गाणी सापडली नाहीत\nतुमच्या फाइल्समधून संगीत आयात करा';

  @override
  String get libGrantAccess => 'प्रवेश द्या';

  @override
  String get libRescan => 'पुन्हा स्कॅन करा';

  @override
  String get libAddedToQueue => 'रांगेत जोडले';

  @override
  String get libNoAlbums => 'अजून अल्बम नाहीत';

  @override
  String get libNoFolders => 'अजून फोल्डर नाहीत';

  @override
  String get libNoPlaylists => 'अजून प्लेलिस्ट नाहीत';

  @override
  String libPlaylistCreated(String name) {
    return 'प्लेलिस्ट \"$name\" तयार झाली 🌸';
  }

  @override
  String get libFolderHint => 'फोल्डरला प्लेलिस्ट बनवण्यासाठी दाबून ठेवा';

  @override
  String libSongCount(int count) {
    return '$count गाणी';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count गाणी · $path';
  }

  @override
  String get homeGreetingLate => 'रात्री उशिरा जागे आहात ♪';

  @override
  String get homeGreetingMorning => 'शुभ सकाळ ♪';

  @override
  String get homeGreetingAfternoon => 'शुभ दुपार ♪';

  @override
  String get homeGreetingEvening => 'शुभ संध्याकाळ ♪';

  @override
  String get homeJumpBackIn => 'ऐकणे सुरू ठेवा';

  @override
  String get homeForYou => 'तुमच्यासाठी';

  @override
  String get homeForYouSub =>
      'तुमच्या ऐकण्याच्या इतिहासावरून, या डिव्हाइसवर निवडले';

  @override
  String get homeWelcome => 'Hana360 मध्ये स्वागत 🌸';

  @override
  String get homeAllQuiet => 'सगळे शांत 🌸';

  @override
  String get homeLibraryHint =>
      'तुमचे संगीत लायब्ररी टॅबमध्ये आहे — तेथे फोल्डर जोडा. तुम्ही जे वाजवता ते सगळे इथे जमते.';

  @override
  String get homePlayHint =>
      'काहीतरी वाजवा आणि पुढच्या वेळी ते इथे तुमची वाट पाहील.';

  @override
  String get youRescanLibrary => 'लायब्ररी पुन्हा स्कॅन करा';

  @override
  String get youExcludedFolders => 'वगळलेले फोल्डर';

  @override
  String get youExcludedFoldersSub => 'तुमच्या लायब्ररीतून फोल्डर लपवा';

  @override
  String get youCatMode => 'मांजर मोड';

  @override
  String get youAbout => 'बद्दल';

  @override
  String get youScanning => 'तुमचे संगीत स्कॅन होत आहे…';

  @override
  String get youOpenSource => 'ओपन सोर्स';

  @override
  String get youOpenSourceSub =>
      'Hana360 हे ShaptakNaskar च्या Hanamimi (GPLv3) ची व्युत्पत्ती आहे — 2026-08-10 रोजी बदलले';

  @override
  String get youCheckUpdates => 'अपडेट तपासा';

  @override
  String get youCheckUpdatesSub => 'नवीन बिल्ड GitHub Releases वर येतात';

  @override
  String get youUpToDate => 'तुम्ही नवीनतम आवृत्तीवर आहात 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Sappy ने बनवले';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'पार्श्वभूमीत वाजवत राहा';

  @override
  String get youKeepPlayingAllowed =>
      'परवानगी दिली — सिस्टम तुमचे संगीत थांबवणार नाही';

  @override
  String get youKeepPlayingTap =>
      'सिस्टम प्लेबॅक थांबवण्यापासून रोखण्यासाठी टॅप करा';

  @override
  String get youExcludedFoldersTitle => 'वगळलेले फोल्डर';

  @override
  String get youExcludedFoldersDesc =>
      'बंद केलेल्या फोल्डरमधील गाणी तुमच्या लायब्ररीतून वगळली जातात';

  @override
  String get youVisSensitivity => 'व्हिज्युअलायझर संवेदनशीलता';

  @override
  String get youVisSensitivitySub => 'क्वचित हलणाऱ्या गाण्यांसाठी वाढवा';

  @override
  String get youNerdMode => 'नर्ड मोड';

  @override
  String get youNerdModeSub => 'प्लेयरवर codec, bitrate आणि आउटपुट दाखवा';

  @override
  String get youEqualizer => 'इक्वलायझर';

  @override
  String get youComingSoon => 'लवकरच';

  @override
  String get sleepTimer => 'झोप टाइमर';

  @override
  String get sleep15 => '15 मिनिटे';

  @override
  String get sleep30 => '30 मिनिटे';

  @override
  String get sleep1h => '1 तास';

  @override
  String get sleepEndTrack => 'गाणे संपल्यावर';

  @override
  String get sleepFading => 'हळूहळू कमी होत आहे… गोड स्वप्ने';

  @override
  String sleepIn(String time) {
    return '$time मध्ये झोपा';
  }

  @override
  String get sleepEndTrackActive => 'हे गाणे संपल्यावर झोपा';

  @override
  String get sleepCancel => 'टाइमर रद्द करा';

  @override
  String get queueUpNext => 'पुढील';

  @override
  String get queueEmpty => 'रांग रिकामी आहे';

  @override
  String get updateAvailable => 'अपडेट उपलब्ध ✨';

  @override
  String get updateNoNotes => 'रिलीझ नोट्स नाहीत.';

  @override
  String get updateInstalling => 'इंस्टॉलर उघडत आहे…';

  @override
  String get updateFailed => 'अपडेट होऊ शकले नाही — नंतर पुन्हा प्रयत्न करा';

  @override
  String get updateLater => 'नंतर';

  @override
  String get updateRetry => 'पुन्हा प्रयत्न करा';

  @override
  String get updateNow => 'अपडेट करा';

  @override
  String get spatialToggleTitle => '360 स्पेशल ऑडिओ';

  @override
  String get spatialOn => 'चालू';

  @override
  String get spatialOff => 'बंद';

  @override
  String get lyricsNoFound => 'गीत सापडले नाही';

  @override
  String get lyricsJustListening => 'हे फक्त ऐकण्यासाठी आहे';

  @override
  String get lyricsTrySource => 'दुसरा स्रोत वापरून पहा';

  @override
  String get lyricsSource => 'गीत स्रोत';

  @override
  String get lyricsWordSynced => 'शब्द-समकालित';

  @override
  String get lyricsLineSynced => 'ओळ-समकालित';

  @override
  String get lyricsUnsynced => 'समकालित नाही';

  @override
  String get plNoPlaylists => 'अजून प्लेलिस्ट नाहीत — आधी एक बनवा!';

  @override
  String get plAddToPlaylist => 'प्लेलिस्टमध्ये जोडा';

  @override
  String plAddedTo(String name) {
    return '$name मध्ये जोडले';
  }

  @override
  String get shareLyrics => 'गीत शेअर करा';

  @override
  String get shareMaxLines => 'कमाल ओळी निवडल्या';

  @override
  String sharePickLines(int count) {
    return 'कमाल $count ओळी निवडा';
  }

  @override
  String get sharePickHint => 'खाली काही ओळी निवडा…';

  @override
  String get shareButton => 'शेअर करा';

  @override
  String get batTitle => 'संगीत वाजत राहू द्या 🎵';

  @override
  String get batBody =>
      'Android चे बॅटरी ऑप्टिमायझेशन स्क्रीन बंद असताना तुमचे संगीत थांबवू शकते. Hana360 ला मर्यादेशिवाय चालू द्या.\n\nहे You → \"पार्श्वभूमीत वाजवत राहा\" मध्ये बदलू शकता.';

  @override
  String get batNotNow => 'आता नाही';

  @override
  String get batAllow => 'परवानगी द्या';

  @override
  String get algoSwitch => 'अल्गोरिदम';

  @override
  String get speakerDistance => 'स्पीकर अंतर';

  @override
  String get channelTrim => 'चॅनेल समायोजन';

  @override
  String get masterGain => 'मास्टर गेन';

  @override
  String get secHrtf => 'HRTF वैयक्तिकरण';

  @override
  String get outputGain => 'आउटपुट गेन';

  @override
  String get secEq => 'स्पेशल EQ';

  @override
  String get secReverb => 'रेझोनान्स';

  @override
  String get roomSize => 'खोली';

  @override
  String get reverbGain => 'रेझोनान्स गेन';

  @override
  String get secTracking => 'डोके ट्रॅकिंग';

  @override
  String get trackOff => 'बंद';

  @override
  String get trackSensor => 'फोन सेन्सर';

  @override
  String get trackManual => 'मॅन्युअल XY';

  @override
  String get dragHint =>
      'डोक्याची दिशा समायोजित करण्यासाठी ड्रॅग करा (ध्वनिक्षेत्र फॉलो करते)';

  @override
  String get customEq => 'सानुकूल';

  @override
  String get eqPresetMusic => 'संगीत';

  @override
  String get eqPresetCinema => 'सिनेमा';

  @override
  String get eqPresetGame => 'गेम';

  @override
  String get eqPresetVoice => 'आवाज';

  @override
  String get hrtfGroup0 => 'पुरुष / लहान डोके / लहान कान';

  @override
  String get hrtfGroup1 => 'पुरुष / लहान डोके / मध्यम कान';

  @override
  String get hrtfGroup2 => 'पुरुष / लहान डोके / मोठे कान';

  @override
  String get hrtfGroup3 => 'पुरुष / मध्यम डोके / लहान कान';

  @override
  String get hrtfGroup4 => 'पुरुष / मध्यम डोके / मध्यम कान';

  @override
  String get hrtfGroup5 => 'पुरुष / मध्यम डोके / मोठे कान';

  @override
  String get hrtfGroup6 => 'पुरुष / मोठे डोके / लहान कान';

  @override
  String get hrtfGroup7 => 'पुरुष / मोठे डोके / मध्यम कान';

  @override
  String get hrtfGroup8 => 'पुरुष / मोठे डोके / मोठे कान';

  @override
  String get hrtfGroup9 => 'स्त्री / लहान डोके / लहान कान';

  @override
  String get hrtfGroup10 => 'स्त्री / लहान डोके / मध्यम कान';

  @override
  String get hrtfGroup11 => 'स्त्री / लहान डोके / मोठे कान';

  @override
  String get hrtfGroup12 => 'स्त्री / मध्यम डोके / लहान कान';

  @override
  String get hrtfGroup13 => 'स्त्री / मध्यम डोके / मध्यम कान';

  @override
  String get hrtfGroup14 => 'स्त्री / मध्यम डोके / मोठे कान';

  @override
  String get navHome => 'मुख्यपृष्ठ';

  @override
  String get navLibrary => 'लायब्ररी';

  @override
  String get navPlaying => 'चालू आहे';

  @override
  String get navYou => 'तुम्ही';

  @override
  String get tabSongs => 'गाणी';

  @override
  String get tabAlbums => 'अल्बम';

  @override
  String get tabFolders => 'फोल्डर';

  @override
  String get tabPlaylists => 'प्लेलिस्ट';

  @override
  String get youMood => 'मूड';

  @override
  String get youCompanion => 'तुमचा साथीदार';

  @override
  String get youBuddies => 'मित्र';

  @override
  String get youSound => 'आवाज';

  @override
  String get youMore => 'अधिक';

  @override
  String get themeCherryBlossom => 'चेरी ब्लॉसम';

  @override
  String get themeStarryNight => 'तारांगण रात्र';

  @override
  String get themeAdaptiveLight => 'अनुकूली प्रकाश';

  @override
  String get themeAdaptiveDark => 'अनुकूली अंधार';

  @override
  String youListenedTogether(int h, int m) {
    return 'एकत्र $h तास $m मिनिटे ऐकले';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'हेडर आणि प्लेयर';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'लायब्ररी शीर्षकावर बसते';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'मिनी प्लेयरवर झोपते';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'आवडत्या गाण्यांवर चालते';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'गडद थीमवर चमकते';

  @override
  String get accBow => 'गुलाबी बो';

  @override
  String get accHeadphones => 'लहान हेडफोन';

  @override
  String get accFlower => 'फूल';

  @override
  String get accCrown => 'लहान मुकुट';

  @override
  String accUnlockLabel(int h) {
    return '$h तास ऐकून अनलॉक करा';
  }

  @override
  String get youCrossfade => 'क्रॉसफेड';

  @override
  String get youCrossfadeSub => 'गाण्याचा शेवट पुढीलमध्ये मिसळा';

  @override
  String get youSmartShuffle => 'स्मार्ट शफल';

  @override
  String get youSmartShuffleSub =>
      'शफल तुमच्या आवडींकडे झुकते — या डिव्हाइसवर गणना';

  @override
  String get libLikedSongs => 'आवडती गाणी';

  @override
  String get libTapHeart => 'गाण्यावरील हृदय टॅप करून ते इथे ठेवा';

  @override
  String get libRemovedFromQueue => 'रांगेतून काढले';

  @override
  String get libRemovedFromLibrary => 'लायब्ररीतून काढले';

  @override
  String get libRemoveFromLibrary => 'लायब्ररीतून काढा';

  @override
  String get libNewPlaylist => 'नवीन प्लेलिस्ट';

  @override
  String get libPlaylistName => 'प्लेलिस्ट नाव';

  @override
  String get libCreate => 'तयार करा';

  @override
  String get libSwipeHint =>
      'काढण्यासाठी डावीकडे स्वाइप करा · पुनर्क्रमित करण्यासाठी दाबून ठेवा';

  @override
  String get libChooseCover => 'कव्हर प्रतिमा निवडा';

  @override
  String get libBackToArtCover => 'गाण्याच्या कव्हरवर परत जा';

  @override
  String libDeleteConfirm(String name) {
    return '\"$name\" हटवायचे?';
  }

  @override
  String get libDeleteKeepSongs => 'गाणी स्वतः तुमच्या डिव्हाइसवर राहतात';

  @override
  String get libKeep => 'ठेवा';

  @override
  String get libDelete => 'हटवा';

  @override
  String get libRemoveKeepFile => 'फाइल स्वतः तुमच्या डिव्हाइसवर राहते';

  @override
  String get libClearConfirm => 'सर्व फाइल्स काढायच्या?';

  @override
  String get libLibraryCleared => 'लायब्ररी रिकामी झाली';

  @override
  String get libPickAudioFiles => 'ऑडिओ फाइल्स निवडा…';

  @override
  String get libImportFolder => 'फोल्डर आयात करा';

  @override
  String get libScanWholeFolder => 'संपूर्ण फोल्डर स्कॅन करा… (शिफारस)';

  @override
  String libImportFailed(String error) {
    return 'आयात अयशस्वी: $error';
  }

  @override
  String get libNoAudioFound => 'ऑडिओ फाइल सापडली नाही';

  @override
  String libImportedCount(int count) {
    return '$count गाणी आयात झाली';
  }

  @override
  String get libNothingHere =>
      'अजून काही नाही — काढण्यासाठी डावीकडे स्वाइप, पुनर्क्रमित करण्यासाठी दाबून ठेवा';

  @override
  String get sidebarYourLibrary => 'तुमची लायब्ररी';

  @override
  String get sidebarPlaylists => 'प्लेलिस्ट';

  @override
  String get sidebarFolders => 'फोल्डर';

  @override
  String get rowQueue => 'रांग';

  @override
  String get rowRemove => 'काढा';

  @override
  String get rowPlaylist => 'प्लेलिस्ट';

  @override
  String plTrackCount(int count) {
    return '$count ट्रॅक';
  }

  @override
  String get lyricsSourceAuto => 'ऑटो';

  @override
  String get lyricsSourceEmbedded => 'एम्बेडेड';

  @override
  String get lyricsSourceBestQuality => 'सर्वोत्तम उपलब्ध गुणवत्ता';

  @override
  String get lyricsSourceFileTags => 'ऑडिओ फाइलच्या स्वतःच्या टॅगमधून';

  @override
  String get lyricsSourceWordOnline => 'शब्द-समकालित (ऑनलाइन)';

  @override
  String get lyricsSourceLineOnline => 'ओळ-समकालित (ऑनलाइन)';

  @override
  String get lyricsSourceNotFound => 'या गाण्यासाठी सापडले नाही';

  @override
  String get npCatModeUnlocked => 'म्याऊ?! मांजर मोड अनलॉक झाला 🐱';

  @override
  String get shellResumePlayback => 'प्लेबॅक सुरू ठेवा';

  @override
  String get shellPlay => 'प्ले';

  @override
  String get devSection => 'डेव्हलपर';

  @override
  String get devModeUnlocked => '🛠️ डेव्हलपर मोड अनलॉक झाला';

  @override
  String get devUnlockAll => 'सर्व अॅक्सेसरीज अनलॉक करा';

  @override
  String get devClearLyricsCache => 'गीत कॅश साफ करा';

  @override
  String get devRefetchLyrics => 'सर्व गीत पुन्हा आणा…';

  @override
  String get devLyricsCleared => 'गीत कॅश साफ झाली';

  @override
  String get devHideOptions => 'डेव्हलपर पर्याय लपवा';

  @override
  String get devModeOff => 'डेव्हलपर मोड बंद';

  @override
  String get youCantReadFolders => 'तुमचे संगीत फोल्डर वाचता आले नाही';

  @override
  String get youNoMusicFolders => 'संगीत फोल्डर सापडले नाही';
}
