// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tagalog (`tl`).
class AppLocalizationsTl extends AppLocalizations {
  AppLocalizationsTl([String locale = 'tl']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'Wika';

  @override
  String get languageFollowSystem => 'Sundan ang system';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Baseus × Hanamimi';

  @override
  String get commonCancel => 'Kanselahin';

  @override
  String get commonConfirm => 'Sige';

  @override
  String get commonBack => 'Bumalik';

  @override
  String get commonDone => 'Tapos';

  @override
  String get commonUnknown => 'Hindi alam';

  @override
  String get secUpmix => 'Upmix Engine';

  @override
  String get spatialAudioTitle => '360 Spatial Audio';

  @override
  String get npNothingPlaying => 'Walang pinapatugtog';

  @override
  String get npPickSong => 'Pumili ng kanta mula sa iyong library';

  @override
  String get npSpatialSettings => 'Mga Setting ng 360';

  @override
  String get npLyrics => 'Lyrics';

  @override
  String get libSearchHint => 'Hanapin ang iyong musika…';

  @override
  String get libClearLibrary => 'Linisin ang library';

  @override
  String get libImportMusic => 'Mag-import ng musika';

  @override
  String libError(String error) {
    return 'May nangyaring mali: $error';
  }

  @override
  String libNoMatch(String query) {
    return 'Walang tugma sa \"$query\"';
  }

  @override
  String get libPermissionDenied =>
      'Kailangan ng Hana360 ng pahintulot upang mahanap ang iyong musika\nWalang access sa device na ito? Mag-import na lang.';

  @override
  String get libNoSongs =>
      'Walang nahanap na kanta sa device na ito\nMag-import ng musika mula sa iyong mga file';

  @override
  String get libGrantAccess => 'Bigyan ng access';

  @override
  String get libRescan => 'I-scan muli';

  @override
  String get libAddedToQueue => 'Naidagdag sa queue';

  @override
  String get libNoAlbums => 'Wala pang album';

  @override
  String get libNoFolders => 'Wala pang folder';

  @override
  String get libNoPlaylists => 'Wala pang playlist';

  @override
  String libPlaylistCreated(String name) {
    return 'Nagawa ang playlist na \"$name\" 🌸';
  }

  @override
  String get libFolderHint =>
      'pindutin nang matagal ang folder para gawing playlist';

  @override
  String libSongCount(int count) {
    return '$count kanta';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count kanta · $path';
  }

  @override
  String get homeGreetingLate => 'Gising pa sa hatinggabi ♪';

  @override
  String get homeGreetingMorning => 'Magandang umaga ♪';

  @override
  String get homeGreetingAfternoon => 'Magandang hapon ♪';

  @override
  String get homeGreetingEvening => 'Magandang gabi ♪';

  @override
  String get homeJumpBackIn => 'IPATULOY ANG PAKIKINIG';

  @override
  String get homeForYou => 'PARA SA IYO';

  @override
  String get homeForYouSub =>
      'pinili sa device na ito, mula sa iyong kasaysayan ng pakikinig';

  @override
  String get homeWelcome => 'Maligayang pagdating sa Hana360 🌸';

  @override
  String get homeAllQuiet => 'Tahimik ang lahat 🌸';

  @override
  String get homeLibraryHint =>
      'Nasa Library tab ang iyong musika — magdagdag ng folder doon. Lahat ng pinapatugtog mo ay naiipon dito.';

  @override
  String get homePlayHint =>
      'Magpatugtog ng kanta, at sa susunod ay hihintayin ka nito dito.';

  @override
  String get youRescanLibrary => 'I-scan muli ang library';

  @override
  String get youExcludedFolders => 'Mga ibinukod na folder';

  @override
  String get youExcludedFoldersSub =>
      'Itago ang mga folder mula sa iyong library';

  @override
  String get youCatMode => 'Cat Mode';

  @override
  String get youAbout => 'Tungkol';

  @override
  String get youScanning => 'Ini-scan ang iyong musika…';

  @override
  String get youOpenSource => 'Open Source';

  @override
  String get youOpenSourceSub =>
      'Ang Hana360 ay derivative ng Hanamimi (GPLv3) ni ShaptakNaskar — binago noong 2026-08-10';

  @override
  String get youCheckUpdates => 'Suriin ang mga update';

  @override
  String get youCheckUpdatesSub => 'May bagong build sa GitHub Releases';

  @override
  String get youUpToDate => 'Nasa pinakabagong bersyon ka na 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Ginawa ni Sappy';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'Ipagpatuloy ang pagtugtog sa background';

  @override
  String get youKeepPlayingAllowed =>
      'Pinayagan — hindi titigilan ng system ang iyong musika';

  @override
  String get youKeepPlayingTap =>
      'I-tap upang pigilan ang system na ihinto ang playback';

  @override
  String get youExcludedFoldersTitle => 'Mga ibinukod na folder';

  @override
  String get youExcludedFoldersDesc =>
      'Ang mga kanta sa naka-off na folder ay ibinubukod sa iyong library';

  @override
  String get youVisSensitivity => 'Sensitivity ng visualizer';

  @override
  String get youVisSensitivitySub =>
      'Taasan para sa mga kantang halos hindi gumagalaw';

  @override
  String get youNerdMode => 'Nerd mode';

  @override
  String get youNerdModeSub => 'Ipakita ang codec, bitrate at output sa player';

  @override
  String get youEqualizer => 'Equalizer';

  @override
  String get youComingSoon => 'Malapit na';

  @override
  String get sleepTimer => 'Sleep timer';

  @override
  String get sleep15 => '15 minuto';

  @override
  String get sleep30 => '30 minuto';

  @override
  String get sleep1h => '1 oras';

  @override
  String get sleepEndTrack => 'Katapusan ng kanta';

  @override
  String get sleepFading => 'Nawawala ang tunog… matamis na panaginip';

  @override
  String sleepIn(String time) {
    return 'Matulog sa loob ng $time';
  }

  @override
  String get sleepEndTrackActive => 'Matulog kapag natapos ang kantang ito';

  @override
  String get sleepCancel => 'Kanselahin ang timer';

  @override
  String get queueUpNext => 'Susunod';

  @override
  String get queueEmpty => 'Walang laman ang queue';

  @override
  String get updateAvailable => 'May update ✨';

  @override
  String get updateNoNotes => 'Walang release notes.';

  @override
  String get updateInstalling => 'Binubuksan ang installer…';

  @override
  String get updateFailed => 'Hindi na-update — subukan muli mamaya';

  @override
  String get updateLater => 'Mamaya';

  @override
  String get updateRetry => 'Subukan muli';

  @override
  String get updateNow => 'I-update';

  @override
  String get spatialToggleTitle => '360 Spatial Audio';

  @override
  String get spatialOn => 'Bukas';

  @override
  String get spatialOff => 'Sara';

  @override
  String get lyricsNoFound => 'Walang nahanap na lyrics';

  @override
  String get lyricsJustListening => 'Pang-pakinig lang ito';

  @override
  String get lyricsTrySource => 'Subukan ang ibang source';

  @override
  String get lyricsSource => 'Source ng lyrics';

  @override
  String get lyricsWordSynced => 'Naka-sync bawat salita';

  @override
  String get lyricsLineSynced => 'Naka-sync bawat linya';

  @override
  String get lyricsUnsynced => 'Hindi naka-sync';

  @override
  String get plNoPlaylists => 'Wala pang playlist — gumawa muna!';

  @override
  String get plAddToPlaylist => 'Idagdag sa playlist';

  @override
  String plAddedTo(String name) {
    return 'Naidagdag sa $name';
  }

  @override
  String get shareLyrics => 'I-share ang lyrics';

  @override
  String get shareMaxLines => 'Pinili na ang pinakamataas na bilang ng linya';

  @override
  String sharePickLines(int count) {
    return 'Pumili ng hanggang $count linya';
  }

  @override
  String get sharePickHint => 'Pumili ng ilang linya sa ibaba…';

  @override
  String get shareButton => 'I-share';

  @override
  String get batTitle => 'Hayaan ang musika na tumugtog 🎵';

  @override
  String get batBody =>
      'Maaaring ihinto ng battery optimization ng Android ang iyong musika kapag naka-off ang screen. Payagan ang Hana360 na tumakbo nang walang limitasyon.\n\nMaaari mo itong baguhin sa You → \"Ipagpatuloy ang pagtugtog sa background\".';

  @override
  String get batNotNow => 'Hindi ngayon';

  @override
  String get batAllow => 'Payagan';

  @override
  String get algoSwitch => 'Algorithm';

  @override
  String get speakerDistance => 'Distansya ng speaker';

  @override
  String get channelTrim => 'Pagsasaayos ng channel';

  @override
  String get masterGain => 'Master gain';

  @override
  String get secHrtf => 'Pag-personalize ng HRTF';

  @override
  String get outputGain => 'Output gain';

  @override
  String get secEq => 'Spatial EQ';

  @override
  String get secReverb => 'Reverb';

  @override
  String get roomSize => 'Kwarto';

  @override
  String get reverbGain => 'Reverb gain';

  @override
  String get secTracking => 'Head tracking';

  @override
  String get trackOff => 'Sara';

  @override
  String get trackSensor => 'Sensor ng phone';

  @override
  String get trackManual => 'Manual XY';

  @override
  String get dragHint =>
      'I-drag upang ayusin ang direksyon ng ulo (sumusunod ang sound field)';

  @override
  String get customEq => 'Custom';

  @override
  String get eqPresetMusic => 'Musika';

  @override
  String get eqPresetCinema => 'Sine';

  @override
  String get eqPresetGame => 'Laro';

  @override
  String get eqPresetVoice => 'Boses';

  @override
  String get hrtfGroup0 => 'Lalaki / Maliit na ulo / Maliit na tainga';

  @override
  String get hrtfGroup1 => 'Lalaki / Maliit na ulo / Katamtamang tainga';

  @override
  String get hrtfGroup2 => 'Lalaki / Maliit na ulo / Malaking tainga';

  @override
  String get hrtfGroup3 => 'Lalaki / Katamtamang ulo / Maliit na tainga';

  @override
  String get hrtfGroup4 => 'Lalaki / Katamtamang ulo / Katamtamang tainga';

  @override
  String get hrtfGroup5 => 'Lalaki / Katamtamang ulo / Malaking tainga';

  @override
  String get hrtfGroup6 => 'Lalaki / Malaking ulo / Maliit na tainga';

  @override
  String get hrtfGroup7 => 'Lalaki / Malaking ulo / Katamtamang tainga';

  @override
  String get hrtfGroup8 => 'Lalaki / Malaking ulo / Malaking tainga';

  @override
  String get hrtfGroup9 => 'Babae / Maliit na ulo / Maliit na tainga';

  @override
  String get hrtfGroup10 => 'Babae / Maliit na ulo / Katamtamang tainga';

  @override
  String get hrtfGroup11 => 'Babae / Maliit na ulo / Malaking tainga';

  @override
  String get hrtfGroup12 => 'Babae / Katamtamang ulo / Maliit na tainga';

  @override
  String get hrtfGroup13 => 'Babae / Katamtamang ulo / Katamtamang tainga';

  @override
  String get hrtfGroup14 => 'Babae / Katamtamang ulo / Malaking tainga';

  @override
  String get navHome => 'Home';

  @override
  String get navLibrary => 'Library';

  @override
  String get navPlaying => 'Pinapatugtog';

  @override
  String get navYou => 'Ikaw';

  @override
  String get tabSongs => 'Mga Kanta';

  @override
  String get tabAlbums => 'Mga Album';

  @override
  String get tabFolders => 'Mga Folder';

  @override
  String get tabPlaylists => 'Mga Playlist';

  @override
  String get youMood => 'Mood';

  @override
  String get youCompanion => 'Ang iyong kasama';

  @override
  String get youBuddies => 'Mga Kaibigan';

  @override
  String get youSound => 'Tunog';

  @override
  String get youMore => 'Higit pa';

  @override
  String get themeCherryBlossom => 'Cherry blossom';

  @override
  String get themeStarryNight => 'Gabing puno ng bituin';

  @override
  String get themeAdaptiveLight => 'Adaptive light';

  @override
  String get themeAdaptiveDark => 'Adaptive dark';

  @override
  String youListenedTogether(int h, int m) {
    return 'Nakikinig nang magkasama nang $h oras $m minuto';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'Header at player';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'Nakaupo sa title ng Library';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'Natutulog sa mini player';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'Naglalakad sa mga nagustuhang kanta';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'Nagliliwanag sa dark themes';

  @override
  String get accBow => 'Pink na bow';

  @override
  String get accHeadphones => 'Maliit na headphone';

  @override
  String get accFlower => 'Bulaklak';

  @override
  String get accCrown => 'Maliit na korona';

  @override
  String accUnlockLabel(int h) {
    return 'Makinig nang $h oras para ma-unlock';
  }

  @override
  String get youCrossfade => 'Crossfade';

  @override
  String get youCrossfadeSub => 'Pagsamahin ang dulo ng kanta sa susunod';

  @override
  String get youSmartShuffle => 'Smart shuffle';

  @override
  String get youSmartShuffleSub =>
      'Ang shuffle ay pumapabor sa iyong mga paborito — kinakalkula sa device na ito';

  @override
  String get libLikedSongs => 'Mga Nagustuhang Kanta';

  @override
  String get libTapHeart => 'I-tap ang puso sa kanta para mapanatili dito';

  @override
  String get libRemovedFromQueue => 'Naalis sa queue';

  @override
  String get libRemovedFromLibrary => 'Naalis sa library';

  @override
  String get libRemoveFromLibrary => 'Alisin sa library';

  @override
  String get libNewPlaylist => 'Bagong playlist';

  @override
  String get libPlaylistName => 'Pangalan ng playlist';

  @override
  String get libCreate => 'Gumawa';

  @override
  String get libSwipeHint =>
      'i-swipe pakaliwa para alisin · pindutin nang matagal para i-reorder';

  @override
  String get libChooseCover => 'Pumili ng larawan ng cover';

  @override
  String get libBackToArtCover => 'Bumalik sa cover ng kanta';

  @override
  String libDeleteConfirm(String name) {
    return 'Tanggalin ang \"$name\"?';
  }

  @override
  String get libDeleteKeepSongs =>
      'Ang mga kanta mismo ay mananatili sa iyong device';

  @override
  String get libKeep => 'Panatilihin';

  @override
  String get libDelete => 'Tanggalin';

  @override
  String get libRemoveKeepFile =>
      'Ang file mismo ay mananatili sa iyong device';

  @override
  String get libClearConfirm => 'Alisin ang lahat ng file?';

  @override
  String get libLibraryCleared => 'Nalinis ang library';

  @override
  String get libPickAudioFiles => 'Pumili ng mga audio file…';

  @override
  String get libImportFolder => 'Mag-import ng folder';

  @override
  String get libScanWholeFolder => 'I-scan ang buong folder… (inirerekomenda)';

  @override
  String libImportFailed(String error) {
    return 'Nabigo ang pag-import: $error';
  }

  @override
  String get libNoAudioFound => 'Walang nahanap na audio file';

  @override
  String libImportedCount(int count) {
    return 'Na-import ang $count kanta';
  }

  @override
  String get libNothingHere =>
      'Wala pa dito — i-swipe pakaliwa para alisin, pindutin nang matagal para i-reorder';

  @override
  String get sidebarYourLibrary => 'ANG IYONG LIBRARY';

  @override
  String get sidebarPlaylists => 'MGA PLAYLIST';

  @override
  String get sidebarFolders => 'MGA FOLDER';

  @override
  String get rowQueue => 'Queue';

  @override
  String get rowRemove => 'Alisin';

  @override
  String get rowPlaylist => 'Playlist';

  @override
  String plTrackCount(int count) {
    return '$count tracks';
  }

  @override
  String get lyricsSourceAuto => 'Auto';

  @override
  String get lyricsSourceEmbedded => 'Naka-embed';

  @override
  String get lyricsSourceBestQuality => 'Pinakamahusay na available na kalidad';

  @override
  String get lyricsSourceFileTags => 'Mula sa tags ng audio file mismo';

  @override
  String get lyricsSourceWordOnline => 'Naka-sync bawat salita (online)';

  @override
  String get lyricsSourceLineOnline => 'Naka-sync bawat linya (online)';

  @override
  String get lyricsSourceNotFound => 'Hindi nahanap para sa kantang ito';

  @override
  String get npCatModeUnlocked => 'Meow?! Na-unlock ang Cat Mode 🐱';

  @override
  String get shellResumePlayback => 'Ipagpatuloy ang playback';

  @override
  String get shellPlay => 'I-PLAY';

  @override
  String get devSection => 'DEVELOPER';

  @override
  String get devModeUnlocked => '🛠️ Na-unlock ang developer mode';

  @override
  String get devUnlockAll => 'I-unlock ang lahat ng accessories';

  @override
  String get devClearLyricsCache => 'I-clear ang lyrics cache';

  @override
  String get devRefetchLyrics => 'Kunin muli ang lahat ng lyrics…';

  @override
  String get devLyricsCleared => 'Nalinis ang lyrics cache';

  @override
  String get devHideOptions => 'Itago ang mga developer option';

  @override
  String get devModeOff => 'Naka-off ang developer mode';

  @override
  String get youCantReadFolders => 'Hindi mabasa ang iyong mga music folder';

  @override
  String get youNoMusicFolders => 'Walang nahanap na music folder';
}
