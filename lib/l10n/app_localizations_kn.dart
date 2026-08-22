// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kannada (`kn`).
class AppLocalizationsKn extends AppLocalizations {
  AppLocalizationsKn([String locale = 'kn']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'ಭಾಷೆ';

  @override
  String get languageFollowSystem => 'ಸಿಸ್ಟಮ್ ಅನುಸರಿಸಿ';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Hana360';

  @override
  String get commonCancel => 'ರದ್ದುಮಾಡಿ';

  @override
  String get commonConfirm => 'ಸರಿ';

  @override
  String get commonBack => 'ಹಿಂದೆ';

  @override
  String get commonDone => 'ಮುಗಿಯಿತು';

  @override
  String get commonUnknown => 'ಅಜ್ಞಾತ';

  @override
  String get secUpmix => 'ಅಪ್‌ಮಿಕ್ಸ್ ಎಂಜಿನ್';

  @override
  String get spatialAudioTitle => '360° ಸ್ಪೇಶಿಯಲ್ ಆಡಿಯೋ';

  @override
  String get npNothingPlaying => 'ಇನ್ನೂ ಏನೂ ಪ್ಲೇ ಆಗುತ್ತಿಲ್ಲ';

  @override
  String get npPickSong => 'ನಿಮ್ಮ ಲೈಬ್ರರಿಯಿಂದ ಹಾಡನ್ನು ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get npSpatialSettings => '360° ಸೆಟ್ಟಿಂಗ್‌ಗಳು';

  @override
  String get npLyrics => 'ಸಾಹಿತ್ಯ';

  @override
  String get libSearchHint => 'ನಿಮ್ಮ ಸಂಗೀತದಲ್ಲಿ ಹುಡುಕಿ…';

  @override
  String get libClearLibrary => 'ಲೈಬ್ರರಿ ಖಾಲಿ ಮಾಡಿ';

  @override
  String get libImportMusic => 'ಸಂಗೀತ ಆಮದು ಮಾಡಿ';

  @override
  String libError(String error) {
    return 'ಏನೋ ತಪ್ಪಾಗಿದೆ: $error';
  }

  @override
  String libNoMatch(String query) {
    return '\"$query\" ಗೆ ಏನೂ ಹೊಂದಿಕೆಯಾಗುವುದಿಲ್ಲ';
  }

  @override
  String get libPermissionDenied =>
      'ನಿಮ್ಮ ಸಂಗೀತವನ್ನು ಹುಡುಕಲು Hana360 ಗೆ ಅನುಮತಿ ಬೇಕು\nಈ ಸಾಧನದಲ್ಲಿ ಪ್ರವೇಶವಿಲ್ಲವೇ? ಬದಲಿಗೆ ಆಮದು ಮಾಡಿ.';

  @override
  String get libNoSongs =>
      'ಈ ಸಾಧನದಲ್ಲಿ ಯಾವುದೇ ಹಾಡು ಸಿಗಲಿಲ್ಲ\nಪ್ರಾರಂಭಿಸಲು ನಿಮ್ಮ ಫೈಲ್‌ಗಳಿಂದ ಸಂಗೀತ ಆಮದು ಮಾಡಿ';

  @override
  String get libGrantAccess => 'ಪ್ರವೇಶ ನೀಡಿ';

  @override
  String get libRescan => 'ಮತ್ತೆ ಸ್ಕ್ಯಾನ್ ಮಾಡಿ';

  @override
  String get libAddedToQueue => 'ಸರದಿಗೆ ಸೇರಿಸಲಾಗಿದೆ';

  @override
  String get libNoAlbums => 'ಇನ್ನೂ ಯಾವುದೇ ಆಲ್ಬಮ್ ಇಲ್ಲ';

  @override
  String get libNoFolders => 'ಇನ್ನೂ ಯಾವುದೇ ಫೋಲ್ಡರ್ ಇಲ್ಲ';

  @override
  String get libNoPlaylists => 'ಇನ್ನೂ ಯಾವುದೇ ಪ್ಲೇಪಟ್ಟಿ ಇಲ್ಲ';

  @override
  String libPlaylistCreated(String name) {
    return 'ಪ್ಲೇಪಟ್ಟಿ \"$name\" ರಚಿಸಲಾಗಿದೆ 🌸';
  }

  @override
  String get libFolderHint =>
      'ಫೋಲ್ಡರ್ ಅನ್ನು ಪ್ಲೇಪಟ್ಟಿಯಾಗಿ ಮಾಡಲು ಹೆಚ್ಚು ಹೊತ್ತು ಒತ್ತಿ';

  @override
  String libSongCount(int count) {
    return '$count ಹಾಡುಗಳು';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count ಹಾಡುಗಳು · $path';
  }

  @override
  String get homeGreetingLate => 'ತಡವಾಗಿ ಎಚ್ಚರ ♪';

  @override
  String get homeGreetingMorning => 'ಶುಭೋದಯ ♪';

  @override
  String get homeGreetingAfternoon => 'ಶುಭ ಮಧ್ಯಾಹ್ನ ♪';

  @override
  String get homeGreetingEvening => 'ಶುಭ ಸಂಜೆ ♪';

  @override
  String get homeJumpBackIn => 'ಮತ್ತೆ ಸೇರಿ';

  @override
  String get homeForYou => 'ನಿಮಗಾಗಿ';

  @override
  String get homeForYouSub => 'ನಿಮ್ಮ ಆಲಿಸುವಿಕೆಯಿಂದ, ಈ ಸಾಧನದಲ್ಲಿ ಆಯ್ಕೆಮಾಡಲಾಗಿದೆ';

  @override
  String get homeWelcome => 'Hana360 ಗೆ ಸ್ವಾಗತ 🌸';

  @override
  String get homeAllQuiet => 'ಎಲ್ಲವೂ ಶಾಂತ 🌸';

  @override
  String get homeLibraryHint =>
      'ನಿಮ್ಮ ಸಂಗೀತವು ಲೈಬ್ರರಿ ಟ್ಯಾಬ್‌ನಲ್ಲಿ ವಾಸಿಸುತ್ತದೆ — ಅಲ್ಲಿ ಫೋಲ್ಡರ್‌ಗಳನ್ನು ಸೇರಿಸಿ. ನೀವು ಪ್ಲೇ ಮಾಡುವ ಎಲ್ಲವೂ ಇಲ್ಲಿ ಸೇರುತ್ತದೆ.';

  @override
  String get homePlayHint =>
      'ಏನನ್ನಾದರೂ ಪ್ಲೇ ಮಾಡಿ, ಮುಂದಿನ ಬಾರಿ ಅದು ಇಲ್ಲಿ ಕಾಯುತ್ತದೆ.';

  @override
  String get youRescanLibrary => 'ಲೈಬ್ರರಿ ಮತ್ತೆ ಸ್ಕ್ಯಾನ್ ಮಾಡಿ';

  @override
  String get youExcludedFolders => 'ಹೊರಗಿಡಲಾದ ಫೋಲ್ಡರ್‌ಗಳು';

  @override
  String get youExcludedFoldersSub => 'ಲೈಬ್ರರಿಯಿಂದ ಫೋಲ್ಡರ್‌ಗಳನ್ನು ಮರೆಮಾಡಿ';

  @override
  String get youCatMode => 'ಬೆಕ್ಕು ಮೋಡ್';

  @override
  String get youAbout => 'ಕುರಿತು';

  @override
  String get youScanning => 'ನಿಮ್ಮ ಸಂಗೀತ ಸ್ಕ್ಯಾನ್ ಆಗುತ್ತಿದೆ…';

  @override
  String get youOpenSource => 'ಓಪನ್ ಸೋರ್ಸ್';

  @override
  String get youOpenSourceSub =>
      'Hana360 ಅನ್ನು ShaptakNaskar ರ Hanamimi (GPLv3) ನಿಂದ ಪಡೆಯಲಾಗಿದೆ — 2026-08-10 ರಂದು ಮಾರ್ಪಡಿಸಲಾಗಿದೆ';

  @override
  String get youCheckUpdates => 'ಅಪ್‌ಡೇಟ್‌ಗಳನ್ನು ಪರಿಶೀಲಿಸಿ';

  @override
  String get youCheckUpdatesSub =>
      'ಹೊಸ ಬಿಲ್ಡ್‌ಗಳು GitHub Releases ನಲ್ಲಿ ಬರುತ್ತವೆ';

  @override
  String get youUpToDate => 'ನೀವು ಅಪ್‌-ಟು-ಡೇಟ್ ಆಗಿದ್ದೀರಿ 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Sappy ರವರಿಂದ ನಿರ್ಮಿಸಲಾಗಿದೆ';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'ಹಿನ್ನೆಲೆಯಲ್ಲಿ ಪ್ಲೇ ಮುಂದುವರಿಸಿ';

  @override
  String get youKeepPlayingAllowed =>
      'ಅನುಮತಿಸಲಾಗಿದೆ — ಸಿಸ್ಟಮ್ ನಿಮ್ಮ ಸಂಗೀತವನ್ನು ವಿರಾಮಗೊಳಿಸುವುದಿಲ್ಲ';

  @override
  String get youKeepPlayingTap =>
      'ಸಿಸ್ಟಮ್ ಪ್ಲೇಬ್ಯಾಕ್ ನಿಲ್ಲಿಸುವುದನ್ನು ತಡೆಯಲು ಟ್ಯಾಪ್ ಮಾಡಿ';

  @override
  String get youExcludedFoldersTitle => 'ಹೊರಗಿಡಲಾದ ಫೋಲ್ಡರ್‌ಗಳು';

  @override
  String get youExcludedFoldersDesc =>
      'ಆಫ್ ಮಾಡಿದ ಫೋಲ್ಡರ್‌ಗಳಲ್ಲಿನ ಹಾಡುಗಳನ್ನು ಲೈಬ್ರರಿಯಿಂದ ಹೊರಗಿಡಲಾಗುತ್ತದೆ';

  @override
  String get youVisSensitivity => 'ವಿಷುಯಲೈಜರ್ ಸಂವೇದನೆ';

  @override
  String get youVisSensitivitySub =>
      'ಅದನ್ನು ಕಷ್ಟದಿಂದ ಚಲಿಸುವ ಹಾಡುಗಳಿಗೆ ಹೆಚ್ಚಿಸಿ';

  @override
  String get youNerdMode => 'ನರ್ಡ್ ಮೋಡ್';

  @override
  String get youNerdModeSub =>
      'ಈಗ ಪ್ಲೇ ಆಗುತ್ತಿದೆ ಮೇಲೆ codec, bitrate ಮತ್ತು ಆಡಿಯೋ ಔಟ್‌ಪುಟ್ ತೋರಿಸಿ';

  @override
  String get youEqualizer => 'ಈಕ್ವಲೈಜರ್';

  @override
  String get youComingSoon => 'ಶೀಘ್ರದಲ್ಲೇ';

  @override
  String get sleepTimer => 'ಸ್ಲೀಪ್ ಟೈಮರ್';

  @override
  String get sleep15 => '15 ನಿಮಿಷ';

  @override
  String get sleep30 => '30 ನಿಮಿಷ';

  @override
  String get sleep1h => '1 ಗಂಟೆ';

  @override
  String get sleepEndTrack => 'ಹಾಡಿನ ಕೊನೆ';

  @override
  String get sleepFading => 'ಮಸುಕಾಗುತ್ತಿದೆ… ಮಧುರ ಕನಸುಗಳು';

  @override
  String sleepIn(String time) {
    return '$time ರಲ್ಲಿ ನಿದ್ರೆ';
  }

  @override
  String get sleepEndTrackActive => 'ಈ ಹಾಡು ಮುಗಿದಾಗ ನಿದ್ರೆ';

  @override
  String get sleepCancel => 'ಟೈಮರ್ ರದ್ದುಮಾಡಿ';

  @override
  String get queueUpNext => 'ಮುಂದೆ';

  @override
  String get queueEmpty => 'ಸರದಿ ಖಾಲಿಯಾಗಿದೆ';

  @override
  String get updateAvailable => 'ಅಪ್‌ಡೇಟ್ ಲಭ್ಯವಿದೆ ✨';

  @override
  String get updateNoNotes => 'ಯಾವುದೇ ಬಿಡುಗಡೆ ಟಿಪ್ಪಣಿಗಳಿಲ್ಲ.';

  @override
  String get updateInstalling => 'ಅನುಸ್ಥಾಪನೆ ತೆರೆಯಲಾಗುತ್ತಿದೆ…';

  @override
  String get updateFailed => 'ಅಪ್‌ಡೇಟ್ ಆಗಲಿಲ್ಲ — ನಂತರ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get updateLater => 'ನಂತರ';

  @override
  String get updateRetry => 'ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get updateNow => 'ಅಪ್‌ಡೇಟ್ ಮಾಡಿ';

  @override
  String get spatialToggleTitle => '360° ಸ್ಪೇಶಿಯಲ್ ಆಡಿಯೋ';

  @override
  String get spatialOn => 'ಆನ್';

  @override
  String get spatialOff => 'ಆಫ್';

  @override
  String get lyricsNoFound => 'ಸಾಹಿತ್ಯ ಸಿಗಲಿಲ್ಲ';

  @override
  String get lyricsJustListening => 'ಇದು ಕೇಳಲು ಮಾತ್ರ';

  @override
  String get lyricsTrySource => 'ಬೇರೆ ಮೂಲ ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get lyricsSource => 'ಸಾಹಿತ್ಯದ ಮೂಲ';

  @override
  String get lyricsWordSynced => 'ಪದ-ಸಿಂಕ್ ಮಾಡಲಾಗಿದೆ';

  @override
  String get lyricsLineSynced => 'ಸಾಲು-ಸಿಂಕ್ ಮಾಡಲಾಗಿದೆ';

  @override
  String get lyricsUnsynced => 'ಸಿಂಕ್ ಆಗಿಲ್ಲ';

  @override
  String get plNoPlaylists =>
      'ಇನ್ನೂ ಯಾವುದೇ ಪ್ಲೇಪಟ್ಟಿ ಇಲ್ಲ — ಮೊದಲು ಒಂದನ್ನು ರಚಿಸಿ!';

  @override
  String get plAddToPlaylist => 'ಪ್ಲೇಪಟ್ಟಿಗೆ ಸೇರಿಸಿ';

  @override
  String plAddedTo(String name) {
    return '$name ಗೆ ಸೇರಿಸಲಾಗಿದೆ';
  }

  @override
  String get shareLyrics => 'ಸಾಹಿತ್ಯ ಹಂಚಿಕೊಳ್ಳಿ';

  @override
  String get shareMaxLines => 'ಗರಿಷ್ಠ ಸಾಲುಗಳನ್ನು ಆಯ್ಕೆಮಾಡಲಾಗಿದೆ';

  @override
  String sharePickLines(int count) {
    return '$count ವರೆಗೆ ಸಾಲುಗಳನ್ನು ಆಯ್ಕೆಮಾಡಿ';
  }

  @override
  String get sharePickHint => 'ಕೆಳಗೆ ಕೆಲವು ಸಾಲುಗಳನ್ನು ಆಯ್ಕೆಮಾಡಿ…';

  @override
  String get shareButton => 'ಹಂಚಿಕೊಳ್ಳಿ';

  @override
  String get batTitle => 'ಸಂಗೀತ ಪ್ಲೇ ಆಗುತ್ತಲೇ ಇರಲಿ 🎵';

  @override
  String get batBody =>
      'Android ನ ಬ್ಯಾಟರಿ ಆಪ್ಟಿಮೈಸೇಶನ್ ಸ್ಕ್ರೀನ್ ಆಫ್ ಆಗಿದ್ದಾಗ ಸಂಗೀತವನ್ನು ವಿರಾಮಗೊಳಿಸಬಹುದು. ಸ್ಥಿರ ಪ್ಲೇಬ್ಯಾಕ್‌ಗಾಗಿ Hana360 ಗೆ ಅನಿಯಂತ್ರಿತವಾಗಿ ಚಲಿಸಲು ಅನುಮತಿಸಿ.\n\nನೀವು ಇದನ್ನು ಯಾವಾಗ ಬೇಕಾದರೂ ಬದಲಾಯಿಸಬಹುದು: ನೀವು → \"ಹಿನ್ನೆಲೆಯಲ್ಲಿ ಪ್ಲೇ ಮುಂದುವರಿಸಿ\".';

  @override
  String get batNotNow => 'ಈಗ ಬೇಡ';

  @override
  String get batAllow => 'ಅನುಮತಿಸಿ';

  @override
  String get algoSwitch => 'ಅಲ್ಗಾರಿದಮ್';

  @override
  String get speakerDistance => 'ಸ್ಪೀಕರ್ ದೂರ';

  @override
  String get channelTrim => 'ಚಾನೆಲ್ ಟ್ರಿಮ್';

  @override
  String get masterGain => 'ಮಾಸ್ಟರ್ ಗೇನ್';

  @override
  String get secHrtf => 'HRTF ವೈಯಕ್ತೀಕರಣ';

  @override
  String get outputGain => 'ಔಟ್‌ಪುಟ್ ಗೇನ್';

  @override
  String get secEq => 'ಸ್ಪೇಶಿಯಲ್ EQ';

  @override
  String get secReverb => 'ರಿವರ್ಬ್';

  @override
  String get roomSize => 'ಕೊಠಡಿ';

  @override
  String get reverbGain => 'ರಿವರ್ಬ್ ಗೇನ್';

  @override
  String get secTracking => 'ತಲೆ ಟ್ರ್ಯಾಕಿಂಗ್';

  @override
  String get trackOff => 'ಆಫ್';

  @override
  String get trackSensor => 'ಫೋನ್ ಸೆನ್ಸರ್';

  @override
  String get trackManual => 'ಮ್ಯಾನುಯಲ್ XY';

  @override
  String get dragHint =>
      'ತಲೆಯ ದಿಕ್ಕನ್ನು ಹೊಂದಿಸಲು ಎಳೆಯಿರಿ (ಧ್ವನಿ ಕ್ಷೇತ್ರ ಅನುಸರಿಸುತ್ತದೆ)';

  @override
  String get customEq => 'ಕಸ್ಟಮ್';

  @override
  String get eqPresetMusic => 'ಸಂಗೀತ';

  @override
  String get eqPresetCinema => 'ಸಿನಿಮಾ';

  @override
  String get eqPresetGame => 'ಆಟ';

  @override
  String get eqPresetVoice => 'ಧ್ವನಿ';

  @override
  String get hrtfGroup0 => 'ಪುರುಷ / ಸಣ್ಣ / ಸಣ್ಣ';

  @override
  String get hrtfGroup1 => 'ಪುರುಷ / ಸಣ್ಣ / ಮಧ್ಯಮ';

  @override
  String get hrtfGroup2 => 'ಪುರುಷ / ಸಣ್ಣ / ದೊಡ್ಡ';

  @override
  String get hrtfGroup3 => 'ಪುರುಷ / ಮಧ್ಯಮ / ಸಣ್ಣ';

  @override
  String get hrtfGroup4 => 'ಪುರುಷ / ಮಧ್ಯಮ / ಮಧ್ಯಮ';

  @override
  String get hrtfGroup5 => 'ಪುರುಷ / ಮಧ್ಯಮ / ದೊಡ್ಡ';

  @override
  String get hrtfGroup6 => 'ಪುರುಷ / ದೊಡ್ಡ / ಸಣ್ಣ';

  @override
  String get hrtfGroup7 => 'ಪುರುಷ / ದೊಡ್ಡ / ಮಧ್ಯಮ';

  @override
  String get hrtfGroup8 => 'ಪುರುಷ / ದೊಡ್ಡ / ದೊಡ್ಡ';

  @override
  String get hrtfGroup9 => 'ಮಹಿಳೆ / ಸಣ್ಣ / ಸಣ್ಣ';

  @override
  String get hrtfGroup10 => 'ಮಹಿಳೆ / ಸಣ್ಣ / ಮಧ್ಯಮ';

  @override
  String get hrtfGroup11 => 'ಮಹಿಳೆ / ಸಣ್ಣ / ದೊಡ್ಡ';

  @override
  String get hrtfGroup12 => 'ಮಹಿಳೆ / ಮಧ್ಯಮ / ಸಣ್ಣ';

  @override
  String get hrtfGroup13 => 'ಮಹಿಳೆ / ಮಧ್ಯಮ / ಮಧ್ಯಮ';

  @override
  String get hrtfGroup14 => 'ಮಹಿಳೆ / ಮಧ್ಯಮ / ದೊಡ್ಡ';

  @override
  String get navHome => 'ಹೋಮ್';

  @override
  String get navLibrary => 'ಲೈಬ್ರರಿ';

  @override
  String get navPlaying => 'ಪ್ಲೇ ಆಗುತ್ತಿದೆ';

  @override
  String get navYou => 'ನೀವು';

  @override
  String get tabSongs => 'ಹಾಡುಗಳು';

  @override
  String get tabAlbums => 'ಆಲ್ಬಮ್‌ಗಳು';

  @override
  String get tabFolders => 'ಫೋಲ್ಡರ್‌ಗಳು';

  @override
  String get tabPlaylists => 'ಪ್ಲೇಪಟ್ಟಿಗಳು';

  @override
  String get youMood => 'ಮೂಡ್';

  @override
  String get youCompanion => 'ನಿಮ್ಮ ಸಂಗಾತಿ';

  @override
  String get youBuddies => 'ಗೆಳೆಯರು';

  @override
  String get youSound => 'ಧ್ವನಿ';

  @override
  String get youMore => 'ಇನ್ನಷ್ಟು';

  @override
  String get themeCherryBlossom => 'ಚೆರ್ರಿ ಹೂವು';

  @override
  String get themeStarryNight => 'ನಕ್ಷತ್ರ ರಾತ್ರಿ';

  @override
  String get themeAdaptiveLight => 'ಅಡಾಪ್ಟಿವ್ ಲೈಟ್';

  @override
  String get themeAdaptiveDark => 'ಅಡಾಪ್ಟಿವ್ ಡಾರ್ಕ್';

  @override
  String youListenedTogether(int h, int m) {
    return '$hಗಂ $mನಿ ಒಟ್ಟಿಗೆ ಆಲಿಸಲಾಗಿದೆ';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'ಹೆಡರ್ ಮತ್ತು ಈಗ ಪ್ಲೇ ಆಗುತ್ತಿದೆ';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'ಲೈಬ್ರರಿ ಶೀರ್ಷಿಕೆಯ ಮೇಲೆ ಕುಳಿತಿದೆ';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'ಮಿನಿ ಪ್ಲೇಯರ್ ಮೇಲೆ ನಿದ್ರಿಸುತ್ತದೆ';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'ಇಷ್ಟಪಟ್ಟ ಹಾಡುಗಳ ಮೇಲೆ ನಡೆಯುತ್ತದೆ';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'ಡಾರ್ಕ್ ಥೀಮ್‌ಗಳಲ್ಲಿ ಹೊಳೆಯುತ್ತವೆ';

  @override
  String get accBow => 'ಗುಲಾಬಿ ರಿಬ್ಬನ್';

  @override
  String get accHeadphones => 'ಸಣ್ಣ ಹೆಡ್‌ಫೋನ್';

  @override
  String get accFlower => 'ಹೂವು';

  @override
  String get accCrown => 'ಸಣ್ಣ ಕಿರೀಟ';

  @override
  String accUnlockLabel(int h) {
    return '$h ಗಂಟೆಗಳ ಕಾಲ ಆಲಿಸಿ';
  }

  @override
  String get youCrossfade => 'ಕ್ರಾಸ್‌ಫೇಡ್';

  @override
  String get youCrossfadeSub => 'ಹಾಡಿನ ಕೊನೆಯನ್ನು ಮುಂದಿನ ಹಾಡಿಗೆ ಮಿಶ್ರಿಸಿ';

  @override
  String get youSmartShuffle => 'ಸ್ಮಾರ್ಟ್ ಶಫಲ್';

  @override
  String get youSmartShuffleSub =>
      'ಶಫಲ್ ನಿಮ್ಮ ಮೆಚ್ಚಿನವುಗಳ ಕಡೆಗೆ ಒಲವು — ಈ ಸಾಧನದಲ್ಲಿ ಲೆಕ್ಕಹಾಕಲಾಗಿದೆ';

  @override
  String get libLikedSongs => 'ಇಷ್ಟಪಟ್ಟ ಹಾಡುಗಳು';

  @override
  String get libTapHeart =>
      'ಹಾಡನ್ನು ಇಲ್ಲಿ ಇರಿಸಲು ಅದರ ಮೇಲಿನ ಹೃದಯವನ್ನು ಟ್ಯಾಪ್ ಮಾಡಿ';

  @override
  String get libRemovedFromQueue => 'ಸರದಿಯಿಂದ ತೆಗೆದುಹಾಕಲಾಗಿದೆ';

  @override
  String get libRemovedFromLibrary => 'ಲೈಬ್ರರಿಯಿಂದ ತೆಗೆದುಹಾಕಲಾಗಿದೆ';

  @override
  String get libRemoveFromLibrary => 'ಲೈಬ್ರರಿಯಿಂದ ತೆಗೆದುಹಾಕಿ';

  @override
  String get libNewPlaylist => 'ಹೊಸ ಪ್ಲೇಪಟ್ಟಿ';

  @override
  String get libPlaylistName => 'ಪ್ಲೇಪಟ್ಟಿ ಹೆಸರು';

  @override
  String get libCreate => 'ರಚಿಸಿ';

  @override
  String get libSwipeHint =>
      'ತೆಗೆದುಹಾಕಲು ಎಡಕ್ಕೆ ಸ್ವೈಪ್ · ಮರುಕ್ರಮಗೊಳಿಸಲು ಹಿಡಿದುಕೊಳ್ಳಿ';

  @override
  String get libChooseCover => 'ಕವರ್ ಚಿತ್ರ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get libBackToArtCover => 'ಹಾಡಿನ ಕವರ್‌ಗೆ ಹಿಂತಿರುಗಿ';

  @override
  String libDeleteConfirm(String name) {
    return '\"$name\" ಅಳಿಸುವುದೇ?';
  }

  @override
  String get libDeleteKeepSongs => 'ಹಾಡುಗಳು ನಿಮ್ಮ ಸಾಧನದಲ್ಲಿ ಉಳಿಯುತ್ತವೆ';

  @override
  String get libKeep => 'ಇರಿಸಿ';

  @override
  String get libDelete => 'ಅಳಿಸಿ';

  @override
  String get libRemoveKeepFile => 'ಫೈಲ್ ಸ್ವತಃ ನಿಮ್ಮ ಸಾಧನದಲ್ಲಿ ಉಳಿಯುತ್ತದೆ';

  @override
  String get libClearConfirm => 'ಎಲ್ಲಾ ಫೈಲ್‌ಗಳನ್ನು ತೆಗೆದುಹಾಕುವುದೇ?';

  @override
  String get libLibraryCleared => 'ಲೈಬ್ರರಿ ಖಾಲಿ ಮಾಡಲಾಗಿದೆ';

  @override
  String get libPickAudioFiles => 'ಆಡಿಯೋ ಫೈಲ್‌ಗಳನ್ನು ಆಯ್ಕೆಮಾಡಿ…';

  @override
  String get libImportFolder => 'ಫೋಲ್ಡರ್ ಆಮದು ಮಾಡಿ';

  @override
  String get libScanWholeFolder => 'ಸಂಪೂರ್ಣ ಫೋಲ್ಡರ್ ಸ್ಕ್ಯಾನ್ ಮಾಡಿ… (ಶಿಫಾರಸು)';

  @override
  String libImportFailed(String error) {
    return 'ಆಮದು ವಿಫಲವಾಗಿದೆ: $error';
  }

  @override
  String get libNoAudioFound => 'ಯಾವುದೇ ಆಡಿಯೋ ಫೈಲ್ ಸಿಗಲಿಲ್ಲ';

  @override
  String libImportedCount(int count) {
    return '$count ಹಾಡುಗಳನ್ನು ಆಮದು ಮಾಡಲಾಗಿದೆ';
  }

  @override
  String get libNothingHere =>
      'ಇಲ್ಲಿ ಇನ್ನೂ ಏನೂ ಇಲ್ಲ — ತೆಗೆದುಹಾಕಲು ಎಡಕ್ಕೆ ಸ್ವೈಪ್, ಮರುಕ್ರಮಗೊಳಿಸಲು ಹಿಡಿದುಕೊಳ್ಳಿ';

  @override
  String get sidebarYourLibrary => 'ನಿಮ್ಮ ಲೈಬ್ರರಿ';

  @override
  String get sidebarPlaylists => 'ಪ್ಲೇಪಟ್ಟಿಗಳು';

  @override
  String get sidebarFolders => 'ಫೋಲ್ಡರ್‌ಗಳು';

  @override
  String get rowQueue => 'ಸರದಿ';

  @override
  String get rowRemove => 'ತೆಗೆದುಹಾಕಿ';

  @override
  String get rowPlaylist => 'ಪ್ಲೇಪಟ್ಟಿ';

  @override
  String plTrackCount(int count) {
    return '$count ಟ್ರ್ಯಾಕ್‌ಗಳು';
  }

  @override
  String get lyricsSourceAuto => 'ಆಟೋ';

  @override
  String get lyricsSourceEmbedded => 'ಎಂಬೆಡೆಡ್';

  @override
  String get lyricsSourceBestQuality => 'ಅತ್ಯುತ್ತಮ ಲಭ್ಯ ಗುಣಮಟ್ಟ';

  @override
  String get lyricsSourceFileTags => 'ಆಡಿಯೋ ಫೈಲ್‌ನ ಸ್ವಂತ ಟ್ಯಾಗ್‌ಗಳಿಂದ';

  @override
  String get lyricsSourceWordOnline => 'ಪದ-ಸಿಂಕ್ (ಆನ್‌ಲೈನ್)';

  @override
  String get lyricsSourceLineOnline => 'ಸಾಲು-ಸಿಂಕ್ (ಆನ್‌ಲೈನ್)';

  @override
  String get lyricsSourceNotFound => 'ಈ ಹಾಡಿಗೆ ಸಿಗಲಿಲ್ಲ';

  @override
  String get npCatModeUnlocked => 'ಮಿಯಾವ್?! ಬೆಕ್ಕು ಮೋಡ್ ಅನ್‌ಲಾಕ್ ಆಗಿದೆ 🐱';

  @override
  String get shellResumePlayback => 'ಪ್ಲೇಬ್ಯಾಕ್ ಮುಂದುವರಿಸಿ';

  @override
  String get shellPlay => 'ಪ್ಲೇ ಮಾಡಿ';

  @override
  String get devSection => 'ಡೆವಲಪರ್';

  @override
  String get devModeUnlocked => '🛠️ ಡೆವಲಪರ್ ಮೋಡ್ ಅನ್‌ಲಾಕ್ ಆಗಿದೆ';

  @override
  String get devUnlockAll => 'ಎಲ್ಲಾ ಪರಿಕರಗಳನ್ನು ಅನ್‌ಲಾಕ್ ಮಾಡಿ';

  @override
  String get devClearLyricsCache => 'ಸಾಹಿತ್ಯ ಕ್ಯಾಶ್ ತೆರವುಗೊಳಿಸಿ';

  @override
  String get devRefetchLyrics => 'ಎಲ್ಲಾ ಸಾಹಿತ್ಯ ಮತ್ತೆ ಪಡೆಯಿರಿ…';

  @override
  String get devLyricsCleared => 'ಸಾಹಿತ್ಯ ಕ್ಯಾಶ್ ತೆರವುಗೊಳಿಸಲಾಗಿದೆ';

  @override
  String get devHideOptions => 'ಡೆವಲಪರ್ ಆಯ್ಕೆಗಳನ್ನು ಮರೆಮಾಡಿ';

  @override
  String get devModeOff => 'ಡೆವಲಪರ್ ಮೋಡ್ ಆಫ್';

  @override
  String get youCantReadFolders => 'ನಿಮ್ಮ ಸಂಗೀತ ಫೋಲ್ಡರ್‌ಗಳನ್ನು ಓದಲಾಗಲಿಲ್ಲ';

  @override
  String get youNoMusicFolders => 'ಯಾವುದೇ ಸಂಗೀತ ಫೋಲ್ಡರ್ ಸಿಗಲಿಲ್ಲ';
}
