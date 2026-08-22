// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'மொழி';

  @override
  String get languageFollowSystem => 'கணினியைப் பின்தொடர்';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Hana360';

  @override
  String get commonCancel => 'ரத்துசெய்';

  @override
  String get commonConfirm => 'சரி';

  @override
  String get commonBack => 'பின்';

  @override
  String get commonDone => 'முடிந்தது';

  @override
  String get commonUnknown => 'தெரியாது';

  @override
  String get secUpmix => 'அப்மிக்ஸ் இன்ஜின்';

  @override
  String get spatialAudioTitle => '360° ஸ்பேஷியல் ஆடியோ';

  @override
  String get npNothingPlaying => 'இன்னும் எதுவும் இயங்கவில்லை';

  @override
  String get npPickSong =>
      'உங்கள் நூலகத்திலிருந்து ஒரு பாடலைத் தேர்ந்தெடுக்கவும்';

  @override
  String get npSpatialSettings => '360° அமைப்புகள்';

  @override
  String get npLyrics => 'பாடல் வரிகள்';

  @override
  String get libSearchHint => 'உங்கள் இசையில் தேடு…';

  @override
  String get libClearLibrary => 'நூலகத்தை காலி செய்';

  @override
  String get libImportMusic => 'இசையை இறக்குமதி செய்';

  @override
  String libError(String error) {
    return 'ஏதோ தவறு: $error';
  }

  @override
  String libNoMatch(String query) {
    return '\"$query\" உடன் எதுவும் பொருந்தவில்லை';
  }

  @override
  String get libPermissionDenied =>
      'உங்கள் இசையை கண்டறிய Hana360 க்கு அனுமதி தேவை\nஇந்த சாதனத்தில் அணுகல் இல்லையா? அதற்கு பதிலாக இறக்குமதி செய்யுங்கள்.';

  @override
  String get libNoSongs =>
      'இந்த சாதனத்தில் பாடல்கள் எதுவும் காணப்படவில்லை\nதொடங்க உங்கள் கோப்புகளிலிருந்து இசையை இறக்குமதி செய்யுங்கள்';

  @override
  String get libGrantAccess => 'அணுகலை வழங்கு';

  @override
  String get libRescan => 'மீண்டும் ஸ்கேன் செய்';

  @override
  String get libAddedToQueue => 'வரிசையில் சேர்க்கப்பட்டது';

  @override
  String get libNoAlbums => 'இன்னும் ஆல்பங்கள் இல்லை';

  @override
  String get libNoFolders => 'இன்னும் கோப்புறைகள் இல்லை';

  @override
  String get libNoPlaylists => 'இன்னும் பிளேலிஸ்ட்கள் இல்லை';

  @override
  String libPlaylistCreated(String name) {
    return 'பிளேலிஸ்ட் \"$name\" உருவாக்கப்பட்டது 🌸';
  }

  @override
  String get libFolderHint =>
      'கோப்புறையை பிளேலிஸ்டாக மாற்ற நீண்ட நேரம் அழுத்தவும்';

  @override
  String libSongCount(int count) {
    return '$count பாடல்கள்';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count பாடல்கள் · $path';
  }

  @override
  String get homeGreetingLate => 'தாமதமாக விழித்திருக்கிறீர்கள் ♪';

  @override
  String get homeGreetingMorning => 'காலை வணக்கம் ♪';

  @override
  String get homeGreetingAfternoon => 'மதிய வணக்கம் ♪';

  @override
  String get homeGreetingEvening => 'மாலை வணக்கம் ♪';

  @override
  String get homeJumpBackIn => 'மீண்டும் இணையுங்கள்';

  @override
  String get homeForYou => 'உங்களுக்காக';

  @override
  String get homeForYouSub =>
      'உங்கள் கேட்பதிலிருந்து, இந்த சாதனத்தில் தேர்ந்தெடுக்கப்பட்டது';

  @override
  String get homeWelcome => 'Hana360 க்கு வரவேற்கிறோம் 🌸';

  @override
  String get homeAllQuiet => 'எல்லாம் அமைதி 🌸';

  @override
  String get homeLibraryHint =>
      'உங்கள் இசை நூலகம் தாவலில் வாழ்கிறது — அங்கு கோப்புறைகளைச் சேர்க்கவும். நீங்கள் இயக்குவதெல்லாம் இங்கே சேகரமாகும்.';

  @override
  String get homePlayHint =>
      'ஏதாவது இயக்குங்கள், அடுத்த முறை அது இங்கே காத்திருக்கும்.';

  @override
  String get youRescanLibrary => 'நூலகத்தை மீண்டும் ஸ்கேன் செய்';

  @override
  String get youExcludedFolders => 'விலக்கப்பட்ட கோப்புறைகள்';

  @override
  String get youExcludedFoldersSub => 'நூலகத்திலிருந்து கோப்புறைகளை மறை';

  @override
  String get youCatMode => 'பூனை மோட்';

  @override
  String get youAbout => 'பற்றி';

  @override
  String get youScanning => 'உங்கள் இசை ஸ்கேன் செய்யப்படுகிறது…';

  @override
  String get youOpenSource => 'ஓப்பன் சோர்ஸ்';

  @override
  String get youOpenSourceSub =>
      'ShaptakNaskar இன் Hanamimi (GPLv3) இன் வழித்தோன்றல் Hana360 — 2026-08-10 அன்று மாற்றப்பட்டது';

  @override
  String get youCheckUpdates => 'புதுப்பிப்புகளை சரிபார்';

  @override
  String get youCheckUpdatesSub => 'புதிய பில்டுகள் GitHub Releases இல் வரும்';

  @override
  String get youUpToDate => 'நீங்கள் தற்போதையவர் 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Sappy உருவாக்கியது';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'பின்னணியில் இயக்குவதை தொடரவும்';

  @override
  String get youKeepPlayingAllowed =>
      'அனுமதிக்கப்பட்டது — கணினி உங்கள் இசையை இடைநிறுத்தாது';

  @override
  String get youKeepPlayingTap =>
      'கணினி பிளேபேக்கை நிறுத்துவதை தடுக்க தட்டவும்';

  @override
  String get youExcludedFoldersTitle => 'விலக்கப்பட்ட கோப்புறைகள்';

  @override
  String get youExcludedFoldersDesc =>
      'முடக்கப்பட்ட கோப்புறைகளில் உள்ள பாடல்கள் நூலகத்திலிருந்து விலக்கப்படும்';

  @override
  String get youVisSensitivity => 'விஷுவலைசர் உணர்திறன்';

  @override
  String get youVisSensitivitySub =>
      'அதை அரிதாக அசைக்கும் பாடல்களுக்கு அதிகரிக்கவும்';

  @override
  String get youNerdMode => 'நெர்ட் மோட்';

  @override
  String get youNerdModeSub =>
      'இப்போது இயங்குகிறது இல் codec, bitrate மற்றும் ஆடியோ வெளியீட்டை காட்டு';

  @override
  String get youEqualizer => 'ஈக்வலைசர்';

  @override
  String get youComingSoon => 'விரைவில்';

  @override
  String get sleepTimer => 'தூக்க நேரம்';

  @override
  String get sleep15 => '15 நிமிடங்கள்';

  @override
  String get sleep30 => '30 நிமிடங்கள்';

  @override
  String get sleep1h => '1 மணிநேரம்';

  @override
  String get sleepEndTrack => 'பாடலின் முடிவு';

  @override
  String get sleepFading => 'மங்குகிறது… இனிய கனவுகள்';

  @override
  String sleepIn(String time) {
    return '$time இல் தூக்கம்';
  }

  @override
  String get sleepEndTrackActive => 'இந்த பாடல் முடிந்ததும் தூக்கம்';

  @override
  String get sleepCancel => 'டைமரை ரத்து செய்';

  @override
  String get queueUpNext => 'அடுத்து';

  @override
  String get queueEmpty => 'வரிசை காலியாக உள்ளது';

  @override
  String get updateAvailable => 'புதுப்பிப்பு கிடைக்கிறது ✨';

  @override
  String get updateNoNotes => 'வெளியீட்டு குறிப்புகள் இல்லை.';

  @override
  String get updateInstalling => 'நிறுவலை திறக்கிறது…';

  @override
  String get updateFailed =>
      'புதுப்பிக்க முடியவில்லை — பின்னர் மீண்டும் முயற்சிக்கவும்';

  @override
  String get updateLater => 'பின்னர்';

  @override
  String get updateRetry => 'மீண்டும் முயற்சி';

  @override
  String get updateNow => 'புதுப்பி';

  @override
  String get spatialToggleTitle => '360° ஸ்பேஷியல் ஆடியோ';

  @override
  String get spatialOn => 'இயக்கு';

  @override
  String get spatialOff => 'நிறுத்து';

  @override
  String get lyricsNoFound => 'பாடல் வரிகள் கிடைக்கவில்லை';

  @override
  String get lyricsJustListening => 'இது கேட்பதற்கு மட்டுமே';

  @override
  String get lyricsTrySource => 'வேறு மூலத்தை முயற்சிக்கவும்';

  @override
  String get lyricsSource => 'பாடல் வரிகளின் மூலம்';

  @override
  String get lyricsWordSynced => 'சொல்-ஒத்திசைவு';

  @override
  String get lyricsLineSynced => 'வரி-ஒத்திசைவு';

  @override
  String get lyricsUnsynced => 'ஒத்திசைவற்றது';

  @override
  String get plNoPlaylists =>
      'இன்னும் பிளேலிஸ்ட்கள் இல்லை — முதலில் ஒன்றை உருவாக்குங்கள்!';

  @override
  String get plAddToPlaylist => 'பிளேலிஸ்டில் சேர்';

  @override
  String plAddedTo(String name) {
    return '$name இல் சேர்க்கப்பட்டது';
  }

  @override
  String get shareLyrics => 'பாடல் வரிகளைப் பகிர்';

  @override
  String get shareMaxLines => 'அதிகபட்ச வரிகள் தேர்ந்தெடுக்கப்பட்டன';

  @override
  String sharePickLines(int count) {
    return '$count வரை வரிகளைத் தேர்ந்தெடுக்கவும்';
  }

  @override
  String get sharePickHint => 'கீழே சில வரிகளைத் தேர்ந்தெடுக்கவும்…';

  @override
  String get shareButton => 'பகிர்';

  @override
  String get batTitle => 'இசை தொடர்ந்து இயங்கட்டும் 🎵';

  @override
  String get batBody =>
      'Android இன் பேட்டரி ஆப்டிமைசேஷன் திரை அணைந்திருக்கும்போது இசையை இடைநிறுத்தலாம். நிலையான பிளேபேக்கிற்கு Hana360 கட்டுப்பாடின்றி இயங்க அனுமதிக்கவும்.\n\nநீங்கள் → \"பின்னணியில் இயக்குவதை தொடரவும்\" இல் எப்போது வேண்டுமானாலும் இதை மாற்றலாம்.';

  @override
  String get batNotNow => 'இப்போது இல்லை';

  @override
  String get batAllow => 'அனுமதி';

  @override
  String get algoSwitch => 'அல்கோரிதம்';

  @override
  String get speakerDistance => 'ஸ்பீக்கர் தூரம்';

  @override
  String get channelTrim => 'சேனல் டிரிம்';

  @override
  String get masterGain => 'மாஸ்டர் கெய்ன்';

  @override
  String get secHrtf => 'HRTF தனிப்பயனாக்கம்';

  @override
  String get outputGain => 'வெளியீட்டு கெய்ன்';

  @override
  String get secEq => 'ஸ்பேஷியல் EQ';

  @override
  String get secReverb => 'ரிவெர்ப்';

  @override
  String get roomSize => 'அறை';

  @override
  String get reverbGain => 'ரிவெர்ப் கெய்ன்';

  @override
  String get secTracking => 'தலை கண்காணிப்பு';

  @override
  String get trackOff => 'நிறுத்து';

  @override
  String get trackSensor => 'போன் சென்சார்';

  @override
  String get trackManual => 'மேனுவல் XY';

  @override
  String get dragHint =>
      'தலை திசையை சரிசெய்ய இழுக்கவும் (ஒலி புலம் பின்தொடர்கிறது)';

  @override
  String get customEq => 'தனிப்பயன்';

  @override
  String get eqPresetMusic => 'இசை';

  @override
  String get eqPresetCinema => 'சினிமா';

  @override
  String get eqPresetGame => 'விளையாட்டு';

  @override
  String get eqPresetVoice => 'குரல்';

  @override
  String get hrtfGroup0 => 'ஆண் / சிறிய / சிறிய';

  @override
  String get hrtfGroup1 => 'ஆண் / சிறிய / நடுத்தர';

  @override
  String get hrtfGroup2 => 'ஆண் / சிறிய / பெரிய';

  @override
  String get hrtfGroup3 => 'ஆண் / நடுத்தர / சிறிய';

  @override
  String get hrtfGroup4 => 'ஆண் / நடுத்தர / நடுத்தர';

  @override
  String get hrtfGroup5 => 'ஆண் / நடுத்தர / பெரிய';

  @override
  String get hrtfGroup6 => 'ஆண் / பெரிய / சிறிய';

  @override
  String get hrtfGroup7 => 'ஆண் / பெரிய / நடுத்தர';

  @override
  String get hrtfGroup8 => 'ஆண் / பெரிய / பெரிய';

  @override
  String get hrtfGroup9 => 'பெண் / சிறிய / சிறிய';

  @override
  String get hrtfGroup10 => 'பெண் / சிறிய / நடுத்தர';

  @override
  String get hrtfGroup11 => 'பெண் / சிறிய / பெரிய';

  @override
  String get hrtfGroup12 => 'பெண் / நடுத்தர / சிறிய';

  @override
  String get hrtfGroup13 => 'பெண் / நடுத்தர / நடுத்தர';

  @override
  String get hrtfGroup14 => 'பெண் / நடுத்தர / பெரிய';

  @override
  String get navHome => 'முகப்பு';

  @override
  String get navLibrary => 'நூலகம்';

  @override
  String get navPlaying => 'இயங்குகிறது';

  @override
  String get navYou => 'நீங்கள்';

  @override
  String get tabSongs => 'பாடல்கள்';

  @override
  String get tabAlbums => 'ஆல்பங்கள்';

  @override
  String get tabFolders => 'கோப்புறைகள்';

  @override
  String get tabPlaylists => 'பிளேலிஸ்ட்கள்';

  @override
  String get youMood => 'மூட்';

  @override
  String get youCompanion => 'உங்கள் துணை';

  @override
  String get youBuddies => 'நண்பர்கள்';

  @override
  String get youSound => 'ஒலி';

  @override
  String get youMore => 'மேலும்';

  @override
  String get themeCherryBlossom => 'செர்ரி பூ';

  @override
  String get themeStarryNight => 'நட்சத்திர இரவு';

  @override
  String get themeAdaptiveLight => 'அடாப்டிவ் லைட்';

  @override
  String get themeAdaptiveDark => 'அடாப்டிவ் டார்க்';

  @override
  String youListenedTogether(int h, int m) {
    return '$hம $mநி ஒன்றாக கேட்டது';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'தலைப்பு மற்றும் இப்போது இயங்குகிறது';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'நூலக தலைப்பில் அமர்ந்திருக்கிறது';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'மினி பிளேயரில் தூங்குகிறது';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'விரும்பிய பாடல்களின் மேல் நடக்கிறது';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'டார்க் தீம்களில் ஒளிர்கிறது';

  @override
  String get accBow => 'இளஞ்சிவப்பு ரிப்பன்';

  @override
  String get accHeadphones => 'சிறிய ஹெட்ஃபோன்';

  @override
  String get accFlower => 'மலர்';

  @override
  String get accCrown => 'சிறிய கிரீடம்';

  @override
  String accUnlockLabel(int h) {
    return '$h மணிநேரம் கேளுங்கள்';
  }

  @override
  String get youCrossfade => 'கிராஸ்ஃபேட்';

  @override
  String get youCrossfadeSub => 'பாடலின் முடிவை அடுத்த பாடலுடன் கலக்கவும்';

  @override
  String get youSmartShuffle => 'ஸ்மார்ட் ஷஃபிள்';

  @override
  String get youSmartShuffleSub =>
      'ஷஃபிள் உங்கள் விருப்பங்களுக்கு சாய்கிறது — இந்த சாதனத்தில் கணக்கிடப்படுகிறது';

  @override
  String get libLikedSongs => 'விரும்பிய பாடல்கள்';

  @override
  String get libTapHeart => 'பாடலை இங்கே வைக்க அதில் உள்ள இதயத்தை தட்டவும்';

  @override
  String get libRemovedFromQueue => 'வரிசையிலிருந்து நீக்கப்பட்டது';

  @override
  String get libRemovedFromLibrary => 'நூலகத்திலிருந்து நீக்கப்பட்டது';

  @override
  String get libRemoveFromLibrary => 'நூலகத்திலிருந்து நீக்கு';

  @override
  String get libNewPlaylist => 'புதிய பிளேலிஸ்ட்';

  @override
  String get libPlaylistName => 'பிளேலிஸ்ட் பெயர்';

  @override
  String get libCreate => 'உருவாக்கு';

  @override
  String get libSwipeHint =>
      'நீக்க இடதுபுறம் ஸ்வைப் · மறுவரிசைப்படுத்த பிடித்து வைக்கவும்';

  @override
  String get libChooseCover => 'அட்டைப் படத்தைத் தேர்ந்தெடுக்கவும்';

  @override
  String get libBackToArtCover => 'பாடலின் அட்டைக்கு திரும்பு';

  @override
  String libDeleteConfirm(String name) {
    return '\"$name\" நீக்கவா?';
  }

  @override
  String get libDeleteKeepSongs => 'பாடல்கள் தானாக உங்கள் சாதனத்தில் இருக்கும்';

  @override
  String get libKeep => 'வைத்திரு';

  @override
  String get libDelete => 'நீக்கு';

  @override
  String get libRemoveKeepFile => 'கோப்பு தானாக உங்கள் சாதனத்தில் இருக்கும்';

  @override
  String get libClearConfirm => 'எல்லா கோப்புகளையும் அகற்றவா?';

  @override
  String get libLibraryCleared => 'நூலகம் காலி செய்யப்பட்டது';

  @override
  String get libPickAudioFiles => 'ஆடியோ கோப்புகளைத் தேர்ந்தெடுக்கவும்…';

  @override
  String get libImportFolder => 'கோப்புறையை இறக்குமதி செய்';

  @override
  String get libScanWholeFolder =>
      'முழு கோப்புறையையும் ஸ்கேன் செய்… (பரிந்துரைக்கப்படுகிறது)';

  @override
  String libImportFailed(String error) {
    return 'இறக்குமதி தோல்வி: $error';
  }

  @override
  String get libNoAudioFound => 'ஆடியோ கோப்புகள் எதுவும் காணப்படவில்லை';

  @override
  String libImportedCount(int count) {
    return '$count பாடல்கள் இறக்குமதி செய்யப்பட்டன';
  }

  @override
  String get libNothingHere =>
      'இங்கே இன்னும் எதுவும் இல்லை — நீக்க இடதுபுறம் ஸ்வைப், மறுவரிசைப்படுத்த பிடித்து வைக்கவும்';

  @override
  String get sidebarYourLibrary => 'உங்கள் நூலகம்';

  @override
  String get sidebarPlaylists => 'பிளேலிஸ்ட்கள்';

  @override
  String get sidebarFolders => 'கோப்புறைகள்';

  @override
  String get rowQueue => 'வரிசை';

  @override
  String get rowRemove => 'நீக்கு';

  @override
  String get rowPlaylist => 'பிளேலிஸ்ட்';

  @override
  String plTrackCount(int count) {
    return '$count டிராக்குகள்';
  }

  @override
  String get lyricsSourceAuto => 'ஆட்டோ';

  @override
  String get lyricsSourceEmbedded => 'உட்பொதிக்கப்பட்டது';

  @override
  String get lyricsSourceBestQuality => 'கிடைக்கும் சிறந்த தரம்';

  @override
  String get lyricsSourceFileTags => 'ஆடியோ கோப்பின் சொந்த டேக்குகளிலிருந்து';

  @override
  String get lyricsSourceWordOnline => 'சொல்-ஒத்திசைவு (ஆன்லைன்)';

  @override
  String get lyricsSourceLineOnline => 'வரி-ஒத்திசைவு (ஆன்லைன்)';

  @override
  String get lyricsSourceNotFound => 'இந்த பாடலுக்கு கிடைக்கவில்லை';

  @override
  String get npCatModeUnlocked => 'மியாவ்?! பூனை மோட் திறக்கப்பட்டது 🐱';

  @override
  String get shellResumePlayback => 'பிளேபேக்கை மீண்டும் தொடங்கு';

  @override
  String get shellPlay => 'இயக்கு';

  @override
  String get devSection => 'டெவலப்பர்';

  @override
  String get devModeUnlocked => '🛠️ டெவலப்பர் மோட் திறக்கப்பட்டது';

  @override
  String get devUnlockAll => 'எல்லா ஆக்சஸரிகளையும் திறக்கவும்';

  @override
  String get devClearLyricsCache => 'பாடல் வரிகள் கேசை அழி';

  @override
  String get devRefetchLyrics => 'எல்லா வரிகளையும் மீண்டும் பெறு…';

  @override
  String get devLyricsCleared => 'பாடல் வரிகள் கேஷ் அழிக்கப்பட்டது';

  @override
  String get devHideOptions => 'டெவலப்பர் விருப்பங்களை மறை';

  @override
  String get devModeOff => 'டெவலப்பர் மோட் நிறுத்தப்பட்டது';

  @override
  String get youCantReadFolders => 'உங்கள் இசை கோப்புறைகளை படிக்க முடியவில்லை';

  @override
  String get youNoMusicFolders => 'இசை கோப்புறைகள் எதுவும் காணப்படவில்லை';
}
