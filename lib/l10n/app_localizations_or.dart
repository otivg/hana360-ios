// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Oriya (`or`).
class AppLocalizationsOr extends AppLocalizations {
  AppLocalizationsOr([String locale = 'or']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'ଭାଷା';

  @override
  String get languageFollowSystem => 'ସିଷ୍ଟମ ଅନୁସରଣ କରନ୍ତୁ';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Hana360';

  @override
  String get commonCancel => 'ବାତିଲ୍ କରନ୍ତୁ';

  @override
  String get commonConfirm => 'ଠିକ୍ ଅଛି';

  @override
  String get commonBack => 'ପଛକୁ';

  @override
  String get commonDone => 'ଶେଷ ହେଲା';

  @override
  String get commonUnknown => 'ଅଜଣା';

  @override
  String get secUpmix => 'ଅପମିକ୍ସ ଇଞ୍ଜିନ୍';

  @override
  String get spatialAudioTitle => '360° ସ୍ପେସିଆଲ୍ ଅଡିଓ';

  @override
  String get npNothingPlaying => 'ଏପର୍ଯ୍ୟନ୍ତ କିଛି ଚାଲୁନାହିଁ';

  @override
  String get npPickSong => 'ଆପଣଙ୍କ ଲାଇବ୍ରେରୀରୁ ଗୀତ ବାଛନ୍ତୁ';

  @override
  String get npSpatialSettings => '360° ସେଟିଂସ୍';

  @override
  String get npLyrics => 'ଗୀତିକା';

  @override
  String get libSearchHint => 'ଆପଣଙ୍କ ସଙ୍ଗୀତରେ ଖୋଜନ୍ତୁ…';

  @override
  String get libClearLibrary => 'ଲାଇବ୍ରେରୀ ଖାଲି କରନ୍ତୁ';

  @override
  String get libImportMusic => 'ସଙ୍ଗୀତ ଆମଦାନୀ କରନ୍ତୁ';

  @override
  String libError(String error) {
    return 'କିଛି ଭୁଲ୍ ହେଲା: $error';
  }

  @override
  String libNoMatch(String query) {
    return '\"$query\" ସହିତ କିଛି ମେଳ ଖାଉନାହିଁ';
  }

  @override
  String get libPermissionDenied =>
      'ଆପଣଙ୍କ ସଙ୍ଗୀତ ଖୋଜିବା ପାଇଁ Hana360 କୁ ଅନୁମତି ଆବଶ୍ୟକ\nଏହି ଡିଭାଇସରେ ଆକ୍ସେସ୍ ନାହିଁ? ବଦଳରେ ଆମଦାନୀ କରନ୍ତୁ।';

  @override
  String get libNoSongs =>
      'ଏହି ଡିଭାଇସରେ କୌଣସି ଗୀତ ମିଳିଲା ନାହିଁ\nଆରମ୍ଭ କରିବାକୁ ଆପଣଙ୍କ ଫାଇଲରୁ ସଙ୍ଗୀତ ଆମଦାନୀ କରନ୍ତୁ';

  @override
  String get libGrantAccess => 'ଆକ୍ସେସ୍ ଦିଅନ୍ତୁ';

  @override
  String get libRescan => 'ପୁଣି ସ୍କାନ୍ କରନ୍ତୁ';

  @override
  String get libAddedToQueue => 'କ୍ୟୁରେ ଯୋଡାଗଲା';

  @override
  String get libNoAlbums => 'ଏପର୍ଯ୍ୟନ୍ତ କୌଣସି ଆଲବମ୍ ନାହିଁ';

  @override
  String get libNoFolders => 'ଏପର୍ଯ୍ୟନ୍ତ କୌଣସି ଫୋଲ୍ଡର ନାହିଁ';

  @override
  String get libNoPlaylists => 'ଏପର୍ଯ୍ୟନ୍ତ କୌଣସି ପ୍ଲେଲିଷ୍ଟ ନାହିଁ';

  @override
  String libPlaylistCreated(String name) {
    return 'ପ୍ଲେଲିଷ୍ଟ \"$name\" ତିଆରି ହେଲା 🌸';
  }

  @override
  String get libFolderHint => 'ଫୋଲ୍ଡରକୁ ପ୍ଲେଲିଷ୍ଟରେ ବଦଳାଇବାକୁ ଅଧିକ ସମୟ ଦବାନ୍ତୁ';

  @override
  String libSongCount(int count) {
    return '$count ଗୀତ';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count ଗୀତ · $path';
  }

  @override
  String get homeGreetingLate => 'ବିଳମ୍ବରେ ଜାଗ୍ରତ ♪';

  @override
  String get homeGreetingMorning => 'ସୁପ୍ରଭାତ ♪';

  @override
  String get homeGreetingAfternoon => 'ଶୁଭ ଅପରାହ୍ନ ♪';

  @override
  String get homeGreetingEvening => 'ଶୁଭ ସନ୍ଧ୍ୟା ♪';

  @override
  String get homeJumpBackIn => 'ପୁଣି ଯୋଡନ୍ତୁ';

  @override
  String get homeForYou => 'ଆପଣଙ୍କ ପାଇଁ';

  @override
  String get homeForYouSub => 'ଆପଣଙ୍କ ଶୁଣିବାରୁ, ଏହି ଡିଭାଇସରେ ବଛାଗଲା';

  @override
  String get homeWelcome => 'Hana360 କୁ ସ୍ୱାଗତ 🌸';

  @override
  String get homeAllQuiet => 'ସବୁ ଶାନ୍ତ 🌸';

  @override
  String get homeLibraryHint =>
      'ଆପଣଙ୍କ ସଙ୍ଗୀତ ଲାଇବ୍ରେରୀ ଟ୍ୟାବରେ ରହେ — ସେଠାରେ ଫୋଲ୍ଡର ଯୋଡନ୍ତୁ। ଆପଣ ଯାହା ଚଲାନ୍ତି ତାହା ସବୁ ଏଠାରେ ଏକାଠି ହୁଏ।';

  @override
  String get homePlayHint =>
      'କିଛି ଚଲାନ୍ତୁ ଏବଂ ପରବର୍ତ୍ତୀ ଥର ଏହା ଏଠାରେ ଅପେକ୍ଷା କରିବ।';

  @override
  String get youRescanLibrary => 'ଲାଇବ୍ରେରୀ ପୁଣି ସ୍କାନ୍ କରନ୍ତୁ';

  @override
  String get youExcludedFolders => 'ବାଦ୍ ଫୋଲ୍ଡରଗୁଡିକ';

  @override
  String get youExcludedFoldersSub => 'ଲାଇବ୍ରେରୀରୁ ଫୋଲ୍ଡର ଲୁଚାନ୍ତୁ';

  @override
  String get youCatMode => 'ବିଲେଇ ମୋଡ୍';

  @override
  String get youAbout => 'ବିଷୟରେ';

  @override
  String get youScanning => 'ଆପଣଙ୍କ ସଙ୍ଗୀତ ସ୍କାନ୍ ହେଉଛି…';

  @override
  String get youOpenSource => 'ଓପନ୍ ସୋର୍ସ';

  @override
  String get youOpenSourceSub =>
      'ShaptakNaskar ଙ୍କ Hanamimi (GPLv3) ର ବ୍ୟୁତ୍ପନ୍ନ ହେଉଛି Hana360 — 2026-08-10 ରେ ସଂଶୋଧିତ';

  @override
  String get youCheckUpdates => 'ଅପଡେଟ୍ ଯାଞ୍ଚ କରନ୍ତୁ';

  @override
  String get youCheckUpdatesSub => 'ନୂଆ ବିଲ୍ଡ GitHub Releases ରେ ଆସେ';

  @override
  String get youUpToDate => 'ଆପଣ ଅପ-ଟୁ-ଡେଟ୍ 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Sappy ଙ୍କ ଦ୍ୱାରା ନିର୍ମିତ';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'ପୃଷ୍ଠଭୂମିରେ ଚାଲୁ ରଖନ୍ତୁ';

  @override
  String get youKeepPlayingAllowed =>
      'ଅନୁମତି ଦିଆଗଲା — ସିଷ୍ଟମ ଆପଣଙ୍କ ସଙ୍ଗୀତ ବିରାମ ଦେବ ନାହିଁ';

  @override
  String get youKeepPlayingTap =>
      'ସିଷ୍ଟମ ପ୍ଲେବ୍ୟାକ୍ ଅଟକାଇବା ରୋକିବାକୁ ଟ୍ୟାପ୍ କରନ୍ତୁ';

  @override
  String get youExcludedFoldersTitle => 'ବାଦ୍ ଫୋଲ୍ଡରଗୁଡିକ';

  @override
  String get youExcludedFoldersDesc =>
      'ବନ୍ଦ ଫୋଲ୍ଡରର ଗୀତଗୁଡିକ ଲାଇବ୍ରେରୀରୁ ବାଦ୍ ରହେ';

  @override
  String get youVisSensitivity => 'ଭିଜୁଆଲାଇଜର ସମ୍ବେଦନଶୀଳତା';

  @override
  String get youVisSensitivitySub =>
      'ଯେଉଁ ଗୀତ ଏହାକୁ ଅଳ୍ପ ଚଳାଏ ସେଥିପାଇଁ ବଢାନ୍ତୁ';

  @override
  String get youNerdMode => 'ନର୍ଡ ମୋଡ୍';

  @override
  String get youNerdModeSub =>
      'ଏବେ ଚାଲୁଥିବାରେ codec, bitrate ଏବଂ ଅଡିଓ ଆଉଟପୁଟ୍ ଦେଖାନ୍ତୁ';

  @override
  String get youEqualizer => 'ଇକ୍ୱାଲାଇଜର';

  @override
  String get youComingSoon => 'ଶୀଘ୍ର ଆସୁଛି';

  @override
  String get sleepTimer => 'ଶୋଇବା ଟାଇମର';

  @override
  String get sleep15 => '15 ମିନିଟ୍';

  @override
  String get sleep30 => '30 ମିନିଟ୍';

  @override
  String get sleep1h => '1 ଘଣ୍ଟା';

  @override
  String get sleepEndTrack => 'ଗୀତର ଶେଷ';

  @override
  String get sleepFading => 'ଧୀରେ ଧୀରେ କମୁଛି… ମିଠା ସ୍ୱପ୍ନ';

  @override
  String sleepIn(String time) {
    return '$time ରେ ଶୋଇବା';
  }

  @override
  String get sleepEndTrackActive => 'ଏହି ଗୀତ ଶେଷ ହେଲେ ଶୋଇବା';

  @override
  String get sleepCancel => 'ଟାଇମର ବାତିଲ୍ କରନ୍ତୁ';

  @override
  String get queueUpNext => 'ପରବର୍ତ୍ତୀ';

  @override
  String get queueEmpty => 'କ୍ୟୁ ଖାଲି';

  @override
  String get updateAvailable => 'ଅପଡେଟ୍ ଉପଲବ୍ଧ ✨';

  @override
  String get updateNoNotes => 'କୌଣସି ରିଲିଜ୍ ନୋଟ୍ ନାହିଁ।';

  @override
  String get updateInstalling => 'ଇନଷ୍ଟଲେସନ୍ ଖୋଲୁଛି…';

  @override
  String get updateFailed => 'ଅପଡେଟ୍ ହେଲା ନାହିଁ — ପରେ ପୁଣି ଚେଷ୍ଟା କରନ୍ତୁ';

  @override
  String get updateLater => 'ପରେ';

  @override
  String get updateRetry => 'ପୁଣି ଚେଷ୍ଟା';

  @override
  String get updateNow => 'ଅପଡେଟ୍ କରନ୍ତୁ';

  @override
  String get spatialToggleTitle => '360° ସ୍ପେସିଆଲ୍ ଅଡିଓ';

  @override
  String get spatialOn => 'ଚାଲୁ';

  @override
  String get spatialOff => 'ବନ୍ଦ';

  @override
  String get lyricsNoFound => 'ଗୀତିକା ମିଳିଲା ନାହିଁ';

  @override
  String get lyricsJustListening => 'ଏହା କେବଳ ଶୁଣିବା ପାଇଁ';

  @override
  String get lyricsTrySource => 'ଅନ୍ୟ ଉତ୍ସ ଚେଷ୍ଟା କରନ୍ତୁ';

  @override
  String get lyricsSource => 'ଗୀତିକାର ଉତ୍ସ';

  @override
  String get lyricsWordSynced => 'ଶବ୍ଦ-ସମନ୍ୱୟ';

  @override
  String get lyricsLineSynced => 'ଧାଡି-ସମନ୍ୱୟ';

  @override
  String get lyricsUnsynced => 'ଅସମନ୍ୱିତ';

  @override
  String get plNoPlaylists =>
      'ଏପର୍ଯ୍ୟନ୍ତ କୌଣସି ପ୍ଲେଲିଷ୍ଟ ନାହିଁ — ପ୍ରଥମେ ଗୋଟିଏ ତିଆରି କରନ୍ତୁ!';

  @override
  String get plAddToPlaylist => 'ପ୍ଲେଲିଷ୍ଟରେ ଯୋଡନ୍ତୁ';

  @override
  String plAddedTo(String name) {
    return '$name ରେ ଯୋଡାଗଲା';
  }

  @override
  String get shareLyrics => 'ଗୀତିକା ସେୟାର କରନ୍ତୁ';

  @override
  String get shareMaxLines => 'ସର୍ବାଧିକ ଧାଡି ବଛାଗଲା';

  @override
  String sharePickLines(int count) {
    return '$count ପର୍ଯ୍ୟନ୍ତ ଧାଡି ବାଛନ୍ତୁ';
  }

  @override
  String get sharePickHint => 'ନିମ୍ନରେ କିଛି ଧାଡି ବାଛନ୍ତୁ…';

  @override
  String get shareButton => 'ସେୟାର କରନ୍ତୁ';

  @override
  String get batTitle => 'ସଙ୍ଗୀତ ଚାଲୁ ରହୁ 🎵';

  @override
  String get batBody =>
      'Android ର ବ୍ୟାଟେରୀ ଅପ୍ଟିମାଇଜେସନ୍ ସ୍କ୍ରିନ୍ ବନ୍ଦ ଥିବାବେଳେ ସଙ୍ଗୀତ ବିରାମ ଦେଇପାରେ। ସ୍ଥିର ପ୍ଲେବ୍ୟାକ୍ ପାଇଁ Hana360 କୁ ଅନିୟନ୍ତ୍ରିତ ଚଲିବାକୁ ଅନୁମତି ଦିଅନ୍ତୁ।\n\nଆପଣ → \"ପୃଷ୍ଠଭୂମିରେ ଚାଲୁ ରଖନ୍ତୁ\" ରେ ଏହା ଯେକୌଣସି ସମୟରେ ବଦଳାଇ ପାରିବେ।';

  @override
  String get batNotNow => 'ଏବେ ନୁହେଁ';

  @override
  String get batAllow => 'ଅନୁମତି ଦିଅନ୍ତୁ';

  @override
  String get algoSwitch => 'ଆଲଗୋରିଦମ୍';

  @override
  String get speakerDistance => 'ସ୍ପିକର ଦୂରତା';

  @override
  String get channelTrim => 'ଚ୍ୟାନେଲ୍ ଟ୍ରିମ୍';

  @override
  String get masterGain => 'ମାଷ୍ଟର ଗେନ୍';

  @override
  String get secHrtf => 'HRTF ବ୍ୟକ୍ତିଗତକରଣ';

  @override
  String get outputGain => 'ଆଉଟପୁଟ୍ ଗେନ୍';

  @override
  String get secEq => 'ସ୍ପେସିଆଲ୍ EQ';

  @override
  String get secReverb => 'ରିଭର୍ବ';

  @override
  String get roomSize => 'ରୁମ୍';

  @override
  String get reverbGain => 'ରିଭର୍ବ ଗେନ୍';

  @override
  String get secTracking => 'ମୁଣ୍ଡ ଟ୍ରାକିଂ';

  @override
  String get trackOff => 'ବନ୍ଦ';

  @override
  String get trackSensor => 'ଫୋନ୍ ସେନସର';

  @override
  String get trackManual => 'ମ୍ୟାନୁଆଲ୍ XY';

  @override
  String get dragHint =>
      'ମୁଣ୍ଡର ଦିଗ ସଜାଡିବାକୁ ଟାଣନ୍ତୁ (ଧ୍ୱନି କ୍ଷେତ୍ର ଅନୁସରଣ କରେ)';

  @override
  String get customEq => 'କଷ୍ଟମ୍';

  @override
  String get eqPresetMusic => 'ସଙ୍ଗୀତ';

  @override
  String get eqPresetCinema => 'ସିନେମା';

  @override
  String get eqPresetGame => 'ଗେମ୍';

  @override
  String get eqPresetVoice => 'ସ୍ୱର';

  @override
  String get hrtfGroup0 => 'ପୁରୁଷ / ଛୋଟ / ଛୋଟ';

  @override
  String get hrtfGroup1 => 'ପୁରୁଷ / ଛୋଟ / ମଧ୍ୟମ';

  @override
  String get hrtfGroup2 => 'ପୁରୁଷ / ଛୋଟ / ବଡ';

  @override
  String get hrtfGroup3 => 'ପୁରୁଷ / ମଧ୍ୟମ / ଛୋଟ';

  @override
  String get hrtfGroup4 => 'ପୁରୁଷ / ମଧ୍ୟମ / ମଧ୍ୟମ';

  @override
  String get hrtfGroup5 => 'ପୁରୁଷ / ମଧ୍ୟମ / ବଡ';

  @override
  String get hrtfGroup6 => 'ପୁରୁଷ / ବଡ / ଛୋଟ';

  @override
  String get hrtfGroup7 => 'ପୁରୁଷ / ବଡ / ମଧ୍ୟମ';

  @override
  String get hrtfGroup8 => 'ପୁରୁଷ / ବଡ / ବଡ';

  @override
  String get hrtfGroup9 => 'ମହିଳା / ଛୋଟ / ଛୋଟ';

  @override
  String get hrtfGroup10 => 'ମହିଳା / ଛୋଟ / ମଧ୍ୟମ';

  @override
  String get hrtfGroup11 => 'ମହିଳା / ଛୋଟ / ବଡ';

  @override
  String get hrtfGroup12 => 'ମହିଳା / ମଧ୍ୟମ / ଛୋଟ';

  @override
  String get hrtfGroup13 => 'ମହିଳା / ମଧ୍ୟମ / ମଧ୍ୟମ';

  @override
  String get hrtfGroup14 => 'ମହିଳା / ମଧ୍ୟମ / ବଡ';

  @override
  String get navHome => 'ହୋମ୍';

  @override
  String get navLibrary => 'ଲାଇବ୍ରେରୀ';

  @override
  String get navPlaying => 'ଚାଲୁଛି';

  @override
  String get navYou => 'ଆପଣ';

  @override
  String get tabSongs => 'ଗୀତ';

  @override
  String get tabAlbums => 'ଆଲବମ୍';

  @override
  String get tabFolders => 'ଫୋଲ୍ଡର';

  @override
  String get tabPlaylists => 'ପ୍ଲେଲିଷ୍ଟ';

  @override
  String get youMood => 'ମୁଡ୍';

  @override
  String get youCompanion => 'ଆପଣଙ୍କ ସାଥୀ';

  @override
  String get youBuddies => 'ବନ୍ଧୁ';

  @override
  String get youSound => 'ଧ୍ୱନି';

  @override
  String get youMore => 'ଅଧିକ';

  @override
  String get themeCherryBlossom => 'ଚେରି ଫୁଲ';

  @override
  String get themeStarryNight => 'ତାରାଭରା ରାତି';

  @override
  String get themeAdaptiveLight => 'ଆଡାପ୍ଟିଭ୍ ଲାଇଟ୍';

  @override
  String get themeAdaptiveDark => 'ଆଡାପ୍ଟିଭ୍ ଡାର୍କ';

  @override
  String youListenedTogether(int h, int m) {
    return '$hଘ $mମି ଏକାଠି ଶୁଣାଗଲା';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'ହେଡର ଏବଂ ଏବେ ଚାଲୁଛି';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'ଲାଇବ୍ରେରୀ ଶୀର୍ଷକରେ ବସେ';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'ମିନି ପ୍ଲେୟରରେ ଶୁଏ';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'ପସନ୍ଦ ଗୀତ ଉପରେ ଚାଲେ';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'ଡାର୍କ ଥିମରେ ଝଲସେ';

  @override
  String get accBow => 'ଗୋଲାପୀ ଫିତା';

  @override
  String get accHeadphones => 'ଛୋଟ ହେଡଫୋନ୍';

  @override
  String get accFlower => 'ଫୁଲ';

  @override
  String get accCrown => 'ଛୋଟ ମୁକୁଟ';

  @override
  String accUnlockLabel(int h) {
    return '$h ଘଣ୍ଟା ଶୁଣନ୍ତୁ';
  }

  @override
  String get youCrossfade => 'କ୍ରସଫେଡ୍';

  @override
  String get youCrossfadeSub => 'ଗୀତର ଶେଷକୁ ପରବର୍ତ୍ତୀ ଗୀତ ସହିତ ମିଶାନ୍ତୁ';

  @override
  String get youSmartShuffle => 'ସ୍ମାର୍ଟ ସଫଲ୍';

  @override
  String get youSmartShuffleSub =>
      'ସଫଲ୍ ଆପଣଙ୍କ ପ୍ରିୟଙ୍କ ଆଡକୁ ଢଳେ — ଏହି ଡିଭାଇସରେ ଗଣନା';

  @override
  String get libLikedSongs => 'ପସନ୍ଦ ଗୀତ';

  @override
  String get libTapHeart => 'ଗୀତକୁ ଏଠାରେ ରଖିବାକୁ ତା\'ର ହୃଦୟ ଟ୍ୟାପ୍ କରନ୍ତୁ';

  @override
  String get libRemovedFromQueue => 'କ୍ୟୁରୁ ବାହାର କରାଗଲା';

  @override
  String get libRemovedFromLibrary => 'ଲାଇବ୍ରେରୀରୁ ବାହାର କରାଗଲା';

  @override
  String get libRemoveFromLibrary => 'ଲାଇବ୍ରେରୀରୁ ବାହାର କରନ୍ତୁ';

  @override
  String get libNewPlaylist => 'ନୂଆ ପ୍ଲେଲିଷ୍ଟ';

  @override
  String get libPlaylistName => 'ପ୍ଲେଲିଷ୍ଟ ନାମ';

  @override
  String get libCreate => 'ତିଆରି କରନ୍ତୁ';

  @override
  String get libSwipeHint =>
      'ବାହାର କରିବାକୁ ବାମକୁ ସ୍ୱାଇପ୍ · ପୁନଃକ୍ରମ କରିବାକୁ ଧରି ରଖନ୍ତୁ';

  @override
  String get libChooseCover => 'କଭର ଚିତ୍ର ବାଛନ୍ତୁ';

  @override
  String get libBackToArtCover => 'ଗୀତର କଭରକୁ ଫେରନ୍ତୁ';

  @override
  String libDeleteConfirm(String name) {
    return '\"$name\" ଡିଲିଟ୍ କରିବେ?';
  }

  @override
  String get libDeleteKeepSongs => 'ଗୀତଗୁଡିକ ନିଜେ ଆପଣଙ୍କ ଡିଭାଇସରେ ରହିବ';

  @override
  String get libKeep => 'ରଖନ୍ତୁ';

  @override
  String get libDelete => 'ଡିଲିଟ୍';

  @override
  String get libRemoveKeepFile => 'ଫାଇଲ ନିଜେ ଆପଣଙ୍କ ଡିଭାଇସରେ ରହିବ';

  @override
  String get libClearConfirm => 'ସବୁ ଫାଇଲ ବାହାର କରିବେ?';

  @override
  String get libLibraryCleared => 'ଲାଇବ୍ରେରୀ ଖାଲି ହେଲା';

  @override
  String get libPickAudioFiles => 'ଅଡିଓ ଫାଇଲ ବାଛନ୍ତୁ…';

  @override
  String get libImportFolder => 'ଫୋଲ୍ଡର ଆମଦାନୀ କରନ୍ତୁ';

  @override
  String get libScanWholeFolder => 'ପୂରା ଫୋଲ୍ଡର ସ୍କାନ୍ କରନ୍ତୁ… (ସୁପାରିଶ)';

  @override
  String libImportFailed(String error) {
    return 'ଆମଦାନୀ ବିଫଳ: $error';
  }

  @override
  String get libNoAudioFound => 'କୌଣସି ଅଡିଓ ଫାଇଲ ମିଳିଲା ନାହିଁ';

  @override
  String libImportedCount(int count) {
    return '$count ଗୀତ ଆମଦାନୀ ହେଲା';
  }

  @override
  String get libNothingHere =>
      'ଏଠାରେ ଏପର୍ଯ୍ୟନ୍ତ କିଛି ନାହିଁ — ବାହାର କରିବାକୁ ବାମକୁ ସ୍ୱାଇପ୍, ପୁନଃକ୍ରମ କରିବାକୁ ଧରି ରଖନ୍ତୁ';

  @override
  String get sidebarYourLibrary => 'ଆପଣଙ୍କ ଲାଇବ୍ରେରୀ';

  @override
  String get sidebarPlaylists => 'ପ୍ଲେଲିଷ୍ଟ';

  @override
  String get sidebarFolders => 'ଫୋଲ୍ଡର';

  @override
  String get rowQueue => 'କ୍ୟୁ';

  @override
  String get rowRemove => 'ବାହାର କରନ୍ତୁ';

  @override
  String get rowPlaylist => 'ପ୍ଲେଲିଷ୍ଟ';

  @override
  String plTrackCount(int count) {
    return '$count ଟ୍ରାକ୍';
  }

  @override
  String get lyricsSourceAuto => 'ଅଟୋ';

  @override
  String get lyricsSourceEmbedded => 'ଏମବେଡେଡ୍';

  @override
  String get lyricsSourceBestQuality => 'ସର୍ବୋତ୍ତମ ଉପଲବ୍ଧ ଗୁଣବତ୍ତା';

  @override
  String get lyricsSourceFileTags => 'ଅଡିଓ ଫାଇଲର ନିଜସ୍ୱ ଟ୍ୟାଗରୁ';

  @override
  String get lyricsSourceWordOnline => 'ଶବ୍ଦ-ସମନ୍ୱୟ (ଅନଲାଇନ୍)';

  @override
  String get lyricsSourceLineOnline => 'ଧାଡି-ସମନ୍ୱୟ (ଅନଲାଇନ୍)';

  @override
  String get lyricsSourceNotFound => 'ଏହି ଗୀତ ପାଇଁ ମିଳିଲା ନାହିଁ';

  @override
  String get npCatModeUnlocked => 'ମିଆଉ?! ବିଲେଇ ମୋଡ୍ ଅନଲକ୍ ହେଲା 🐱';

  @override
  String get shellResumePlayback => 'ପ୍ଲେବ୍ୟାକ୍ ପୁନଃଆରମ୍ଭ କରନ୍ତୁ';

  @override
  String get shellPlay => 'ଚଲାନ୍ତୁ';

  @override
  String get devSection => 'ଡେଭେଲପର';

  @override
  String get devModeUnlocked => '🛠️ ଡେଭେଲପର ମୋଡ୍ ଅନଲକ୍ ହେଲା';

  @override
  String get devUnlockAll => 'ସବୁ ଆକ୍ସେସରି ଅନଲକ୍ କରନ୍ତୁ';

  @override
  String get devClearLyricsCache => 'ଗୀତିକା କ୍ୟାସ୍ ସଫା କରନ୍ତୁ';

  @override
  String get devRefetchLyrics => 'ସବୁ ଗୀତିକା ପୁଣି ଆଣନ୍ତୁ…';

  @override
  String get devLyricsCleared => 'ଗୀତିକା କ୍ୟାସ୍ ସଫା ହେଲା';

  @override
  String get devHideOptions => 'ଡେଭେଲପର ବିକଳ୍ପ ଲୁଚାନ୍ତୁ';

  @override
  String get devModeOff => 'ଡେଭେଲପର ମୋଡ୍ ବନ୍ଦ';

  @override
  String get youCantReadFolders => 'ଆପଣଙ୍କ ସଙ୍ଗୀତ ଫୋଲ୍ଡର ପଢି ହେଲା ନାହିଁ';

  @override
  String get youNoMusicFolders => 'କୌଣସି ସଙ୍ଗୀତ ଫୋଲ୍ଡର ମିଳିଲା ନାହିଁ';
}
