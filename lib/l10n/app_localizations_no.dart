// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian (`no`).
class AppLocalizationsNo extends AppLocalizations {
  AppLocalizationsNo([String locale = 'no']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'Språk';

  @override
  String get languageFollowSystem => 'Følg systemet';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Hana360';

  @override
  String get commonCancel => 'Avbryt';

  @override
  String get commonConfirm => 'OK';

  @override
  String get commonBack => 'Tilbake';

  @override
  String get commonDone => 'Ferdig';

  @override
  String get commonUnknown => 'Ukjent';

  @override
  String get secUpmix => 'Upmix-motor';

  @override
  String get spatialAudioTitle => '360° romlig lyd';

  @override
  String get npNothingPlaying => 'Ingenting spilles ennå';

  @override
  String get npPickSong => 'Velg en sang fra biblioteket ditt';

  @override
  String get npSpatialSettings => '360°-innstillinger';

  @override
  String get npLyrics => 'Tekster';

  @override
  String get libSearchHint => 'Søk i musikken din…';

  @override
  String get libClearLibrary => 'Tøm bibliotek';

  @override
  String get libImportMusic => 'Importer musikk';

  @override
  String libError(String error) {
    return 'Noe gikk galt: $error';
  }

  @override
  String libNoMatch(String query) {
    return 'Ingenting samsvarer med \"$query\"';
  }

  @override
  String get libPermissionDenied =>
      'Hana360 trenger tillatelse for å finne musikken din\nIngen tilgang på denne enheten? Importer i stedet.';

  @override
  String get libNoSongs =>
      'Ingen sanger funnet på denne enheten\nImporter musikk fra filene dine for å komme i gang';

  @override
  String get libGrantAccess => 'Gi tilgang';

  @override
  String get libRescan => 'Skann på nytt';

  @override
  String get libAddedToQueue => 'Lagt til i køen';

  @override
  String get libNoAlbums => 'Ingen album ennå';

  @override
  String get libNoFolders => 'Ingen mapper ennå';

  @override
  String get libNoPlaylists => 'Ingen spillelister ennå';

  @override
  String libPlaylistCreated(String name) {
    return 'Spillelisten \"$name\" opprettet 🌸';
  }

  @override
  String get libFolderHint =>
      'hold inne en mappe for å gjøre den om til en spilleliste';

  @override
  String libSongCount(int count) {
    return '$count sanger';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count sanger · $path';
  }

  @override
  String get homeGreetingLate => 'Oppe sent ♪';

  @override
  String get homeGreetingMorning => 'God morgen ♪';

  @override
  String get homeGreetingAfternoon => 'God ettermiddag ♪';

  @override
  String get homeGreetingEvening => 'God kveld ♪';

  @override
  String get homeJumpBackIn => 'HOPP TILBAKE';

  @override
  String get homeForYou => 'FOR DEG';

  @override
  String get homeForYouSub => 'valgt på denne enheten, fra lyttingen din';

  @override
  String get homeWelcome => 'Velkommen til Hana360 🌸';

  @override
  String get homeAllQuiet => 'Alt stille 🌸';

  @override
  String get homeLibraryHint =>
      'Musikken din bor i Bibliotek-fanen — legg til mapper der. Alt du spiller samles her.';

  @override
  String get homePlayHint => 'Spill noe, så venter det her neste gang.';

  @override
  String get youRescanLibrary => 'Skann biblioteket på nytt';

  @override
  String get youExcludedFolders => 'Ekskluderte mapper';

  @override
  String get youExcludedFoldersSub => 'Skjul mapper fra biblioteket';

  @override
  String get youCatMode => 'Kattemodus';

  @override
  String get youAbout => 'Om';

  @override
  String get youScanning => 'Skanner musikken din…';

  @override
  String get youOpenSource => 'Åpen kildekode';

  @override
  String get youOpenSourceSub =>
      'Hana360 er et derivat av Hanamimi (GPLv3) av ShaptakNaskar — endret 2026-08-10';

  @override
  String get youCheckUpdates => 'Se etter oppdateringer';

  @override
  String get youCheckUpdatesSub => 'Nye versjoner kommer på GitHub Releases';

  @override
  String get youUpToDate => 'Du er oppdatert 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Laget av Sappy';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'Fortsett å spille i bakgrunnen';

  @override
  String get youKeepPlayingAllowed =>
      'Tillatt — systemet setter ikke musikken på pause';

  @override
  String get youKeepPlayingTap =>
      'Trykk for å hindre at systemet stopper avspillingen';

  @override
  String get youExcludedFoldersTitle => 'Ekskluderte mapper';

  @override
  String get youExcludedFoldersDesc =>
      'Sanger i avslåtte mapper utelates fra biblioteket';

  @override
  String get youVisSensitivity => 'Visualizer-følsomhet';

  @override
  String get youVisSensitivitySub =>
      'Skru opp for sanger som knapt beveger den';

  @override
  String get youNerdMode => 'Nerdemodus';

  @override
  String get youNerdModeSub => 'Vis kodek, bitrate og lydutgang på Spilles nå';

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
  String get sleepEndTrack => 'Slutten av sangen';

  @override
  String get sleepFading => 'Toner ut… sov godt';

  @override
  String sleepIn(String time) {
    return 'Sover om $time';
  }

  @override
  String get sleepEndTrackActive => 'Sover når denne sangen slutter';

  @override
  String get sleepCancel => 'Avbryt timer';

  @override
  String get queueUpNext => 'Neste';

  @override
  String get queueEmpty => 'Køen er tom';

  @override
  String get updateAvailable => 'Oppdatering tilgjengelig ✨';

  @override
  String get updateNoNotes => 'Ingen utgivelsesnotater.';

  @override
  String get updateInstalling => 'Åpner installasjon…';

  @override
  String get updateFailed => 'Kunne ikke oppdatere — prøv igjen senere';

  @override
  String get updateLater => 'Senere';

  @override
  String get updateRetry => 'Prøv igjen';

  @override
  String get updateNow => 'Oppdater';

  @override
  String get spatialToggleTitle => '360° romlig lyd';

  @override
  String get spatialOn => 'På';

  @override
  String get spatialOff => 'Av';

  @override
  String get lyricsNoFound => 'Ingen tekst funnet';

  @override
  String get lyricsJustListening => 'Denne er bare for å lytte til';

  @override
  String get lyricsTrySource => 'Prøv en annen kilde';

  @override
  String get lyricsSource => 'Tekstkilde';

  @override
  String get lyricsWordSynced => 'Ordsynkronisert';

  @override
  String get lyricsLineSynced => 'Linjesynkronisert';

  @override
  String get lyricsUnsynced => 'Usynkronisert';

  @override
  String get plNoPlaylists => 'Ingen spillelister ennå — lag en først!';

  @override
  String get plAddToPlaylist => 'Legg til i spilleliste';

  @override
  String plAddedTo(String name) {
    return 'Lagt til i $name';
  }

  @override
  String get shareLyrics => 'Del tekster';

  @override
  String get shareMaxLines => 'Maks antall linjer valgt';

  @override
  String sharePickLines(int count) {
    return 'Velg opptil $count linjer';
  }

  @override
  String get sharePickHint => 'Velg noen linjer nedenfor…';

  @override
  String get shareButton => 'Del';

  @override
  String get batTitle => 'Fortsett å spille musikken 🎵';

  @override
  String get batBody =>
      'Androids batterioptimalisering kan sette musikken på pause når skjermen er av. La Hana360 kjøre ubegrenset slik at avspillingen holder seg stabil.\n\nDu kan endre dette når som helst under Du → \"Fortsett å spille i bakgrunnen\".';

  @override
  String get batNotNow => 'Ikke nå';

  @override
  String get batAllow => 'Tillat';

  @override
  String get algoSwitch => 'Algoritme';

  @override
  String get speakerDistance => 'Høyttaleravstand';

  @override
  String get channelTrim => 'Kanaltrim';

  @override
  String get masterGain => 'Masterforsterkning';

  @override
  String get secHrtf => 'HRTF-personalisering';

  @override
  String get outputGain => 'Utgangsforsterkning';

  @override
  String get secEq => 'Romlig EQ';

  @override
  String get secReverb => 'Klangeffekt';

  @override
  String get roomSize => 'Rom';

  @override
  String get reverbGain => 'Klangeffekt-forsterkning';

  @override
  String get secTracking => 'Hodesporing';

  @override
  String get trackOff => 'Av';

  @override
  String get trackSensor => 'Telefonsensor';

  @override
  String get trackManual => 'Manuell XY';

  @override
  String get dragHint => 'Dra for å justere hoderetningen (lydfeltet følger)';

  @override
  String get customEq => 'Egendefinert';

  @override
  String get eqPresetMusic => 'Musikk';

  @override
  String get eqPresetCinema => 'Kino';

  @override
  String get eqPresetGame => 'Spill';

  @override
  String get eqPresetVoice => 'Stemme';

  @override
  String get hrtfGroup0 => 'Mann / Liten / Liten';

  @override
  String get hrtfGroup1 => 'Mann / Liten / Middels';

  @override
  String get hrtfGroup2 => 'Mann / Liten / Stor';

  @override
  String get hrtfGroup3 => 'Mann / Middels / Liten';

  @override
  String get hrtfGroup4 => 'Mann / Middels / Middels';

  @override
  String get hrtfGroup5 => 'Mann / Middels / Stor';

  @override
  String get hrtfGroup6 => 'Mann / Stor / Liten';

  @override
  String get hrtfGroup7 => 'Mann / Stor / Middels';

  @override
  String get hrtfGroup8 => 'Mann / Stor / Stor';

  @override
  String get hrtfGroup9 => 'Kvinne / Liten / Liten';

  @override
  String get hrtfGroup10 => 'Kvinne / Liten / Middels';

  @override
  String get hrtfGroup11 => 'Kvinne / Liten / Stor';

  @override
  String get hrtfGroup12 => 'Kvinne / Middels / Liten';

  @override
  String get hrtfGroup13 => 'Kvinne / Middels / Middels';

  @override
  String get hrtfGroup14 => 'Kvinne / Middels / Stor';

  @override
  String get navHome => 'Hjem';

  @override
  String get navLibrary => 'Bibliotek';

  @override
  String get navPlaying => 'Spilles';

  @override
  String get navYou => 'Du';

  @override
  String get tabSongs => 'Sanger';

  @override
  String get tabAlbums => 'Album';

  @override
  String get tabFolders => 'Mapper';

  @override
  String get tabPlaylists => 'Spillelister';

  @override
  String get youMood => 'STEMNING';

  @override
  String get youCompanion => 'DIN FØLGESVENN';

  @override
  String get youBuddies => 'VENNER';

  @override
  String get youSound => 'LYD';

  @override
  String get youMore => 'MER';

  @override
  String get themeCherryBlossom => 'Kirsebærblomst';

  @override
  String get themeStarryNight => 'Stjernenatt';

  @override
  String get themeAdaptiveLight => 'Adaptivt lyst';

  @override
  String get themeAdaptiveDark => 'Adaptivt mørkt';

  @override
  String youListenedTogether(int h, int m) {
    return '$h t $m min lyttet sammen';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'Topptekst og Spilles nå';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'Sitter på bibliotekets tittel';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'Duper på minispilleren';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'Spankulerer over likte sanger';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'Gløder på de mørke temaene';

  @override
  String get accBow => 'Rosa sløyfe';

  @override
  String get accHeadphones => 'Bittesmå hodetelefoner';

  @override
  String get accFlower => 'Blomst';

  @override
  String get accCrown => 'Liten krone';

  @override
  String accUnlockLabel(int h) {
    return 'Lytt i $h timer';
  }

  @override
  String get youCrossfade => 'Crossfade';

  @override
  String get youCrossfadeSub => 'Bland slutten av en sang inn i den neste';

  @override
  String get youSmartShuffle => 'Smart shuffle';

  @override
  String get youSmartShuffleSub =>
      'Shuffle heller mot favorittene dine — beregnet på denne enheten';

  @override
  String get libLikedSongs => 'Likte sanger';

  @override
  String get libTapHeart => 'Trykk på hjertet på en sang for å beholde den her';

  @override
  String get libRemovedFromQueue => 'Fjernet fra køen';

  @override
  String get libRemovedFromLibrary => 'Fjernet fra biblioteket';

  @override
  String get libRemoveFromLibrary => 'Fjern fra biblioteket';

  @override
  String get libNewPlaylist => 'Ny spilleliste';

  @override
  String get libPlaylistName => 'Spillelistenavn';

  @override
  String get libCreate => 'Opprett';

  @override
  String get libSwipeHint =>
      'sveip til venstre for å fjerne · hold inne for å omorganisere';

  @override
  String get libChooseCover => 'Velg omslagsbilde';

  @override
  String get libBackToArtCover => 'Tilbake til sangomslag';

  @override
  String libDeleteConfirm(String name) {
    return 'Slette \"$name\"?';
  }

  @override
  String get libDeleteKeepSongs => 'Selve sangene forblir på enheten din';

  @override
  String get libKeep => 'Behold';

  @override
  String get libDelete => 'Slett';

  @override
  String get libRemoveKeepFile => 'Selve filen forblir på enheten din';

  @override
  String get libClearConfirm => 'Fjerne alle filer?';

  @override
  String get libLibraryCleared => 'Biblioteket tømt';

  @override
  String get libPickAudioFiles => 'Velg lydfiler…';

  @override
  String get libImportFolder => 'Importer en mappe';

  @override
  String get libScanWholeFolder => 'Skann en hel mappe… (anbefales)';

  @override
  String libImportFailed(String error) {
    return 'Import mislyktes: $error';
  }

  @override
  String get libNoAudioFound => 'Ingen lydfiler funnet';

  @override
  String libImportedCount(int count) {
    return 'Importerte $count sanger';
  }

  @override
  String get libNothingHere =>
      'Ingenting her ennå — sveip til venstre for å fjerne, hold inne for å omorganisere';

  @override
  String get sidebarYourLibrary => 'DITT BIBLIOTEK';

  @override
  String get sidebarPlaylists => 'SPILLELISTER';

  @override
  String get sidebarFolders => 'MAPPER';

  @override
  String get rowQueue => 'Kø';

  @override
  String get rowRemove => 'Fjern';

  @override
  String get rowPlaylist => 'Spilleliste';

  @override
  String plTrackCount(int count) {
    return '$count spor';
  }

  @override
  String get lyricsSourceAuto => 'Auto';

  @override
  String get lyricsSourceEmbedded => 'Innebygd';

  @override
  String get lyricsSourceBestQuality => 'Beste tilgjengelige kvalitet';

  @override
  String get lyricsSourceFileTags => 'Fra lydfilens egne tagger';

  @override
  String get lyricsSourceWordOnline => 'Ordsynkronisert (online)';

  @override
  String get lyricsSourceLineOnline => 'Linjesynkronisert (online)';

  @override
  String get lyricsSourceNotFound => 'Ikke funnet for denne sangen';

  @override
  String get npCatModeUnlocked => 'Mjau?! Kattemodus låst opp 🐱';

  @override
  String get shellResumePlayback => 'Gjenoppta avspilling';

  @override
  String get shellPlay => 'SPILL';

  @override
  String get devSection => 'UTVIKLER';

  @override
  String get devModeUnlocked => '🛠️ Utviklermodus låst opp';

  @override
  String get devUnlockAll => 'Lås opp alle tilbehør';

  @override
  String get devClearLyricsCache => 'Tøm tekstbuffer';

  @override
  String get devRefetchLyrics => 'Hent alle tekster på nytt…';

  @override
  String get devLyricsCleared => 'Tekstbuffer tømt';

  @override
  String get devHideOptions => 'Skjul utvikleralternativer';

  @override
  String get devModeOff => 'Utviklermodus av';

  @override
  String get youCantReadFolders => 'Kunne ikke lese musikkmappene dine';

  @override
  String get youNoMusicFolders => 'Ingen musikkmapper funnet';
}
