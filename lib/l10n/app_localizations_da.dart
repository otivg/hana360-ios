// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'Sprog';

  @override
  String get languageFollowSystem => 'Følg systemet';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Hana360';

  @override
  String get commonCancel => 'Annuller';

  @override
  String get commonConfirm => 'OK';

  @override
  String get commonBack => 'Tilbage';

  @override
  String get commonDone => 'Udført';

  @override
  String get commonUnknown => 'Ukendt';

  @override
  String get secUpmix => 'Upmix-motor';

  @override
  String get spatialAudioTitle => '360° rumlig lyd';

  @override
  String get npNothingPlaying => 'Intet afspilles endnu';

  @override
  String get npPickSong => 'Vælg en sang fra dit bibliotek';

  @override
  String get npSpatialSettings => '360°-indstillinger';

  @override
  String get npLyrics => 'Tekster';

  @override
  String get libSearchHint => 'Søg i din musik…';

  @override
  String get libClearLibrary => 'Ryd bibliotek';

  @override
  String get libImportMusic => 'Importer musik';

  @override
  String libError(String error) {
    return 'Noget gik galt: $error';
  }

  @override
  String libNoMatch(String query) {
    return 'Intet matcher \"$query\"';
  }

  @override
  String get libPermissionDenied =>
      'Hana360 har brug for tilladelse til at finde din musik\nIngen adgang på denne enhed? Importer i stedet.';

  @override
  String get libNoSongs =>
      'Ingen sange fundet på denne enhed\nImporter musik fra dine filer for at komme i gang';

  @override
  String get libGrantAccess => 'Giv adgang';

  @override
  String get libRescan => 'Scan igen';

  @override
  String get libAddedToQueue => 'Føjet til køen';

  @override
  String get libNoAlbums => 'Ingen album endnu';

  @override
  String get libNoFolders => 'Ingen mapper endnu';

  @override
  String get libNoPlaylists => 'Ingen playlister endnu';

  @override
  String libPlaylistCreated(String name) {
    return 'Playlisten \"$name\" oprettet 🌸';
  }

  @override
  String get libFolderHint =>
      'hold en mappe nede for at gøre den til en playliste';

  @override
  String libSongCount(int count) {
    return '$count sange';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count sange · $path';
  }

  @override
  String get homeGreetingLate => 'Oppe sent ♪';

  @override
  String get homeGreetingMorning => 'Godmorgen ♪';

  @override
  String get homeGreetingAfternoon => 'God eftermiddag ♪';

  @override
  String get homeGreetingEvening => 'God aften ♪';

  @override
  String get homeJumpBackIn => 'SPRING TILBAGE';

  @override
  String get homeForYou => 'TIL DIG';

  @override
  String get homeForYouSub => 'valgt på denne enhed ud fra din lytning';

  @override
  String get homeWelcome => 'Velkommen til Hana360 🌸';

  @override
  String get homeAllQuiet => 'Alt stille 🌸';

  @override
  String get homeLibraryHint =>
      'Din musik bor i fanen Bibliotek — tilføj mapper der. Alt, du spiller, samles her.';

  @override
  String get homePlayHint => 'Spil noget, så venter det her næste gang.';

  @override
  String get youRescanLibrary => 'Scan bibliotek igen';

  @override
  String get youExcludedFolders => 'Udelukkede mapper';

  @override
  String get youExcludedFoldersSub => 'Skjul mapper fra dit bibliotek';

  @override
  String get youCatMode => 'Kattetilstand';

  @override
  String get youAbout => 'Om';

  @override
  String get youScanning => 'Scanner din musik…';

  @override
  String get youOpenSource => 'Open Source';

  @override
  String get youOpenSourceSub =>
      'Hana360 er et derivat af Hanamimi (GPLv3) af ShaptakNaskar — ændret 2026-08-10';

  @override
  String get youCheckUpdates => 'Søg efter opdateringer';

  @override
  String get youCheckUpdatesSub => 'Nye builds lander på GitHub Releases';

  @override
  String get youUpToDate => 'Du er opdateret 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Lavet af Sappy';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'Fortsæt med at afspille i baggrunden';

  @override
  String get youKeepPlayingAllowed =>
      'Tilladt — systemet pauser ikke din musik';

  @override
  String get youKeepPlayingTap =>
      'Tryk for at forhindre systemet i at stoppe afspilningen';

  @override
  String get youExcludedFoldersTitle => 'Udelukkede mapper';

  @override
  String get youExcludedFoldersDesc =>
      'Sange i slukkede mapper udelades fra biblioteket';

  @override
  String get youVisSensitivity => 'Visualizer-følsomhed';

  @override
  String get youVisSensitivitySub => 'Skru op for sange, der knap bevæger den';

  @override
  String get youNerdMode => 'Nørdtilstand';

  @override
  String get youNerdModeSub =>
      'Vis codec, bitrate og lydudgang på Afspiller nu';

  @override
  String get youEqualizer => 'Equalizer';

  @override
  String get youComingSoon => 'Kommer snart';

  @override
  String get sleepTimer => 'Søvntimer';

  @override
  String get sleep15 => '15 minutter';

  @override
  String get sleep30 => '30 minutter';

  @override
  String get sleep1h => '1 time';

  @override
  String get sleepEndTrack => 'Slutningen af sangen';

  @override
  String get sleepFading => 'Fader ud… sov godt';

  @override
  String sleepIn(String time) {
    return 'Sover om $time';
  }

  @override
  String get sleepEndTrackActive => 'Sover, når denne sang slutter';

  @override
  String get sleepCancel => 'Annuller timer';

  @override
  String get queueUpNext => 'Næste';

  @override
  String get queueEmpty => 'Køen er tom';

  @override
  String get updateAvailable => 'Opdatering tilgængelig ✨';

  @override
  String get updateNoNotes => 'Ingen udgivelsesnoter.';

  @override
  String get updateInstalling => 'Åbner installation…';

  @override
  String get updateFailed => 'Kunne ikke opdatere — prøv igen senere';

  @override
  String get updateLater => 'Senere';

  @override
  String get updateRetry => 'Prøv igen';

  @override
  String get updateNow => 'Opdater';

  @override
  String get spatialToggleTitle => '360° rumlig lyd';

  @override
  String get spatialOn => 'Til';

  @override
  String get spatialOff => 'Fra';

  @override
  String get lyricsNoFound => 'Ingen tekst fundet';

  @override
  String get lyricsJustListening => 'Denne er bare til at lytte til';

  @override
  String get lyricsTrySource => 'Prøv en anden kilde';

  @override
  String get lyricsSource => 'Tekstkilde';

  @override
  String get lyricsWordSynced => 'Ordsynkroniseret';

  @override
  String get lyricsLineSynced => 'Linjesynkroniseret';

  @override
  String get lyricsUnsynced => 'Usynkroniseret';

  @override
  String get plNoPlaylists => 'Ingen playlister endnu — lav en først!';

  @override
  String get plAddToPlaylist => 'Føj til playliste';

  @override
  String plAddedTo(String name) {
    return 'Føjet til $name';
  }

  @override
  String get shareLyrics => 'Del tekster';

  @override
  String get shareMaxLines => 'Maksimalt antal linjer valgt';

  @override
  String sharePickLines(int count) {
    return 'Vælg op til $count linjer';
  }

  @override
  String get sharePickHint => 'Vælg nogle linjer nedenfor…';

  @override
  String get shareButton => 'Del';

  @override
  String get batTitle => 'Fortsæt med at afspille musikken 🎵';

  @override
  String get batBody =>
      'Androids batterioptimering kan sætte din musik på pause, når skærmen er slukket. Lad Hana360 køre ubegrænset, så afspilningen forbliver stabil.\n\nDu kan til enhver tid ændre dette under Dig → \"Fortsæt med at afspille i baggrunden\".';

  @override
  String get batNotNow => 'Ikke nu';

  @override
  String get batAllow => 'Tillad';

  @override
  String get algoSwitch => 'Algoritme';

  @override
  String get speakerDistance => 'Højttalerafstand';

  @override
  String get channelTrim => 'Kanaltrim';

  @override
  String get masterGain => 'Master-gain';

  @override
  String get secHrtf => 'HRTF-personalisering';

  @override
  String get outputGain => 'Udgangs-gain';

  @override
  String get secEq => 'Rumlig EQ';

  @override
  String get secReverb => 'Efterklang';

  @override
  String get roomSize => 'Rum';

  @override
  String get reverbGain => 'Efterklangs-gain';

  @override
  String get secTracking => 'Hovedsporing';

  @override
  String get trackOff => 'Fra';

  @override
  String get trackSensor => 'Telefonsensor';

  @override
  String get trackManual => 'Manuel XY';

  @override
  String get dragHint =>
      'Træk for at justere hovedets retning (lydfeltet følger)';

  @override
  String get customEq => 'Brugerdefineret';

  @override
  String get eqPresetMusic => 'Musik';

  @override
  String get eqPresetCinema => 'Biograf';

  @override
  String get eqPresetGame => 'Spil';

  @override
  String get eqPresetVoice => 'Stemme';

  @override
  String get hrtfGroup0 => 'Mand / Lille / Lille';

  @override
  String get hrtfGroup1 => 'Mand / Lille / Mellem';

  @override
  String get hrtfGroup2 => 'Mand / Lille / Stor';

  @override
  String get hrtfGroup3 => 'Mand / Mellem / Lille';

  @override
  String get hrtfGroup4 => 'Mand / Mellem / Mellem';

  @override
  String get hrtfGroup5 => 'Mand / Mellem / Stor';

  @override
  String get hrtfGroup6 => 'Mand / Stor / Lille';

  @override
  String get hrtfGroup7 => 'Mand / Stor / Mellem';

  @override
  String get hrtfGroup8 => 'Mand / Stor / Stor';

  @override
  String get hrtfGroup9 => 'Kvinde / Lille / Lille';

  @override
  String get hrtfGroup10 => 'Kvinde / Lille / Mellem';

  @override
  String get hrtfGroup11 => 'Kvinde / Lille / Stor';

  @override
  String get hrtfGroup12 => 'Kvinde / Mellem / Lille';

  @override
  String get hrtfGroup13 => 'Kvinde / Mellem / Mellem';

  @override
  String get hrtfGroup14 => 'Kvinde / Mellem / Stor';

  @override
  String get navHome => 'Hjem';

  @override
  String get navLibrary => 'Bibliotek';

  @override
  String get navPlaying => 'Afspiller';

  @override
  String get navYou => 'Dig';

  @override
  String get tabSongs => 'Sange';

  @override
  String get tabAlbums => 'Album';

  @override
  String get tabFolders => 'Mapper';

  @override
  String get tabPlaylists => 'Playlister';

  @override
  String get youMood => 'STEMNING';

  @override
  String get youCompanion => 'DIN LEDSAGER';

  @override
  String get youBuddies => 'VENNER';

  @override
  String get youSound => 'LYD';

  @override
  String get youMore => 'MERE';

  @override
  String get themeCherryBlossom => 'Kirsebærblomst';

  @override
  String get themeStarryNight => 'Stjernenat';

  @override
  String get themeAdaptiveLight => 'Adaptivt lyst';

  @override
  String get themeAdaptiveDark => 'Adaptivt mørkt';

  @override
  String youListenedTogether(int h, int m) {
    return '${h}t ${m}m lyttet sammen';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'Sidehoved og Afspiller nu';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'Sidder på bibliotekets titel';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'Lur på miniafspilleren';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'Spankulerer over likede sange';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'Gløder på de mørke temaer';

  @override
  String get accBow => 'Lyserød sløjfe';

  @override
  String get accHeadphones => 'Bittesmå hovedtelefoner';

  @override
  String get accFlower => 'Blomst';

  @override
  String get accCrown => 'Lille krone';

  @override
  String accUnlockLabel(int h) {
    return 'Lyt i $h timer';
  }

  @override
  String get youCrossfade => 'Crossfade';

  @override
  String get youCrossfadeSub => 'Bland slutningen af en sang ind i den næste';

  @override
  String get youSmartShuffle => 'Smart shuffle';

  @override
  String get youSmartShuffleSub =>
      'Shuffle hælder mod dine favoritter — beregnet på denne enhed';

  @override
  String get libLikedSongs => 'Likede sange';

  @override
  String get libTapHeart => 'Tryk på hjertet på en sang for at beholde den her';

  @override
  String get libRemovedFromQueue => 'Fjernet fra køen';

  @override
  String get libRemovedFromLibrary => 'Fjernet fra biblioteket';

  @override
  String get libRemoveFromLibrary => 'Fjern fra biblioteket';

  @override
  String get libNewPlaylist => 'Ny playliste';

  @override
  String get libPlaylistName => 'Playlistenavn';

  @override
  String get libCreate => 'Opret';

  @override
  String get libSwipeHint =>
      'svirp til venstre for at fjerne · hold nede for at omarrangere';

  @override
  String get libChooseCover => 'Vælg omslagsbillede';

  @override
  String get libBackToArtCover => 'Tilbage til sangens omslag';

  @override
  String libDeleteConfirm(String name) {
    return 'Slet \"$name\"?';
  }

  @override
  String get libDeleteKeepSongs => 'Selve sangene forbliver på din enhed';

  @override
  String get libKeep => 'Behold';

  @override
  String get libDelete => 'Slet';

  @override
  String get libRemoveKeepFile => 'Selve filen forbliver på din enhed';

  @override
  String get libClearConfirm => 'Fjerne alle filer?';

  @override
  String get libLibraryCleared => 'Biblioteket ryddet';

  @override
  String get libPickAudioFiles => 'Vælg lydfiler…';

  @override
  String get libImportFolder => 'Importer en mappe';

  @override
  String get libScanWholeFolder => 'Scan en hel mappe… (anbefales)';

  @override
  String libImportFailed(String error) {
    return 'Import mislykkedes: $error';
  }

  @override
  String get libNoAudioFound => 'Ingen lydfiler fundet';

  @override
  String libImportedCount(int count) {
    return 'Importerede $count sange';
  }

  @override
  String get libNothingHere =>
      'Intet her endnu — svirp til venstre for at fjerne, hold nede for at omarrangere';

  @override
  String get sidebarYourLibrary => 'DIT BIBLIOTEK';

  @override
  String get sidebarPlaylists => 'PLAYLISTER';

  @override
  String get sidebarFolders => 'MAPPER';

  @override
  String get rowQueue => 'Kø';

  @override
  String get rowRemove => 'Fjern';

  @override
  String get rowPlaylist => 'Playliste';

  @override
  String plTrackCount(int count) {
    return '$count spor';
  }

  @override
  String get lyricsSourceAuto => 'Auto';

  @override
  String get lyricsSourceEmbedded => 'Indlejret';

  @override
  String get lyricsSourceBestQuality => 'Bedste tilgængelige kvalitet';

  @override
  String get lyricsSourceFileTags => 'Fra lydfilens egne tags';

  @override
  String get lyricsSourceWordOnline => 'Ordsynkroniseret (online)';

  @override
  String get lyricsSourceLineOnline => 'Linjesynkroniseret (online)';

  @override
  String get lyricsSourceNotFound => 'Ikke fundet for denne sang';

  @override
  String get npCatModeUnlocked => 'Mjav?! Kattetilstand låst op 🐱';

  @override
  String get shellResumePlayback => 'Genoptag afspilning';

  @override
  String get shellPlay => 'AFSPIL';

  @override
  String get devSection => 'UDVIKLER';

  @override
  String get devModeUnlocked => '🛠️ Udviklertilstand låst op';

  @override
  String get devUnlockAll => 'Lås alle tilbehør op';

  @override
  String get devClearLyricsCache => 'Ryd tekst-cache';

  @override
  String get devRefetchLyrics => 'Hent alle tekster igen…';

  @override
  String get devLyricsCleared => 'Tekst-cache ryddet';

  @override
  String get devHideOptions => 'Skjul udviklerindstillinger';

  @override
  String get devModeOff => 'Udviklertilstand fra';

  @override
  String get youCantReadFolders => 'Kunne ikke læse dine musikmapper';

  @override
  String get youNoMusicFolders => 'Ingen musikmapper fundet';
}
