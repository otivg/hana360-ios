// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Panjabi Punjabi (`pa`).
class AppLocalizationsPa extends AppLocalizations {
  AppLocalizationsPa([String locale = 'pa']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'ਭਾਸ਼ਾ';

  @override
  String get languageFollowSystem => 'ਸਿਸਟਮ ਦੀ ਪਾਲਣਾ ਕਰੋ';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Hana360';

  @override
  String get commonCancel => 'ਰੱਦ ਕਰੋ';

  @override
  String get commonConfirm => 'ਠੀਕ ਹੈ';

  @override
  String get commonBack => 'ਪਿੱਛੇ';

  @override
  String get commonDone => 'ਹੋ ਗਿਆ';

  @override
  String get commonUnknown => 'ਅਣਜਾਣ';

  @override
  String get secUpmix => 'ਅਪਮਿਕਸ ਇੰਜਣ';

  @override
  String get spatialAudioTitle => '360° ਸਪੇਸ਼ੀਅਲ ਆਡੀਓ';

  @override
  String get npNothingPlaying => 'ਅਜੇ ਕੁਝ ਨਹੀਂ ਚੱਲ ਰਿਹਾ';

  @override
  String get npPickSong => 'ਆਪਣੀ ਲਾਇਬ੍ਰੇਰੀ ਵਿੱਚੋਂ ਗੀਤ ਚੁਣੋ';

  @override
  String get npSpatialSettings => '360° ਸੈਟਿੰਗਾਂ';

  @override
  String get npLyrics => 'ਬੋਲ';

  @override
  String get libSearchHint => 'ਆਪਣੇ ਸੰਗੀਤ ਵਿੱਚ ਖੋਜੋ…';

  @override
  String get libClearLibrary => 'ਲਾਇਬ੍ਰੇਰੀ ਖਾਲੀ ਕਰੋ';

  @override
  String get libImportMusic => 'ਸੰਗੀਤ ਆਯਾਤ ਕਰੋ';

  @override
  String libError(String error) {
    return 'ਕੁਝ ਗਲਤ ਹੋ ਗਿਆ: $error';
  }

  @override
  String libNoMatch(String query) {
    return '\"$query\" ਨਾਲ ਕੁਝ ਮੇਲ ਨਹੀਂ ਖਾਂਦਾ';
  }

  @override
  String get libPermissionDenied =>
      'ਤੁਹਾਡਾ ਸੰਗੀਤ ਲੱਭਣ ਲਈ Hana360 ਨੂੰ ਇਜਾਜ਼ਤ ਚਾਹੀਦੀ ਹੈ\nਇਸ ਡਿਵਾਈਸ \'ਤੇ ਪਹੁੰਚ ਨਹੀਂ? ਇਸ ਦੀ ਬਜਾਏ ਆਯਾਤ ਕਰੋ।';

  @override
  String get libNoSongs =>
      'ਇਸ ਡਿਵਾਈਸ \'ਤੇ ਕੋਈ ਗੀਤ ਨਹੀਂ ਮਿਲਿਆ\nਸ਼ੁਰੂ ਕਰਨ ਲਈ ਆਪਣੀਆਂ ਫਾਈਲਾਂ ਤੋਂ ਸੰਗੀਤ ਆਯਾਤ ਕਰੋ';

  @override
  String get libGrantAccess => 'ਪਹੁੰਚ ਦਿਓ';

  @override
  String get libRescan => 'ਦੁਬਾਰਾ ਸਕੈਨ ਕਰੋ';

  @override
  String get libAddedToQueue => 'ਕਤਾਰ ਵਿੱਚ ਸ਼ਾਮਲ ਕੀਤਾ';

  @override
  String get libNoAlbums => 'ਅਜੇ ਕੋਈ ਐਲਬਮ ਨਹੀਂ';

  @override
  String get libNoFolders => 'ਅਜੇ ਕੋਈ ਫੋਲਡਰ ਨਹੀਂ';

  @override
  String get libNoPlaylists => 'ਅਜੇ ਕੋਈ ਪਲੇਲਿਸਟ ਨਹੀਂ';

  @override
  String libPlaylistCreated(String name) {
    return 'ਪਲੇਲਿਸਟ \"$name\" ਬਣਾਈ ਗਈ 🌸';
  }

  @override
  String get libFolderHint => 'ਫੋਲਡਰ ਨੂੰ ਪਲੇਲਿਸਟ ਬਣਾਉਣ ਲਈ ਦੇਰ ਤੱਕ ਦਬਾਓ';

  @override
  String libSongCount(int count) {
    return '$count ਗੀਤ';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count ਗੀਤ · $path';
  }

  @override
  String get homeGreetingLate => 'ਦੇਰ ਤੱਕ ਜਾਗਦੇ ♪';

  @override
  String get homeGreetingMorning => 'ਸ਼ੁਭ ਸਵੇਰ ♪';

  @override
  String get homeGreetingAfternoon => 'ਸ਼ੁਭ ਦੁਪਹਿਰ ♪';

  @override
  String get homeGreetingEvening => 'ਸ਼ੁਭ ਸ਼ਾਮ ♪';

  @override
  String get homeJumpBackIn => 'ਵਾਪਸ ਜੁੜੋ';

  @override
  String get homeForYou => 'ਤੁਹਾਡੇ ਲਈ';

  @override
  String get homeForYouSub => 'ਤੁਹਾਡੇ ਸੁਣਨ ਤੋਂ, ਇਸ ਡਿਵਾਈਸ \'ਤੇ ਚੁਣਿਆ ਗਿਆ';

  @override
  String get homeWelcome => 'Hana360 ਵਿੱਚ ਜੀ ਆਇਆਂ ਨੂੰ 🌸';

  @override
  String get homeAllQuiet => 'ਸਭ ਸ਼ਾਂਤ 🌸';

  @override
  String get homeLibraryHint =>
      'ਤੁਹਾਡਾ ਸੰਗੀਤ ਲਾਇਬ੍ਰੇਰੀ ਟੈਬ ਵਿੱਚ ਰਹਿੰਦਾ ਹੈ — ਉੱਥੇ ਫੋਲਡਰ ਸ਼ਾਮਲ ਕਰੋ। ਜੋ ਵੀ ਤੁਸੀਂ ਚਲਾਉਂਦੇ ਹੋ ਉਹ ਇੱਥੇ ਇਕੱਠਾ ਹੁੰਦਾ ਹੈ।';

  @override
  String get homePlayHint => 'ਕੁਝ ਚਲਾਓ ਅਤੇ ਅਗਲੀ ਵਾਰ ਇਹ ਇੱਥੇ ਉਡੀਕ ਕਰੇਗਾ।';

  @override
  String get youRescanLibrary => 'ਲਾਇਬ੍ਰੇਰੀ ਦੁਬਾਰਾ ਸਕੈਨ ਕਰੋ';

  @override
  String get youExcludedFolders => 'ਬਾਹਰ ਰੱਖੇ ਫੋਲਡਰ';

  @override
  String get youExcludedFoldersSub => 'ਲਾਇਬ੍ਰੇਰੀ ਤੋਂ ਫੋਲਡਰ ਲੁਕਾਓ';

  @override
  String get youCatMode => 'ਬਿੱਲੀ ਮੋਡ';

  @override
  String get youAbout => 'ਬਾਰੇ';

  @override
  String get youScanning => 'ਤੁਹਾਡਾ ਸੰਗੀਤ ਸਕੈਨ ਹੋ ਰਿਹਾ ਹੈ…';

  @override
  String get youOpenSource => 'ਓਪਨ ਸੋਰਸ';

  @override
  String get youOpenSourceSub =>
      'Hana360 ShaptakNaskar ਦੇ Hanamimi (GPLv3) ਦਾ ਵਿਉਤਪੰਨ ਹੈ — 2026-08-10 ਨੂੰ ਸੋਧਿਆ ਗਿਆ';

  @override
  String get youCheckUpdates => 'ਅੱਪਡੇਟਾਂ ਦੀ ਜਾਂਚ ਕਰੋ';

  @override
  String get youCheckUpdatesSub => 'ਨਵੇਂ ਬਿਲਡ GitHub Releases \'ਤੇ ਆਉਂਦੇ ਹਨ';

  @override
  String get youUpToDate => 'ਤੁਸੀਂ ਅੱਪ-ਟੂ-ਡੇਟ ਹੋ 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Sappy ਦੁਆਰਾ ਬਣਾਇਆ ਗਿਆ';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'ਬੈਕਗ੍ਰਾਊਂਡ ਵਿੱਚ ਚਲਾਉਂਦੇ ਰਹੋ';

  @override
  String get youKeepPlayingAllowed =>
      'ਇਜਾਜ਼ਤ ਦਿੱਤੀ ਗਈ — ਸਿਸਟਮ ਤੁਹਾਡੇ ਸੰਗੀਤ ਨੂੰ ਰੋਕੇਗਾ ਨਹੀਂ';

  @override
  String get youKeepPlayingTap => 'ਸਿਸਟਮ ਨੂੰ ਪਲੇਬੈਕ ਰੋਕਣ ਤੋਂ ਰੋਕਣ ਲਈ ਟੈਪ ਕਰੋ';

  @override
  String get youExcludedFoldersTitle => 'ਬਾਹਰ ਰੱਖੇ ਫੋਲਡਰ';

  @override
  String get youExcludedFoldersDesc =>
      'ਬੰਦ ਫੋਲਡਰਾਂ ਦੇ ਗੀਤ ਲਾਇਬ੍ਰੇਰੀ ਤੋਂ ਬਾਹਰ ਰਹਿੰਦੇ ਹਨ';

  @override
  String get youVisSensitivity => 'ਵਿਜ਼ੂਅਲਾਈਜ਼ਰ ਸੰਵੇਦਨਸ਼ੀਲਤਾ';

  @override
  String get youVisSensitivitySub =>
      'ਉਨ੍ਹਾਂ ਗੀਤਾਂ ਲਈ ਵਧਾਓ ਜੋ ਇਸਨੂੰ ਮਸਾਂ ਹਿਲਾਉਂਦੇ ਹਨ';

  @override
  String get youNerdMode => 'ਨਰਡ ਮੋਡ';

  @override
  String get youNerdModeSub =>
      'ਹੁਣ ਚੱਲ ਰਿਹਾ ਹੈ \'ਤੇ codec, bitrate ਅਤੇ ਆਡੀਓ ਆਉਟਪੁੱਟ ਦਿਖਾਓ';

  @override
  String get youEqualizer => 'ਇਕੁਅਲਾਈਜ਼ਰ';

  @override
  String get youComingSoon => 'ਜਲਦੀ ਆ ਰਿਹਾ ਹੈ';

  @override
  String get sleepTimer => 'ਸਲੀਪ ਟਾਈਮਰ';

  @override
  String get sleep15 => '15 ਮਿੰਟ';

  @override
  String get sleep30 => '30 ਮਿੰਟ';

  @override
  String get sleep1h => '1 ਘੰਟਾ';

  @override
  String get sleepEndTrack => 'ਗੀਤ ਦਾ ਅੰਤ';

  @override
  String get sleepFading => 'ਫਿੱਕਾ ਪੈ ਰਿਹਾ ਹੈ… ਮਿੱਠੇ ਸੁਪਨੇ';

  @override
  String sleepIn(String time) {
    return '$time ਵਿੱਚ ਸੌਣਾ';
  }

  @override
  String get sleepEndTrackActive => 'ਇਹ ਗੀਤ ਖਤਮ ਹੋਣ \'ਤੇ ਸੌਣਾ';

  @override
  String get sleepCancel => 'ਟਾਈਮਰ ਰੱਦ ਕਰੋ';

  @override
  String get queueUpNext => 'ਅੱਗੇ';

  @override
  String get queueEmpty => 'ਕਤਾਰ ਖਾਲੀ ਹੈ';

  @override
  String get updateAvailable => 'ਅੱਪਡੇਟ ਉਪਲਬਧ ਹੈ ✨';

  @override
  String get updateNoNotes => 'ਕੋਈ ਰਿਲੀਜ਼ ਨੋਟ ਨਹੀਂ।';

  @override
  String get updateInstalling => 'ਇੰਸਟਾਲੇਸ਼ਨ ਖੋਲ੍ਹੀ ਜਾ ਰਹੀ ਹੈ…';

  @override
  String get updateFailed =>
      'ਅੱਪਡੇਟ ਨਹੀਂ ਹੋ ਸਕਿਆ — ਬਾਅਦ ਵਿੱਚ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ';

  @override
  String get updateLater => 'ਬਾਅਦ ਵਿੱਚ';

  @override
  String get updateRetry => 'ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ';

  @override
  String get updateNow => 'ਅੱਪਡੇਟ ਕਰੋ';

  @override
  String get spatialToggleTitle => '360° ਸਪੇਸ਼ੀਅਲ ਆਡੀਓ';

  @override
  String get spatialOn => 'ਚਾਲੂ';

  @override
  String get spatialOff => 'ਬੰਦ';

  @override
  String get lyricsNoFound => 'ਬੋਲ ਨਹੀਂ ਮਿਲੇ';

  @override
  String get lyricsJustListening => 'ਇਹ ਸਿਰਫ਼ ਸੁਣਨ ਲਈ ਹੈ';

  @override
  String get lyricsTrySource => 'ਕੋਈ ਹੋਰ ਸਰੋਤ ਅਜ਼ਮਾਓ';

  @override
  String get lyricsSource => 'ਬੋਲਾਂ ਦਾ ਸਰੋਤ';

  @override
  String get lyricsWordSynced => 'ਸ਼ਬਦ-ਸਿੰਕ';

  @override
  String get lyricsLineSynced => 'ਲਾਈਨ-ਸਿੰਕ';

  @override
  String get lyricsUnsynced => 'ਬਿਨਾਂ ਸਿੰਕ';

  @override
  String get plNoPlaylists => 'ਅਜੇ ਕੋਈ ਪਲੇਲਿਸਟ ਨਹੀਂ — ਪਹਿਲਾਂ ਇੱਕ ਬਣਾਓ!';

  @override
  String get plAddToPlaylist => 'ਪਲੇਲਿਸਟ ਵਿੱਚ ਸ਼ਾਮਲ ਕਰੋ';

  @override
  String plAddedTo(String name) {
    return '$name ਵਿੱਚ ਸ਼ਾਮਲ ਕੀਤਾ';
  }

  @override
  String get shareLyrics => 'ਬੋਲ ਸਾਂਝੇ ਕਰੋ';

  @override
  String get shareMaxLines => 'ਵੱਧ ਤੋਂ ਵੱਧ ਲਾਈਨਾਂ ਚੁਣੀਆਂ ਗਈਆਂ';

  @override
  String sharePickLines(int count) {
    return '$count ਤੱਕ ਲਾਈਨਾਂ ਚੁਣੋ';
  }

  @override
  String get sharePickHint => 'ਹੇਠਾਂ ਕੁਝ ਲਾਈਨਾਂ ਚੁਣੋ…';

  @override
  String get shareButton => 'ਸਾਂਝਾ ਕਰੋ';

  @override
  String get batTitle => 'ਸੰਗੀਤ ਚੱਲਦਾ ਰਹੇ 🎵';

  @override
  String get batBody =>
      'Android ਦਾ ਬੈਟਰੀ ਔਪਟੀਮਾਈਜ਼ੇਸ਼ਨ ਸਕ੍ਰੀਨ ਬੰਦ ਹੋਣ \'ਤੇ ਸੰਗੀਤ ਨੂੰ ਰੋਕ ਸਕਦਾ ਹੈ। ਸਥਿਰ ਪਲੇਬੈਕ ਲਈ Hana360 ਨੂੰ ਬਿਨਾਂ ਪਾਬੰਦੀ ਚੱਲਣ ਦਿਓ।\n\nਤੁਸੀਂ ਇਸਨੂੰ ਕਦੇ ਵੀ ਬਦਲ ਸਕਦੇ ਹੋ: ਤੁਸੀਂ → \"ਬੈਕਗ੍ਰਾਊਂਡ ਵਿੱਚ ਚਲਾਉਂਦੇ ਰਹੋ\"।';

  @override
  String get batNotNow => 'ਹੁਣੇ ਨਹੀਂ';

  @override
  String get batAllow => 'ਇਜਾਜ਼ਤ ਦਿਓ';

  @override
  String get algoSwitch => 'ਐਲਗੋਰਿਦਮ';

  @override
  String get speakerDistance => 'ਸਪੀਕਰ ਦੂਰੀ';

  @override
  String get channelTrim => 'ਚੈਨਲ ਟ੍ਰਿਮ';

  @override
  String get masterGain => 'ਮਾਸਟਰ ਗੇਨ';

  @override
  String get secHrtf => 'HRTF ਵਿਅਕਤੀਗਤਕਰਨ';

  @override
  String get outputGain => 'ਆਉਟਪੁੱਟ ਗੇਨ';

  @override
  String get secEq => 'ਸਪੇਸ਼ੀਅਲ EQ';

  @override
  String get secReverb => 'ਰੀਵਰਬ';

  @override
  String get roomSize => 'ਕਮਰਾ';

  @override
  String get reverbGain => 'ਰੀਵਰਬ ਗੇਨ';

  @override
  String get secTracking => 'ਹੈੱਡ ਟਰੈਕਿੰਗ';

  @override
  String get trackOff => 'ਬੰਦ';

  @override
  String get trackSensor => 'ਫ਼ੋਨ ਸੈਂਸਰ';

  @override
  String get trackManual => 'ਮੈਨੁਅਲ XY';

  @override
  String get dragHint =>
      'ਸਿਰ ਦੀ ਦਿਸ਼ਾ ਵਿਵਸਥਿਤ ਕਰਨ ਲਈ ਖਿੱਚੋ (ਧੁਨੀ ਖੇਤਰ ਪਾਲਣਾ ਕਰਦਾ ਹੈ)';

  @override
  String get customEq => 'ਕਸਟਮ';

  @override
  String get eqPresetMusic => 'ਸੰਗੀਤ';

  @override
  String get eqPresetCinema => 'ਸਿਨੇਮਾ';

  @override
  String get eqPresetGame => 'ਖੇਡ';

  @override
  String get eqPresetVoice => 'ਆਵਾਜ਼';

  @override
  String get hrtfGroup0 => 'ਪੁਰਸ਼ / ਛੋਟਾ / ਛੋਟਾ';

  @override
  String get hrtfGroup1 => 'ਪੁਰਸ਼ / ਛੋਟਾ / ਵਿਚਕਾਰਲਾ';

  @override
  String get hrtfGroup2 => 'ਪੁਰਸ਼ / ਛੋਟਾ / ਵੱਡਾ';

  @override
  String get hrtfGroup3 => 'ਪੁਰਸ਼ / ਵਿਚਕਾਰਲਾ / ਛੋਟਾ';

  @override
  String get hrtfGroup4 => 'ਪੁਰਸ਼ / ਵਿਚਕਾਰਲਾ / ਵਿਚਕਾਰਲਾ';

  @override
  String get hrtfGroup5 => 'ਪੁਰਸ਼ / ਵਿਚਕਾਰਲਾ / ਵੱਡਾ';

  @override
  String get hrtfGroup6 => 'ਪੁਰਸ਼ / ਵੱਡਾ / ਛੋਟਾ';

  @override
  String get hrtfGroup7 => 'ਪੁਰਸ਼ / ਵੱਡਾ / ਵਿਚਕਾਰਲਾ';

  @override
  String get hrtfGroup8 => 'ਪੁਰਸ਼ / ਵੱਡਾ / ਵੱਡਾ';

  @override
  String get hrtfGroup9 => 'ਔਰਤ / ਛੋਟਾ / ਛੋਟਾ';

  @override
  String get hrtfGroup10 => 'ਔਰਤ / ਛੋਟਾ / ਵਿਚਕਾਰਲਾ';

  @override
  String get hrtfGroup11 => 'ਔਰਤ / ਛੋਟਾ / ਵੱਡਾ';

  @override
  String get hrtfGroup12 => 'ਔਰਤ / ਵਿਚਕਾਰਲਾ / ਛੋਟਾ';

  @override
  String get hrtfGroup13 => 'ਔਰਤ / ਵਿਚਕਾਰਲਾ / ਵਿਚਕਾਰਲਾ';

  @override
  String get hrtfGroup14 => 'ਔਰਤ / ਵਿਚਕਾਰਲਾ / ਵੱਡਾ';

  @override
  String get navHome => 'ਹੋਮ';

  @override
  String get navLibrary => 'ਲਾਇਬ੍ਰੇਰੀ';

  @override
  String get navPlaying => 'ਚੱਲ ਰਿਹਾ ਹੈ';

  @override
  String get navYou => 'ਤੁਸੀਂ';

  @override
  String get tabSongs => 'ਗੀਤ';

  @override
  String get tabAlbums => 'ਐਲਬਮਾਂ';

  @override
  String get tabFolders => 'ਫੋਲਡਰ';

  @override
  String get tabPlaylists => 'ਪਲੇਲਿਸਟਾਂ';

  @override
  String get youMood => 'ਮੂਡ';

  @override
  String get youCompanion => 'ਤੁਹਾਡਾ ਸਾਥੀ';

  @override
  String get youBuddies => 'ਦੋਸਤ';

  @override
  String get youSound => 'ਧੁਨੀ';

  @override
  String get youMore => 'ਹੋਰ';

  @override
  String get themeCherryBlossom => 'ਚੈਰੀ ਫੁੱਲ';

  @override
  String get themeStarryNight => 'ਤਾਰਿਆਂ ਭਰੀ ਰਾਤ';

  @override
  String get themeAdaptiveLight => 'ਅਡਾਪਟਿਵ ਲਾਈਟ';

  @override
  String get themeAdaptiveDark => 'ਅਡਾਪਟਿਵ ਡਾਰਕ';

  @override
  String youListenedTogether(int h, int m) {
    return '$hਘ $mਮਿ ਇਕੱਠੇ ਸੁਣਿਆ';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'ਹੈਡਰ ਅਤੇ ਹੁਣ ਚੱਲ ਰਿਹਾ ਹੈ';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'ਲਾਇਬ੍ਰੇਰੀ ਦੇ ਸਿਰਲੇਖ \'ਤੇ ਬੈਠਦਾ ਹੈ';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'ਮਿੰਨੀ ਪਲੇਅਰ \'ਤੇ ਝਪਕੀ ਲੈਂਦਾ ਹੈ';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'ਪਸੰਦੀਦਾ ਗੀਤਾਂ ਉੱਤੇ ਤੁਰਦਾ ਹੈ';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'ਡਾਰਕ ਥੀਮਾਂ \'ਤੇ ਚਮਕਦੀਆਂ ਹਨ';

  @override
  String get accBow => 'ਗੁਲਾਬੀ ਰਿਬਨ';

  @override
  String get accHeadphones => 'ਛੋਟੇ ਹੈੱਡਫ਼ੋਨ';

  @override
  String get accFlower => 'ਫੁੱਲ';

  @override
  String get accCrown => 'ਛੋਟਾ ਤਾਜ';

  @override
  String accUnlockLabel(int h) {
    return '$h ਘੰਟੇ ਸੁਣੋ';
  }

  @override
  String get youCrossfade => 'ਕਰਾਸਫੇਡ';

  @override
  String get youCrossfadeSub => 'ਗੀਤ ਦੇ ਅੰਤ ਨੂੰ ਅਗਲੇ ਨਾਲ ਮਿਲਾਓ';

  @override
  String get youSmartShuffle => 'ਸਮਾਰਟ ਸ਼ਫਲ';

  @override
  String get youSmartShuffleSub =>
      'ਸ਼ਫਲ ਤੁਹਾਡੇ ਮਨਪਸੰਦ ਵੱਲ ਝੁਕਦਾ ਹੈ — ਇਸ ਡਿਵਾਈਸ \'ਤੇ ਗਿਣਿਆ ਜਾਂਦਾ ਹੈ';

  @override
  String get libLikedSongs => 'ਪਸੰਦੀਦਾ ਗੀਤ';

  @override
  String get libTapHeart => 'ਗੀਤ ਨੂੰ ਇੱਥੇ ਰੱਖਣ ਲਈ ਇਸ \'ਤੇ ਦਿਲ ਨੂੰ ਟੈਪ ਕਰੋ';

  @override
  String get libRemovedFromQueue => 'ਕਤਾਰ ਤੋਂ ਹਟਾਇਆ ਗਿਆ';

  @override
  String get libRemovedFromLibrary => 'ਲਾਇਬ੍ਰੇਰੀ ਤੋਂ ਹਟਾਇਆ ਗਿਆ';

  @override
  String get libRemoveFromLibrary => 'ਲਾਇਬ੍ਰੇਰੀ ਤੋਂ ਹਟਾਓ';

  @override
  String get libNewPlaylist => 'ਨਵੀਂ ਪਲੇਲਿਸਟ';

  @override
  String get libPlaylistName => 'ਪਲੇਲਿਸਟ ਦਾ ਨਾਮ';

  @override
  String get libCreate => 'ਬਣਾਓ';

  @override
  String get libSwipeHint =>
      'ਹਟਾਉਣ ਲਈ ਖੱਬੇ ਸਵਾਈਪ ਕਰੋ · ਮੁੜ ਵਿਵਸਥਿਤ ਕਰਨ ਲਈ ਫੜੀ ਰੱਖੋ';

  @override
  String get libChooseCover => 'ਕਵਰ ਚਿੱਤਰ ਚੁਣੋ';

  @override
  String get libBackToArtCover => 'ਗੀਤ ਦੇ ਕਵਰ \'ਤੇ ਵਾਪਸ';

  @override
  String libDeleteConfirm(String name) {
    return '\"$name\" ਮਿਟਾਓ?';
  }

  @override
  String get libDeleteKeepSongs => 'ਗੀਤ ਆਪਣੇ ਆਪ ਤੁਹਾਡੀ ਡਿਵਾਈਸ \'ਤੇ ਰਹਿੰਦੇ ਹਨ';

  @override
  String get libKeep => 'ਰੱਖੋ';

  @override
  String get libDelete => 'ਮਿਟਾਓ';

  @override
  String get libRemoveKeepFile => 'ਫਾਈਲ ਆਪਣੇ ਆਪ ਤੁਹਾਡੀ ਡਿਵਾਈਸ \'ਤੇ ਰਹਿੰਦੀ ਹੈ';

  @override
  String get libClearConfirm => 'ਸਾਰੀਆਂ ਫਾਈਲਾਂ ਹਟਾਓ?';

  @override
  String get libLibraryCleared => 'ਲਾਇਬ੍ਰੇਰੀ ਖਾਲੀ ਕੀਤੀ ਗਈ';

  @override
  String get libPickAudioFiles => 'ਆਡੀਓ ਫਾਈਲਾਂ ਚੁਣੋ…';

  @override
  String get libImportFolder => 'ਫੋਲਡਰ ਆਯਾਤ ਕਰੋ';

  @override
  String get libScanWholeFolder => 'ਪੂਰਾ ਫੋਲਡਰ ਸਕੈਨ ਕਰੋ… (ਸਿਫ਼ਾਰਸ਼ੀ)';

  @override
  String libImportFailed(String error) {
    return 'ਆਯਾਤ ਅਸਫਲ: $error';
  }

  @override
  String get libNoAudioFound => 'ਕੋਈ ਆਡੀਓ ਫਾਈਲ ਨਹੀਂ ਮਿਲੀ';

  @override
  String libImportedCount(int count) {
    return '$count ਗੀਤ ਆਯਾਤ ਕੀਤੇ';
  }

  @override
  String get libNothingHere =>
      'ਇੱਥੇ ਅਜੇ ਕੁਝ ਨਹੀਂ — ਹਟਾਉਣ ਲਈ ਖੱਬੇ ਸਵਾਈਪ ਕਰੋ, ਮੁੜ ਵਿਵਸਥਿਤ ਕਰਨ ਲਈ ਫੜੀ ਰੱਖੋ';

  @override
  String get sidebarYourLibrary => 'ਤੁਹਾਡੀ ਲਾਇਬ੍ਰੇਰੀ';

  @override
  String get sidebarPlaylists => 'ਪਲੇਲਿਸਟਾਂ';

  @override
  String get sidebarFolders => 'ਫੋਲਡਰ';

  @override
  String get rowQueue => 'ਕਤਾਰ';

  @override
  String get rowRemove => 'ਹਟਾਓ';

  @override
  String get rowPlaylist => 'ਪਲੇਲਿਸਟ';

  @override
  String plTrackCount(int count) {
    return '$count ਟਰੈਕ';
  }

  @override
  String get lyricsSourceAuto => 'ਆਟੋ';

  @override
  String get lyricsSourceEmbedded => 'ਏਮਬੈਡਡ';

  @override
  String get lyricsSourceBestQuality => 'ਸਭ ਤੋਂ ਵਧੀਆ ਉਪਲਬਧ ਗੁਣਵੱਤਾ';

  @override
  String get lyricsSourceFileTags => 'ਆਡੀਓ ਫਾਈਲ ਦੇ ਆਪਣੇ ਟੈਗਾਂ ਤੋਂ';

  @override
  String get lyricsSourceWordOnline => 'ਸ਼ਬਦ-ਸਿੰਕ (ਆਨਲਾਈਨ)';

  @override
  String get lyricsSourceLineOnline => 'ਲਾਈਨ-ਸਿੰਕ (ਆਨਲਾਈਨ)';

  @override
  String get lyricsSourceNotFound => 'ਇਸ ਗੀਤ ਲਈ ਨਹੀਂ ਮਿਲਿਆ';

  @override
  String get npCatModeUnlocked => 'ਮਿਆਊਂ?! ਬਿੱਲੀ ਮੋਡ ਅਨਲੌਕ ਹੋਇਆ 🐱';

  @override
  String get shellResumePlayback => 'ਪਲੇਬੈਕ ਮੁੜ ਸ਼ੁਰੂ ਕਰੋ';

  @override
  String get shellPlay => 'ਚਲਾਓ';

  @override
  String get devSection => 'ਡਿਵੈਲਪਰ';

  @override
  String get devModeUnlocked => '🛠️ ਡਿਵੈਲਪਰ ਮੋਡ ਅਨਲੌਕ ਹੋਇਆ';

  @override
  String get devUnlockAll => 'ਸਾਰੇ ਐਕਸੈਸਰੀਜ਼ ਅਨਲੌਕ ਕਰੋ';

  @override
  String get devClearLyricsCache => 'ਬੋਲਾਂ ਦਾ ਕੈਸ਼ ਸਾਫ਼ ਕਰੋ';

  @override
  String get devRefetchLyrics => 'ਸਾਰੇ ਬੋਲ ਦੁਬਾਰਾ ਪ੍ਰਾਪਤ ਕਰੋ…';

  @override
  String get devLyricsCleared => 'ਬੋਲਾਂ ਦਾ ਕੈਸ਼ ਸਾਫ਼ ਕੀਤਾ ਗਿਆ';

  @override
  String get devHideOptions => 'ਡਿਵੈਲਪਰ ਵਿਕਲਪ ਲੁਕਾਓ';

  @override
  String get devModeOff => 'ਡਿਵੈਲਪਰ ਮੋਡ ਬੰਦ';

  @override
  String get youCantReadFolders => 'ਤੁਹਾਡੇ ਸੰਗੀਤ ਫੋਲਡਰ ਪੜ੍ਹੇ ਨਹੀਂ ਜਾ ਸਕੇ';

  @override
  String get youNoMusicFolders => 'ਕੋਈ ਸੰਗੀਤ ਫੋਲਡਰ ਨਹੀਂ ਮਿਲਿਆ';
}
