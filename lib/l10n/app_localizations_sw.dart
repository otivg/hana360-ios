// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swahili (`sw`).
class AppLocalizationsSw extends AppLocalizations {
  AppLocalizationsSw([String locale = 'sw']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'Lugha';

  @override
  String get languageFollowSystem => 'Fuata mfumo';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Baseus × Hanamimi';

  @override
  String get commonCancel => 'Ghairi';

  @override
  String get commonConfirm => 'Sawa';

  @override
  String get commonBack => 'Rudi';

  @override
  String get commonDone => 'Imekamilika';

  @override
  String get commonUnknown => 'Haijulikani';

  @override
  String get secUpmix => 'Injini ya Upmix';

  @override
  String get spatialAudioTitle => 'Sauti ya Nafasi 360';

  @override
  String get npNothingPlaying => 'Hakuna kinachocheza';

  @override
  String get npPickSong => 'Chagua wimbo kutoka maktaba yako';

  @override
  String get npSpatialSettings => 'Mipangilio ya 360';

  @override
  String get npLyrics => 'Maneno ya wimbo';

  @override
  String get libSearchHint => 'Tafuta muziki wako…';

  @override
  String get libClearLibrary => 'Futa maktaba';

  @override
  String get libImportMusic => 'Ingiza muziki';

  @override
  String libError(String error) {
    return 'Kuna tatizo limetokea: $error';
  }

  @override
  String libNoMatch(String query) {
    return 'Hakuna kinacholingana na \"$query\"';
  }

  @override
  String get libPermissionDenied =>
      'Hana360 inahitaji ruhusa kupata muziki wako\nHuna ufikiaji kwenye kifaa hiki? Ingiza muziki.';

  @override
  String get libNoSongs =>
      'Hakuna nyimbo zilizopatikana kwenye kifaa hiki\nIngiza muziki kutoka kwenye faili zako';

  @override
  String get libGrantAccess => 'Toa ufikiaji';

  @override
  String get libRescan => 'Changanua tena';

  @override
  String get libAddedToQueue => 'Imeongezwa kwenye foleni';

  @override
  String get libNoAlbums => 'Bado hakuna albamu';

  @override
  String get libNoFolders => 'Bado hakuna folda';

  @override
  String get libNoPlaylists => 'Bado hakuna orodha za kucheza';

  @override
  String libPlaylistCreated(String name) {
    return 'Orodha ya kucheza \"$name\" imeundwa 🌸';
  }

  @override
  String get libFolderHint =>
      'bonyeza na ushikilie folda kuigeuza kuwa orodha ya kucheza';

  @override
  String libSongCount(int count) {
    return 'Nyimbo $count';
  }

  @override
  String libSongCountPath(int count, String path) {
    return 'Nyimbo $count · $path';
  }

  @override
  String get homeGreetingLate => 'Bado macho usiku sana ♪';

  @override
  String get homeGreetingMorning => 'Habari za asubuhi ♪';

  @override
  String get homeGreetingAfternoon => 'Habari ♪';

  @override
  String get homeGreetingEvening => 'Habari za jioni ♪';

  @override
  String get homeJumpBackIn => 'ENDELEA KUSIKILIZA';

  @override
  String get homeForYou => 'KWA AJILI YAKO';

  @override
  String get homeForYouSub =>
      'imechaguliwa kwenye kifaa hiki, kutoka historia yako ya kusikiliza';

  @override
  String get homeWelcome => 'Karibu Hana360 🌸';

  @override
  String get homeAllQuiet => 'Kila kitu kimtulivu 🌸';

  @override
  String get homeLibraryHint =>
      'Muziki wako upo kwenye kichupo cha Maktaba — ongeza folda hapo. Kila unachocheza hukusanyika hapa.';

  @override
  String get homePlayHint =>
      'Cheza kitu, na mara inayofuata kitakusubiri hapa.';

  @override
  String get youRescanLibrary => 'Changanua maktaba tena';

  @override
  String get youExcludedFolders => 'Folda zilizotengwa';

  @override
  String get youExcludedFoldersSub => 'Ficha folda kutoka maktaba yako';

  @override
  String get youCatMode => 'Hali ya Paka';

  @override
  String get youAbout => 'Kuhusu';

  @override
  String get youScanning => 'Inachanganua muziki wako…';

  @override
  String get youOpenSource => 'Chanzo Huria';

  @override
  String get youOpenSourceSub =>
      'Hana360 ni toleo linalotokana na Hanamimi (GPLv3) ya ShaptakNaskar — ilibadilishwa 2026-08-10';

  @override
  String get youCheckUpdates => 'Angalia sasisho';

  @override
  String get youCheckUpdatesSub =>
      'Matoleo mapya yanakuja kwenye GitHub Releases';

  @override
  String get youUpToDate => 'Uko kwenye toleo la hivi karibuni 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Imeundwa na Sappy';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'Endelea kucheza usuli';

  @override
  String get youKeepPlayingAllowed =>
      'Imeruhusiwa — mfumo hautasimamisha muziki wako';

  @override
  String get youKeepPlayingTap => 'Bonyeza kuzuia mfumo kusimamisha uchezaji';

  @override
  String get youExcludedFoldersTitle => 'Folda zilizotengwa';

  @override
  String get youExcludedFoldersDesc =>
      'Nyimbo kwenye folda zilizofungwa hazitajumuishwa kwenye maktaba yako';

  @override
  String get youVisSensitivity => 'Usikivu wa kionyeshi';

  @override
  String get youVisSensitivitySub => 'Ongeza kwa nyimbo zisizosonga sana';

  @override
  String get youNerdMode => 'Hali ya mtaalamu';

  @override
  String get youNerdModeSub => 'Onyesha codec, bitrate na pato kwenye kicheza';

  @override
  String get youEqualizer => 'Kisawazisha';

  @override
  String get youComingSoon => 'Inakuja hivi karibuni';

  @override
  String get sleepTimer => 'Kipima muda cha kulala';

  @override
  String get sleep15 => 'Dakika 15';

  @override
  String get sleep30 => 'Dakika 30';

  @override
  String get sleep1h => 'Saa 1';

  @override
  String get sleepEndTrack => 'Mwisho wa wimbo';

  @override
  String get sleepFading => 'Inafifia… usingizi mtamu';

  @override
  String sleepIn(String time) {
    return 'Lala baada ya $time';
  }

  @override
  String get sleepEndTrackActive => 'Lala wimbo huu ukishaisha';

  @override
  String get sleepCancel => 'Ghairi kipima muda';

  @override
  String get queueUpNext => 'Inayofuata';

  @override
  String get queueEmpty => 'Foleni iko tupu';

  @override
  String get updateAvailable => 'Sasisho lipo ✨';

  @override
  String get updateNoNotes => 'Hakuna maelezo ya toleo.';

  @override
  String get updateInstalling => 'Inafungua kisakinishi…';

  @override
  String get updateFailed => 'Imeshindwa kusasisha — jaribu tena baadaye';

  @override
  String get updateLater => 'Baadaye';

  @override
  String get updateRetry => 'Jaribu tena';

  @override
  String get updateNow => 'Sasisha';

  @override
  String get spatialToggleTitle => 'Sauti ya Nafasi 360';

  @override
  String get spatialOn => 'Washa';

  @override
  String get spatialOff => 'Zima';

  @override
  String get lyricsNoFound => 'Maneno hayakupatikana';

  @override
  String get lyricsJustListening => 'Huu ni wa kusikiliza tu';

  @override
  String get lyricsTrySource => 'Jaribu chanzo kingine';

  @override
  String get lyricsSource => 'Chanzo cha maneno';

  @override
  String get lyricsWordSynced => 'Inayolingana neno kwa neno';

  @override
  String get lyricsLineSynced => 'Inayolingana mstari kwa mstari';

  @override
  String get lyricsUnsynced => 'Hailingani';

  @override
  String get plNoPlaylists =>
      'Bado hakuna orodha za kucheza — unda moja kwanza!';

  @override
  String get plAddToPlaylist => 'Ongeza kwenye orodha ya kucheza';

  @override
  String plAddedTo(String name) {
    return 'Imeongezwa kwenye $name';
  }

  @override
  String get shareLyrics => 'Shiriki maneno';

  @override
  String get shareMaxLines => 'Idadi ya juu ya mistari imechaguliwa';

  @override
  String sharePickLines(int count) {
    return 'Chagua hadi mistari $count';
  }

  @override
  String get sharePickHint => 'Chagua mistari michache hapa chini…';

  @override
  String get shareButton => 'Shiriki';

  @override
  String get batTitle => 'Acha muziki uendelee 🎵';

  @override
  String get batBody =>
      'Uboreshaji wa betri wa Android unaweza kusimamisha muziki wako skrini inapozimwa. Ruhusu Hana360 iendeshe bila kizuizi.\n\nUnaweza kubadilisha hii kwenye You → \"Endelea kucheza usuli\".';

  @override
  String get batNotNow => 'Sio sasa';

  @override
  String get batAllow => 'Ruhusu';

  @override
  String get algoSwitch => 'Algorithimu';

  @override
  String get speakerDistance => 'Umbali wa spika';

  @override
  String get channelTrim => 'Marekebisho ya chaneli';

  @override
  String get masterGain => 'Faida kuu';

  @override
  String get secHrtf => 'Ubinafsishaji wa HRTF';

  @override
  String get outputGain => 'Faida ya pato';

  @override
  String get secEq => 'EQ ya Nafasi';

  @override
  String get secReverb => 'Mwangwi';

  @override
  String get roomSize => 'Chumba';

  @override
  String get reverbGain => 'Faida ya mwangwi';

  @override
  String get secTracking => 'Ufuatiliaji wa kichwa';

  @override
  String get trackOff => 'Zima';

  @override
  String get trackSensor => 'Kihisi cha simu';

  @override
  String get trackManual => 'XY kwa mikono';

  @override
  String get dragHint =>
      'Buruta kurekebisha mwelekeo wa kichwa (uwanja wa sauti unafuata)';

  @override
  String get customEq => 'Maalum';

  @override
  String get eqPresetMusic => 'Muziki';

  @override
  String get eqPresetCinema => 'Sinema';

  @override
  String get eqPresetGame => 'Mchezo';

  @override
  String get eqPresetVoice => 'Sauti';

  @override
  String get hrtfGroup0 => 'Mume / Kichwa kidogo / Sikio dogo';

  @override
  String get hrtfGroup1 => 'Mume / Kichwa kidogo / Sikio la kati';

  @override
  String get hrtfGroup2 => 'Mume / Kichwa kidogo / Sikio kubwa';

  @override
  String get hrtfGroup3 => 'Mume / Kichwa cha kati / Sikio dogo';

  @override
  String get hrtfGroup4 => 'Mume / Kichwa cha kati / Sikio la kati';

  @override
  String get hrtfGroup5 => 'Mume / Kichwa cha kati / Sikio kubwa';

  @override
  String get hrtfGroup6 => 'Mume / Kichwa kikubwa / Sikio dogo';

  @override
  String get hrtfGroup7 => 'Mume / Kichwa kikubwa / Sikio la kati';

  @override
  String get hrtfGroup8 => 'Mume / Kichwa kikubwa / Sikio kubwa';

  @override
  String get hrtfGroup9 => 'Mke / Kichwa kidogo / Sikio dogo';

  @override
  String get hrtfGroup10 => 'Mke / Kichwa kidogo / Sikio la kati';

  @override
  String get hrtfGroup11 => 'Mke / Kichwa kidogo / Sikio kubwa';

  @override
  String get hrtfGroup12 => 'Mke / Kichwa cha kati / Sikio dogo';

  @override
  String get hrtfGroup13 => 'Mke / Kichwa cha kati / Sikio la kati';

  @override
  String get hrtfGroup14 => 'Mke / Kichwa cha kati / Sikio kubwa';

  @override
  String get navHome => 'Nyumbani';

  @override
  String get navLibrary => 'Maktaba';

  @override
  String get navPlaying => 'Inacheza';

  @override
  String get navYou => 'Wewe';

  @override
  String get tabSongs => 'Nyimbo';

  @override
  String get tabAlbums => 'Albamu';

  @override
  String get tabFolders => 'Folda';

  @override
  String get tabPlaylists => 'Orodha za kucheza';

  @override
  String get youMood => 'Hisia';

  @override
  String get youCompanion => 'Rafiki yako';

  @override
  String get youBuddies => 'Rafiki';

  @override
  String get youSound => 'Sauti';

  @override
  String get youMore => 'Zaidi';

  @override
  String get themeCherryBlossom => 'Maua ya cherry';

  @override
  String get themeStarryNight => 'Usiku wenye nyota';

  @override
  String get themeAdaptiveLight => 'Mwanga unaobadilika';

  @override
  String get themeAdaptiveDark => 'Giza linalobadilika';

  @override
  String youListenedTogether(int h, int m) {
    return 'Umesikiliza pamoja saa $h dakika $m';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'Kichwa na skrini ya uchezaji';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'Hukaa kwenye kichwa cha Maktaba';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'Hulala kwenye kicheza kidogo';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'Hutembea juu ya nyimbo unazozipenda';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'Huangaza kwenye mandhari nyeusi';

  @override
  String get accBow => 'Uta wa pinki';

  @override
  String get accHeadphones => 'Vipokea sauti vidogo';

  @override
  String get accFlower => 'Ua';

  @override
  String get accCrown => 'Taji ndogo';

  @override
  String accUnlockLabel(int h) {
    return 'Sikiliza saa $h kufungua';
  }

  @override
  String get youCrossfade => 'Mchanganyiko mtambuka';

  @override
  String get youCrossfadeSub => 'Changanya mwisho wa wimbo na unaofuata';

  @override
  String get youSmartShuffle => 'Mchanganyiko mahiri';

  @override
  String get youSmartShuffleSub =>
      'Mchanganyiko huelekea kwenye vipendwa vyako — hukokotwa kwenye kifaa hiki';

  @override
  String get libLikedSongs => 'Nyimbo Unazozipenda';

  @override
  String get libTapHeart => 'Bonyeza moyo kwenye wimbo kuuacha hapa';

  @override
  String get libRemovedFromQueue => 'Imeondolewa kwenye foleni';

  @override
  String get libRemovedFromLibrary => 'Imeondolewa kwenye maktaba';

  @override
  String get libRemoveFromLibrary => 'Ondoa kwenye maktaba';

  @override
  String get libNewPlaylist => 'Orodha mpya ya kucheza';

  @override
  String get libPlaylistName => 'Jina la orodha ya kucheza';

  @override
  String get libCreate => 'Unda';

  @override
  String get libSwipeHint =>
      'telezesha kushoto kuondoa · shikilia kupanga upya';

  @override
  String get libChooseCover => 'Chagua picha ya jalada';

  @override
  String get libBackToArtCover => 'Rudi kwenye jalada la wimbo';

  @override
  String libDeleteConfirm(String name) {
    return 'Futa \"$name\"?';
  }

  @override
  String get libDeleteKeepSongs => 'Nyimbo zenyewe zinabaki kwenye kifaa chako';

  @override
  String get libKeep => 'Weka';

  @override
  String get libDelete => 'Futa';

  @override
  String get libRemoveKeepFile => 'Faili lenyewe linabaki kwenye kifaa chako';

  @override
  String get libClearConfirm => 'Ondoa faili zote?';

  @override
  String get libLibraryCleared => 'Maktaba imefutwa';

  @override
  String get libPickAudioFiles => 'Chagua faili za sauti…';

  @override
  String get libImportFolder => 'Ingiza folda';

  @override
  String get libScanWholeFolder => 'Changanua folda nzima… (inapendekezwa)';

  @override
  String libImportFailed(String error) {
    return 'Kuingiza kumeshindwa: $error';
  }

  @override
  String get libNoAudioFound => 'Hakuna faili za sauti zilizopatikana';

  @override
  String libImportedCount(int count) {
    return 'Nyimbo $count zimeingizwa';
  }

  @override
  String get libNothingHere =>
      'Bado hakuna kitu — telezesha kushoto kuondoa, shikilia kupanga';

  @override
  String get sidebarYourLibrary => 'MAKTABA YAKO';

  @override
  String get sidebarPlaylists => 'ORODHA ZA KUCHEZA';

  @override
  String get sidebarFolders => 'FOLDA';

  @override
  String get rowQueue => 'Foleni';

  @override
  String get rowRemove => 'Ondoa';

  @override
  String get rowPlaylist => 'Orodha ya kucheza';

  @override
  String plTrackCount(int count) {
    return 'Trek $count';
  }

  @override
  String get lyricsSourceAuto => 'Otomatiki';

  @override
  String get lyricsSourceEmbedded => 'Iliyopachikwa';

  @override
  String get lyricsSourceBestQuality => 'Ubora bora unaopatikana';

  @override
  String get lyricsSourceFileTags => 'Kutoka tagi za faili ya sauti yenyewe';

  @override
  String get lyricsSourceWordOnline => 'Inayolingana neno kwa neno (mtandaoni)';

  @override
  String get lyricsSourceLineOnline =>
      'Inayolingana mstari kwa mstari (mtandaoni)';

  @override
  String get lyricsSourceNotFound => 'Haijapatikana kwa wimbo huu';

  @override
  String get npCatModeUnlocked => 'Miao?! Hali ya Paka imefunguliwa 🐱';

  @override
  String get shellResumePlayback => 'Endelea uchezaji';

  @override
  String get shellPlay => 'CHEZA';

  @override
  String get devSection => 'MSANIDEVU';

  @override
  String get devModeUnlocked => '🛠️ Hali ya msanidevu imefunguliwa';

  @override
  String get devUnlockAll => 'Fungua vifaa vyote';

  @override
  String get devClearLyricsCache => 'Futa akiba ya maneno';

  @override
  String get devRefetchLyrics => 'Pata tena maneno yote…';

  @override
  String get devLyricsCleared => 'Akiba ya maneno imefutwa';

  @override
  String get devHideOptions => 'Ficha chaguzi za msanidevu';

  @override
  String get devModeOff => 'Hali ya msanidevu imezimwa';

  @override
  String get youCantReadFolders => 'Haikuweza kusoma folda zako za muziki';

  @override
  String get youNoMusicFolders => 'Hakuna folda za muziki zilizopatikana';
}
