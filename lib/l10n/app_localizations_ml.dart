// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malayalam (`ml`).
class AppLocalizationsMl extends AppLocalizations {
  AppLocalizationsMl([String locale = 'ml']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'ഭാഷ';

  @override
  String get languageFollowSystem => 'സിസ്റ്റം പിന്തുടരുക';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Hana360';

  @override
  String get commonCancel => 'റദ്ദാക്കുക';

  @override
  String get commonConfirm => 'ശരി';

  @override
  String get commonBack => 'തിരികെ';

  @override
  String get commonDone => 'പൂർത്തിയായി';

  @override
  String get commonUnknown => 'അജ്ഞാതം';

  @override
  String get secUpmix => 'അപ്‌മിക്സ് എഞ്ചിൻ';

  @override
  String get spatialAudioTitle => '360° സ്പേഷ്യൽ ഓഡിയോ';

  @override
  String get npNothingPlaying => 'ഇതുവരെ ഒന്നും പ്ലേ ആയിട്ടില്ല';

  @override
  String get npPickSong =>
      'നിങ്ങളുടെ ലൈബ്രറിയിൽ നിന്ന് ഒരു പാട്ട് തിരഞ്ഞെടുക്കുക';

  @override
  String get npSpatialSettings => '360° ക്രമീകരണങ്ങൾ';

  @override
  String get npLyrics => 'വരികൾ';

  @override
  String get libSearchHint => 'നിങ്ങളുടെ സംഗീതത്തിൽ തിരയുക…';

  @override
  String get libClearLibrary => 'ലൈബ്രറി ശൂന്യമാക്കുക';

  @override
  String get libImportMusic => 'സംഗീതം ഇറക്കുമതി ചെയ്യുക';

  @override
  String libError(String error) {
    return 'എന്തോ കുഴപ്പം സംഭവിച്ചു: $error';
  }

  @override
  String libNoMatch(String query) {
    return '\"$query\" എന്നതുമായി ഒന്നും യോജിക്കുന്നില്ല';
  }

  @override
  String get libPermissionDenied =>
      'നിങ്ങളുടെ സംഗീതം കണ്ടെത്താൻ Hana360 ന് അനുമതി വേണം\nഈ ഉപകരണത്തിൽ ആക്സസ് ഇല്ലേ? പകരം ഇറക്കുമതി ചെയ്യുക.';

  @override
  String get libNoSongs =>
      'ഈ ഉപകരണത്തിൽ പാട്ടുകളൊന്നും കണ്ടെത്തിയില്ല\nആരംഭിക്കാൻ നിങ്ങളുടെ ഫയലുകളിൽ നിന്ന് സംഗീതം ഇറക്കുമതി ചെയ്യുക';

  @override
  String get libGrantAccess => 'ആക്സസ് നൽകുക';

  @override
  String get libRescan => 'വീണ്ടും സ്കാൻ ചെയ്യുക';

  @override
  String get libAddedToQueue => 'ക്യൂവിൽ ചേർത്തു';

  @override
  String get libNoAlbums => 'ഇതുവരെ ആൽബങ്ങളൊന്നുമില്ല';

  @override
  String get libNoFolders => 'ഇതുവരെ ഫോൾഡറുകളൊന്നുമില്ല';

  @override
  String get libNoPlaylists => 'ഇതുവരെ പ്ലേലിസ്റ്റുകളൊന്നുമില്ല';

  @override
  String libPlaylistCreated(String name) {
    return 'പ്ലേലിസ്റ്റ് \"$name\" സൃഷ്ടിച്ചു 🌸';
  }

  @override
  String get libFolderHint => 'ഒരു ഫോൾഡർ പ്ലേലിസ്റ്റാക്കാൻ അധികനേരം അമർത്തുക';

  @override
  String libSongCount(int count) {
    return '$count പാട്ടുകൾ';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count പാട്ടുകൾ · $path';
  }

  @override
  String get homeGreetingLate => 'വൈകി ഉണർന്നിരിക്കുന്നു ♪';

  @override
  String get homeGreetingMorning => 'സുപ്രഭാതം ♪';

  @override
  String get homeGreetingAfternoon => 'ശുഭ ഉച്ച ♪';

  @override
  String get homeGreetingEvening => 'ശുഭ സായാഹ്നം ♪';

  @override
  String get homeJumpBackIn => 'തിരികെ ചേരുക';

  @override
  String get homeForYou => 'നിങ്ങൾക്കായി';

  @override
  String get homeForYouSub =>
      'നിങ്ങളുടെ ശ്രവണത്തിൽ നിന്ന്, ഈ ഉപകരണത്തിൽ തിരഞ്ഞെടുത്തു';

  @override
  String get homeWelcome => 'Hana360 ലേക്ക് സ്വാഗതം 🌸';

  @override
  String get homeAllQuiet => 'എല്ലാം ശാന്തം 🌸';

  @override
  String get homeLibraryHint =>
      'നിങ്ങളുടെ സംഗീതം ലൈബ്രറി ടാബിൽ വസിക്കുന്നു — അവിടെ ഫോൾഡറുകൾ ചേർക്കുക. നിങ്ങൾ പ്ലേ ചെയ്യുന്നതെല്ലാം ഇവിടെ ശേഖരിക്കപ്പെടുന്നു.';

  @override
  String get homePlayHint =>
      'എന്തെങ്കിലും പ്ലേ ചെയ്യുക, അടുത്ത തവണ അത് ഇവിടെ കാത്തിരിക്കും.';

  @override
  String get youRescanLibrary => 'ലൈബ്രറി വീണ്ടും സ്കാൻ ചെയ്യുക';

  @override
  String get youExcludedFolders => 'ഒഴിവാക്കിയ ഫോൾഡറുകൾ';

  @override
  String get youExcludedFoldersSub => 'ലൈബ്രറിയിൽ നിന്ന് ഫോൾഡറുകൾ മറയ്ക്കുക';

  @override
  String get youCatMode => 'പൂച്ച മോഡ്';

  @override
  String get youAbout => 'കുറിച്ച്';

  @override
  String get youScanning => 'നിങ്ങളുടെ സംഗീതം സ്കാൻ ചെയ്യുന്നു…';

  @override
  String get youOpenSource => 'ഓപ്പൺ സോഴ്‌സ്';

  @override
  String get youOpenSourceSub =>
      'ShaptakNaskar ന്റെ Hanamimi (GPLv3) യുടെ വ്യുൽപ്പന്നമാണ് Hana360 — 2026-08-10 ന് പരിഷ്കരിച്ചു';

  @override
  String get youCheckUpdates => 'അപ്ഡേറ്റുകൾ പരിശോധിക്കുക';

  @override
  String get youCheckUpdatesSub => 'പുതിയ ബിൽഡുകൾ GitHub Releases ൽ എത്തുന്നു';

  @override
  String get youUpToDate => 'നിങ്ങൾ കാലികമാണ് 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Sappy നിർമ്മിച്ചത്';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'പശ്ചാത്തലത്തിൽ പ്ലേ തുടരുക';

  @override
  String get youKeepPlayingAllowed =>
      'അനുവദിച്ചു — സിസ്റ്റം നിങ്ങളുടെ സംഗീതം പോസ് ചെയ്യില്ല';

  @override
  String get youKeepPlayingTap =>
      'സിസ്റ്റം പ്ലേബാക്ക് നിർത്തുന്നത് തടയാൻ ടാപ്പ് ചെയ്യുക';

  @override
  String get youExcludedFoldersTitle => 'ഒഴിവാക്കിയ ഫോൾഡറുകൾ';

  @override
  String get youExcludedFoldersDesc =>
      'ഓഫാക്കിയ ഫോൾഡറുകളിലെ പാട്ടുകൾ ലൈബ്രറിയിൽ നിന്ന് ഒഴിവാക്കപ്പെടുന്നു';

  @override
  String get youVisSensitivity => 'വിഷ്വലൈസർ സംവേദനക്ഷമത';

  @override
  String get youVisSensitivitySub =>
      'അതിനെ വെറും ചലിപ്പിക്കുന്ന പാട്ടുകൾക്ക് കൂട്ടുക';

  @override
  String get youNerdMode => 'നെർഡ് മോഡ്';

  @override
  String get youNerdModeSub =>
      'ഇപ്പോൾ പ്ലേ ചെയ്യുന്നതിൽ codec, bitrate, ഓഡിയോ ഔട്ട്‌പുട്ട് കാണിക്കുക';

  @override
  String get youEqualizer => 'ഇക്വലൈസർ';

  @override
  String get youComingSoon => 'ഉടൻ വരുന്നു';

  @override
  String get sleepTimer => 'സ്ലീപ്പ് ടൈമർ';

  @override
  String get sleep15 => '15 മിനിറ്റ്';

  @override
  String get sleep30 => '30 മിനിറ്റ്';

  @override
  String get sleep1h => '1 മണിക്കൂർ';

  @override
  String get sleepEndTrack => 'പാട്ടിന്റെ അവസാനം';

  @override
  String get sleepFading => 'മങ്ങുന്നു… മധുര സ്വപ്നങ്ങൾ';

  @override
  String sleepIn(String time) {
    return '$time കഴിഞ്ഞ് ഉറക്കം';
  }

  @override
  String get sleepEndTrackActive => 'ഈ പാട്ട് അവസാനിക്കുമ്പോൾ ഉറക്കം';

  @override
  String get sleepCancel => 'ടൈമർ റദ്ദാക്കുക';

  @override
  String get queueUpNext => 'അടുത്തത്';

  @override
  String get queueEmpty => 'ക്യൂ ശൂന്യമാണ്';

  @override
  String get updateAvailable => 'അപ്ഡേറ്റ് ലഭ്യമാണ് ✨';

  @override
  String get updateNoNotes => 'റിലീസ് കുറിപ്പുകളൊന്നുമില്ല.';

  @override
  String get updateInstalling => 'ഇൻസ്റ്റാളേഷൻ തുറക്കുന്നു…';

  @override
  String get updateFailed =>
      'അപ്ഡേറ്റ് ചെയ്യാനായില്ല — പിന്നീട് വീണ്ടും ശ്രമിക്കുക';

  @override
  String get updateLater => 'പിന്നീട്';

  @override
  String get updateRetry => 'വീണ്ടും ശ്രമിക്കുക';

  @override
  String get updateNow => 'അപ്ഡേറ്റ് ചെയ്യുക';

  @override
  String get spatialToggleTitle => '360° സ്പേഷ്യൽ ഓഡിയോ';

  @override
  String get spatialOn => 'ഓൺ';

  @override
  String get spatialOff => 'ഓഫ്';

  @override
  String get lyricsNoFound => 'വരികൾ കണ്ടെത്തിയില്ല';

  @override
  String get lyricsJustListening => 'ഇത് കേൾക്കാൻ മാത്രമുള്ളതാണ്';

  @override
  String get lyricsTrySource => 'മറ്റൊരു ഉറവിടം പരീക്ഷിക്കുക';

  @override
  String get lyricsSource => 'വരികളുടെ ഉറവിടം';

  @override
  String get lyricsWordSynced => 'വാക്ക്-സമന്വയം';

  @override
  String get lyricsLineSynced => 'വരി-സമന്വയം';

  @override
  String get lyricsUnsynced => 'സമന്വയമില്ലാത്തത്';

  @override
  String get plNoPlaylists =>
      'ഇതുവരെ പ്ലേലിസ്റ്റുകളൊന്നുമില്ല — ആദ്യം ഒന്ന് ഉണ്ടാക്കുക!';

  @override
  String get plAddToPlaylist => 'പ്ലേലിസ്റ്റിലേക്ക് ചേർക്കുക';

  @override
  String plAddedTo(String name) {
    return '$name ലേക്ക് ചേർത്തു';
  }

  @override
  String get shareLyrics => 'വരികൾ പങ്കിടുക';

  @override
  String get shareMaxLines => 'പരമാവധി വരികൾ തിരഞ്ഞെടുത്തു';

  @override
  String sharePickLines(int count) {
    return '$count വരെ വരികൾ തിരഞ്ഞെടുക്കുക';
  }

  @override
  String get sharePickHint => 'താഴെ കുറച്ച് വരികൾ തിരഞ്ഞെടുക്കുക…';

  @override
  String get shareButton => 'പങ്കിടുക';

  @override
  String get batTitle => 'സംഗീതം പ്ലേ ആയിക്കൊണ്ടിരിക്കട്ടെ 🎵';

  @override
  String get batBody =>
      'Android ന്റെ ബാറ്ററി ഒപ്റ്റിമൈസേഷൻ സ്ക്രീൻ ഓഫായിരിക്കുമ്പോൾ സംഗീതം പോസ് ചെയ്യാം. സ്ഥിരമായ പ്ലേബാക്കിനായി Hana360 ന് നിയന്ത്രണമില്ലാതെ പ്രവർത്തിക്കാൻ അനുവദിക്കുക.\n\nനിങ്ങൾ → \"പശ്ചാത്തലത്തിൽ പ്ലേ തുടരുക\" എന്നതിൽ ഇത് എപ്പോൾ വേണമെങ്കിലും മാറ്റാം.';

  @override
  String get batNotNow => 'ഇപ്പോൾ വേണ്ട';

  @override
  String get batAllow => 'അനുവദിക്കുക';

  @override
  String get algoSwitch => 'അൽഗോരിതം';

  @override
  String get speakerDistance => 'സ്പീക്കർ ദൂരം';

  @override
  String get channelTrim => 'ചാനൽ ട്രിം';

  @override
  String get masterGain => 'മാസ്റ്റർ ഗെയിൻ';

  @override
  String get secHrtf => 'HRTF വ്യക്തിഗതമാക്കൽ';

  @override
  String get outputGain => 'ഔട്ട്‌പുട്ട് ഗെയിൻ';

  @override
  String get secEq => 'സ്പേഷ്യൽ EQ';

  @override
  String get secReverb => 'റിവേർബ്';

  @override
  String get roomSize => 'മുറി';

  @override
  String get reverbGain => 'റിവേർബ് ഗെയിൻ';

  @override
  String get secTracking => 'തല ട്രാക്കിംഗ്';

  @override
  String get trackOff => 'ഓഫ്';

  @override
  String get trackSensor => 'ഫോൺ സെൻസർ';

  @override
  String get trackManual => 'മാനുവൽ XY';

  @override
  String get dragHint =>
      'തലയുടെ ദിശ ക്രമീകരിക്കാൻ വലിക്കുക (ശബ്ദമണ്ഡലം പിന്തുടരുന്നു)';

  @override
  String get customEq => 'ഇഷ്ടാനുസൃതം';

  @override
  String get eqPresetMusic => 'സംഗീതം';

  @override
  String get eqPresetCinema => 'സിനിമ';

  @override
  String get eqPresetGame => 'ഗെയിം';

  @override
  String get eqPresetVoice => 'ശബ്ദം';

  @override
  String get hrtfGroup0 => 'പുരുഷൻ / ചെറുത് / ചെറുത്';

  @override
  String get hrtfGroup1 => 'പുരുഷൻ / ചെറുത് / ഇടത്തരം';

  @override
  String get hrtfGroup2 => 'പുരുഷൻ / ചെറുത് / വലുത്';

  @override
  String get hrtfGroup3 => 'പുരുഷൻ / ഇടത്തരം / ചെറുത്';

  @override
  String get hrtfGroup4 => 'പുരുഷൻ / ഇടത്തരം / ഇടത്തരം';

  @override
  String get hrtfGroup5 => 'പുരുഷൻ / ഇടത്തരം / വലുത്';

  @override
  String get hrtfGroup6 => 'പുരുഷൻ / വലുത് / ചെറുത്';

  @override
  String get hrtfGroup7 => 'പുരുഷൻ / വലുത് / ഇടത്തരം';

  @override
  String get hrtfGroup8 => 'പുരുഷൻ / വലുത് / വലുത്';

  @override
  String get hrtfGroup9 => 'സ്ത്രീ / ചെറുത് / ചെറുത്';

  @override
  String get hrtfGroup10 => 'സ്ത്രീ / ചെറുത് / ഇടത്തരം';

  @override
  String get hrtfGroup11 => 'സ്ത്രീ / ചെറുത് / വലുത്';

  @override
  String get hrtfGroup12 => 'സ്ത്രീ / ഇടത്തരം / ചെറുത്';

  @override
  String get hrtfGroup13 => 'സ്ത്രീ / ഇടത്തരം / ഇടത്തരം';

  @override
  String get hrtfGroup14 => 'സ്ത്രീ / ഇടത്തരം / വലുത്';

  @override
  String get navHome => 'ഹോം';

  @override
  String get navLibrary => 'ലൈബ്രറി';

  @override
  String get navPlaying => 'പ്ലേ ചെയ്യുന്നു';

  @override
  String get navYou => 'നിങ്ങൾ';

  @override
  String get tabSongs => 'പാട്ടുകൾ';

  @override
  String get tabAlbums => 'ആൽബങ്ങൾ';

  @override
  String get tabFolders => 'ഫോൾഡറുകൾ';

  @override
  String get tabPlaylists => 'പ്ലേലിസ്റ്റുകൾ';

  @override
  String get youMood => 'മൂഡ്';

  @override
  String get youCompanion => 'നിങ്ങളുടെ കൂട്ടുകാരൻ';

  @override
  String get youBuddies => 'സുഹൃത്തുക്കൾ';

  @override
  String get youSound => 'ശബ്ദം';

  @override
  String get youMore => 'കൂടുതൽ';

  @override
  String get themeCherryBlossom => 'ചെറി പുഷ്പം';

  @override
  String get themeStarryNight => 'നക്ഷത്ര രാത്രി';

  @override
  String get themeAdaptiveLight => 'അഡാപ്റ്റീവ് ലൈറ്റ്';

  @override
  String get themeAdaptiveDark => 'അഡാപ്റ്റീവ് ഡാർക്ക്';

  @override
  String youListenedTogether(int h, int m) {
    return '$h മണിക്കൂർ $m മിനിറ്റ് ഒരുമിച്ച് കേട്ടു';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'ഹെഡറും ഇപ്പോൾ പ്ലേ ചെയ്യുന്നതും';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'ലൈബ്രറി ശീർഷകത്തിൽ ഇരിക്കുന്നു';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'മിനി പ്ലേയറിൽ മയങ്ങുന്നു';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'ഇഷ്ടപ്പെട്ട പാട്ടുകൾക്ക് മുകളിൽ നടക്കുന്നു';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'ഡാർക്ക് തീമുകളിൽ തിളങ്ങുന്നു';

  @override
  String get accBow => 'പിങ്ക് റിബൺ';

  @override
  String get accHeadphones => 'ചെറിയ ഹെഡ്ഫോൺ';

  @override
  String get accFlower => 'പുഷ്പം';

  @override
  String get accCrown => 'ചെറിയ കിരീടം';

  @override
  String accUnlockLabel(int h) {
    return '$h മണിക്കൂർ കേൾക്കുക';
  }

  @override
  String get youCrossfade => 'ക്രോസ്ഫേഡ്';

  @override
  String get youCrossfadeSub => 'ഒരു പാട്ടിന്റെ അവസാനം അടുത്തതിലേക്ക് കലർത്തുക';

  @override
  String get youSmartShuffle => 'സ്മാർട്ട് ഷഫിൾ';

  @override
  String get youSmartShuffleSub =>
      'ഷഫിൾ നിങ്ങളുടെ പ്രിയപ്പെട്ടവയിലേക്ക് ചായുന്നു — ഈ ഉപകരണത്തിൽ കണക്കാക്കുന്നു';

  @override
  String get libLikedSongs => 'ഇഷ്ടപ്പെട്ട പാട്ടുകൾ';

  @override
  String get libTapHeart =>
      'ഒരു പാട്ട് ഇവിടെ സൂക്ഷിക്കാൻ അതിലെ ഹൃദയം ടാപ്പ് ചെയ്യുക';

  @override
  String get libRemovedFromQueue => 'ക്യൂവിൽ നിന്ന് നീക്കം ചെയ്തു';

  @override
  String get libRemovedFromLibrary => 'ലൈബ്രറിയിൽ നിന്ന് നീക്കം ചെയ്തു';

  @override
  String get libRemoveFromLibrary => 'ലൈബ്രറിയിൽ നിന്ന് നീക്കം ചെയ്യുക';

  @override
  String get libNewPlaylist => 'പുതിയ പ്ലേലിസ്റ്റ്';

  @override
  String get libPlaylistName => 'പ്ലേലിസ്റ്റിന്റെ പേര്';

  @override
  String get libCreate => 'സൃഷ്ടിക്കുക';

  @override
  String get libSwipeHint =>
      'നീക്കം ചെയ്യാൻ ഇടത്തേക്ക് സ്വൈപ്പ് · പുനഃക്രമീകരിക്കാൻ അമർത്തിപ്പിടിക്കുക';

  @override
  String get libChooseCover => 'കവർ ചിത്രം തിരഞ്ഞെടുക്കുക';

  @override
  String get libBackToArtCover => 'പാട്ടിന്റെ കവറിലേക്ക് മടങ്ങുക';

  @override
  String libDeleteConfirm(String name) {
    return '\"$name\" ഇല്ലാതാക്കണോ?';
  }

  @override
  String get libDeleteKeepSongs =>
      'പാട്ടുകൾ സ്വയം നിങ്ങളുടെ ഉപകരണത്തിൽ നിലനിൽക്കും';

  @override
  String get libKeep => 'സൂക്ഷിക്കുക';

  @override
  String get libDelete => 'ഇല്ലാതാക്കുക';

  @override
  String get libRemoveKeepFile => 'ഫയൽ സ്വയം നിങ്ങളുടെ ഉപകരണത്തിൽ നിലനിൽക്കും';

  @override
  String get libClearConfirm => 'എല്ലാ ഫയലുകളും നീക്കം ചെയ്യണോ?';

  @override
  String get libLibraryCleared => 'ലൈബ്രറി ശൂന്യമാക്കി';

  @override
  String get libPickAudioFiles => 'ഓഡിയോ ഫയലുകൾ തിരഞ്ഞെടുക്കുക…';

  @override
  String get libImportFolder => 'ഒരു ഫോൾഡർ ഇറക്കുമതി ചെയ്യുക';

  @override
  String get libScanWholeFolder =>
      'മുഴുവൻ ഫോൾഡറും സ്കാൻ ചെയ്യുക… (ശുപാർശ ചെയ്യുന്നു)';

  @override
  String libImportFailed(String error) {
    return 'ഇറക്കുമതി പരാജയപ്പെട്ടു: $error';
  }

  @override
  String get libNoAudioFound => 'ഓഡിയോ ഫയലുകളൊന്നും കണ്ടെത്തിയില്ല';

  @override
  String libImportedCount(int count) {
    return '$count പാട്ടുകൾ ഇറക്കുമതി ചെയ്തു';
  }

  @override
  String get libNothingHere =>
      'ഇവിടെ ഇതുവരെ ഒന്നുമില്ല — നീക്കം ചെയ്യാൻ ഇടത്തേക്ക് സ്വൈപ്പ്, പുനഃക്രമീകരിക്കാൻ അമർത്തിപ്പിടിക്കുക';

  @override
  String get sidebarYourLibrary => 'നിങ്ങളുടെ ലൈബ്രറി';

  @override
  String get sidebarPlaylists => 'പ്ലേലിസ്റ്റുകൾ';

  @override
  String get sidebarFolders => 'ഫോൾഡറുകൾ';

  @override
  String get rowQueue => 'ക്യൂ';

  @override
  String get rowRemove => 'നീക്കം ചെയ്യുക';

  @override
  String get rowPlaylist => 'പ്ലേലിസ്റ്റ്';

  @override
  String plTrackCount(int count) {
    return '$count ട്രാക്കുകൾ';
  }

  @override
  String get lyricsSourceAuto => 'ഓട്ടോ';

  @override
  String get lyricsSourceEmbedded => 'എംബഡ് ചെയ്തത്';

  @override
  String get lyricsSourceBestQuality => 'ലഭ്യമായ മികച്ച നിലവാരം';

  @override
  String get lyricsSourceFileTags => 'ഓഡിയോ ഫയലിന്റെ സ്വന്തം ടാഗുകളിൽ നിന്ന്';

  @override
  String get lyricsSourceWordOnline => 'വാക്ക്-സമന്വയം (ഓൺലൈൻ)';

  @override
  String get lyricsSourceLineOnline => 'വരി-സമന്വയം (ഓൺലൈൻ)';

  @override
  String get lyricsSourceNotFound => 'ഈ പാട്ടിന് കണ്ടെത്തിയില്ല';

  @override
  String get npCatModeUnlocked => 'മ്യാവൂ?! പൂച്ച മോഡ് അൺലോക്ക് ചെയ്തു 🐱';

  @override
  String get shellResumePlayback => 'പ്ലേബാക്ക് പുനരാരംഭിക്കുക';

  @override
  String get shellPlay => 'പ്ലേ ചെയ്യുക';

  @override
  String get devSection => 'ഡെവലപ്പർ';

  @override
  String get devModeUnlocked => '🛠️ ഡെവലപ്പർ മോഡ് അൺലോക്ക് ചെയ്തു';

  @override
  String get devUnlockAll => 'എല്ലാ ആക്സസറികളും അൺലോക്ക് ചെയ്യുക';

  @override
  String get devClearLyricsCache => 'വരികളുടെ കാഷെ മായ്ക്കുക';

  @override
  String get devRefetchLyrics => 'എല്ലാ വരികളും വീണ്ടും എടുക്കുക…';

  @override
  String get devLyricsCleared => 'വരികളുടെ കാഷെ മായ്ച്ചു';

  @override
  String get devHideOptions => 'ഡെവലപ്പർ ഓപ്ഷനുകൾ മറയ്ക്കുക';

  @override
  String get devModeOff => 'ഡെവലപ്പർ മോഡ് ഓഫ്';

  @override
  String get youCantReadFolders =>
      'നിങ്ങളുടെ സംഗീത ഫോൾഡറുകൾ വായിക്കാൻ കഴിഞ്ഞില്ല';

  @override
  String get youNoMusicFolders => 'സംഗീത ഫോൾഡറുകളൊന്നും കണ്ടെത്തിയില്ല';
}
