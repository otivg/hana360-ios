// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'Språk';

  @override
  String get languageFollowSystem => 'Följ systemet';

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
  String get commonBack => 'Tillbaka';

  @override
  String get commonDone => 'Klart';

  @override
  String get commonUnknown => 'Okänd';

  @override
  String get secUpmix => 'Upmix-motor';

  @override
  String get spatialAudioTitle => '360° rumsligt ljud';

  @override
  String get npNothingPlaying => 'Inget spelas ännu';

  @override
  String get npPickSong => 'Välj en låt från ditt bibliotek';

  @override
  String get npSpatialSettings => '360°-inställningar';

  @override
  String get npLyrics => 'Text';

  @override
  String get libSearchHint => 'Sök i din musik…';

  @override
  String get libClearLibrary => 'Rensa bibliotek';

  @override
  String get libImportMusic => 'Importera musik';

  @override
  String libError(String error) {
    return 'Något gick fel: $error';
  }

  @override
  String libNoMatch(String query) {
    return 'Inget matchar \"$query\"';
  }

  @override
  String get libPermissionDenied =>
      'Hana360 behöver behörighet för att hitta din musik\nIngen åtkomst på den här enheten? Importera istället.';

  @override
  String get libNoSongs =>
      'Inga låtar hittades på den här enheten\nImportera musik från dina filer för att komma igång';

  @override
  String get libGrantAccess => 'Ge åtkomst';

  @override
  String get libRescan => 'Skanna igen';

  @override
  String get libAddedToQueue => 'Tillagd i kön';

  @override
  String get libNoAlbums => 'Inga album ännu';

  @override
  String get libNoFolders => 'Inga mappar ännu';

  @override
  String get libNoPlaylists => 'Inga spellistor ännu';

  @override
  String libPlaylistCreated(String name) {
    return 'Spellistan \"$name\" skapades 🌸';
  }

  @override
  String get libFolderHint =>
      'håll ned en mapp för att göra den till en spellista';

  @override
  String libSongCount(int count) {
    return '$count låtar';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count låtar · $path';
  }

  @override
  String get homeGreetingLate => 'Uppe sent ♪';

  @override
  String get homeGreetingMorning => 'God morgon ♪';

  @override
  String get homeGreetingAfternoon => 'God eftermiddag ♪';

  @override
  String get homeGreetingEvening => 'God kväll ♪';

  @override
  String get homeJumpBackIn => 'HOPPA TILLBAKA';

  @override
  String get homeForYou => 'FÖR DIG';

  @override
  String get homeForYouSub => 'valt på den här enheten, från ditt lyssnande';

  @override
  String get homeWelcome => 'Välkommen till Hana360 🌸';

  @override
  String get homeAllQuiet => 'Allt tyst 🌸';

  @override
  String get homeLibraryHint =>
      'Din musik finns i fliken Bibliotek — lägg till mappar där. Allt du spelar samlas här.';

  @override
  String get homePlayHint => 'Spela något så väntar det här nästa gång.';

  @override
  String get youRescanLibrary => 'Skanna biblioteket igen';

  @override
  String get youExcludedFolders => 'Uteslutna mappar';

  @override
  String get youExcludedFoldersSub => 'Dölj mappar från ditt bibliotek';

  @override
  String get youCatMode => 'Kattläge';

  @override
  String get youAbout => 'Om';

  @override
  String get youScanning => 'Skannar din musik…';

  @override
  String get youOpenSource => 'Öppen källkod';

  @override
  String get youOpenSourceSub =>
      'Hana360 är ett derivat av Hanamimi (GPLv3) av ShaptakNaskar — ändrad 2026-08-10';

  @override
  String get youCheckUpdates => 'Sök efter uppdateringar';

  @override
  String get youCheckUpdatesSub => 'Nya versioner hamnar på GitHub Releases';

  @override
  String get youUpToDate => 'Du är uppdaterad 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Gjord av Sappy';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'Fortsätt spela i bakgrunden';

  @override
  String get youKeepPlayingAllowed =>
      'Tillåtet — systemet pausar inte din musik';

  @override
  String get youKeepPlayingTap =>
      'Tryck för att hindra systemet från att stoppa uppspelningen';

  @override
  String get youExcludedFoldersTitle => 'Uteslutna mappar';

  @override
  String get youExcludedFoldersDesc =>
      'Låtar i avstängda mappar utelämnas från biblioteket';

  @override
  String get youVisSensitivity => 'Visualizer-känslighet';

  @override
  String get youVisSensitivitySub => 'Höj för låtar som knappt rör den';

  @override
  String get youNerdMode => 'Nördläge';

  @override
  String get youNerdModeSub => 'Visa codec, bitrate och ljudutgång i Spelas nu';

  @override
  String get youEqualizer => 'Equalizer';

  @override
  String get youComingSoon => 'Kommer snart';

  @override
  String get sleepTimer => 'Insomningstimer';

  @override
  String get sleep15 => '15 minuter';

  @override
  String get sleep30 => '30 minuter';

  @override
  String get sleep1h => '1 timme';

  @override
  String get sleepEndTrack => 'Slutet av låten';

  @override
  String get sleepFading => 'Tona ut… sov gott';

  @override
  String sleepIn(String time) {
    return 'Sover om $time';
  }

  @override
  String get sleepEndTrackActive => 'Sover när den här låten slutar';

  @override
  String get sleepCancel => 'Avbryt timer';

  @override
  String get queueUpNext => 'Nästa';

  @override
  String get queueEmpty => 'Kön är tom';

  @override
  String get updateAvailable => 'Uppdatering tillgänglig ✨';

  @override
  String get updateNoNotes => 'Inga versionsanteckningar.';

  @override
  String get updateInstalling => 'Öppnar installation…';

  @override
  String get updateFailed => 'Kunde inte uppdatera — försök igen senare';

  @override
  String get updateLater => 'Senare';

  @override
  String get updateRetry => 'Försök igen';

  @override
  String get updateNow => 'Uppdatera';

  @override
  String get spatialToggleTitle => '360° rumsligt ljud';

  @override
  String get spatialOn => 'På';

  @override
  String get spatialOff => 'Av';

  @override
  String get lyricsNoFound => 'Ingen text hittades';

  @override
  String get lyricsJustListening => 'Den här är bara för att lyssna på';

  @override
  String get lyricsTrySource => 'Prova en annan källa';

  @override
  String get lyricsSource => 'Textkälla';

  @override
  String get lyricsWordSynced => 'Ordsynkroniserad';

  @override
  String get lyricsLineSynced => 'Radsynkroniserad';

  @override
  String get lyricsUnsynced => 'Osynkroniserad';

  @override
  String get plNoPlaylists => 'Inga spellistor ännu — skapa en först!';

  @override
  String get plAddToPlaylist => 'Lägg till i spellista';

  @override
  String plAddedTo(String name) {
    return 'Tillagd i $name';
  }

  @override
  String get shareLyrics => 'Dela text';

  @override
  String get shareMaxLines => 'Max antal rader valda';

  @override
  String sharePickLines(int count) {
    return 'Välj upp till $count rader';
  }

  @override
  String get sharePickHint => 'Välj några rader nedan…';

  @override
  String get shareButton => 'Dela';

  @override
  String get batTitle => 'Fortsätt spela musiken 🎵';

  @override
  String get batBody =>
      'Androids batterioptimering kan pausa din musik när skärmen är av. Låt Hana360 köra utan begränsningar så att uppspelningen förblir stabil.\n\nDu kan ändra detta när som helst under Du → \"Fortsätt spela i bakgrunden\".';

  @override
  String get batNotNow => 'Inte nu';

  @override
  String get batAllow => 'Tillåt';

  @override
  String get algoSwitch => 'Algoritm';

  @override
  String get speakerDistance => 'Högtalaravstånd';

  @override
  String get channelTrim => 'Kanaltrim';

  @override
  String get masterGain => 'Masterförstärkning';

  @override
  String get secHrtf => 'HRTF-personalisering';

  @override
  String get outputGain => 'Utgångsförstärkning';

  @override
  String get secEq => 'Rumslig EQ';

  @override
  String get secReverb => 'Eko';

  @override
  String get roomSize => 'Rum';

  @override
  String get reverbGain => 'Ekoförstärkning';

  @override
  String get secTracking => 'Huvudspårning';

  @override
  String get trackOff => 'Av';

  @override
  String get trackSensor => 'Telefonsensor';

  @override
  String get trackManual => 'Manuell XY';

  @override
  String get dragHint =>
      'Dra för att justera huvudets riktning (ljudfältet följer)';

  @override
  String get customEq => 'Anpassad';

  @override
  String get eqPresetMusic => 'Musik';

  @override
  String get eqPresetCinema => 'Bio';

  @override
  String get eqPresetGame => 'Spel';

  @override
  String get eqPresetVoice => 'Röst';

  @override
  String get hrtfGroup0 => 'Man / Litet / Litet';

  @override
  String get hrtfGroup1 => 'Man / Litet / Mellan';

  @override
  String get hrtfGroup2 => 'Man / Litet / Stort';

  @override
  String get hrtfGroup3 => 'Man / Mellan / Litet';

  @override
  String get hrtfGroup4 => 'Man / Mellan / Mellan';

  @override
  String get hrtfGroup5 => 'Man / Mellan / Stort';

  @override
  String get hrtfGroup6 => 'Man / Stort / Litet';

  @override
  String get hrtfGroup7 => 'Man / Stort / Mellan';

  @override
  String get hrtfGroup8 => 'Man / Stort / Stort';

  @override
  String get hrtfGroup9 => 'Kvinna / Litet / Litet';

  @override
  String get hrtfGroup10 => 'Kvinna / Litet / Mellan';

  @override
  String get hrtfGroup11 => 'Kvinna / Litet / Stort';

  @override
  String get hrtfGroup12 => 'Kvinna / Mellan / Litet';

  @override
  String get hrtfGroup13 => 'Kvinna / Mellan / Mellan';

  @override
  String get hrtfGroup14 => 'Kvinna / Mellan / Stort';

  @override
  String get navHome => 'Hem';

  @override
  String get navLibrary => 'Bibliotek';

  @override
  String get navPlaying => 'Spelas';

  @override
  String get navYou => 'Du';

  @override
  String get tabSongs => 'Låtar';

  @override
  String get tabAlbums => 'Album';

  @override
  String get tabFolders => 'Mappar';

  @override
  String get tabPlaylists => 'Spellistor';

  @override
  String get youMood => 'STÄMNING';

  @override
  String get youCompanion => 'DIN FÖLJESLAGARE';

  @override
  String get youBuddies => 'KOMPISAR';

  @override
  String get youSound => 'LJUD';

  @override
  String get youMore => 'MER';

  @override
  String get themeCherryBlossom => 'Körsbärsblom';

  @override
  String get themeStarryNight => 'Stjärnenatt';

  @override
  String get themeAdaptiveLight => 'Adaptivt ljust';

  @override
  String get themeAdaptiveDark => 'Adaptivt mörkt';

  @override
  String youListenedTogether(int h, int m) {
    return '$h t $m min lyssnat tillsammans';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'Sidhuvud och Spelas nu';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'Sitter på bibliotekets titel';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'Sover på minispelaren';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'Struttar ovanpå gillade låtar';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'Glöder på de mörka temana';

  @override
  String get accBow => 'Rosa rosett';

  @override
  String get accHeadphones => 'Små hörlurar';

  @override
  String get accFlower => 'Blomma';

  @override
  String get accCrown => 'Liten krona';

  @override
  String accUnlockLabel(int h) {
    return 'Lyssna i $h timmar';
  }

  @override
  String get youCrossfade => 'Övertoning';

  @override
  String get youCrossfadeSub => 'Blanda slutet av en låt in i nästa';

  @override
  String get youSmartShuffle => 'Smart blandning';

  @override
  String get youSmartShuffleSub =>
      'Blandningen lutar åt dina favoriter — beräknad på den här enheten';

  @override
  String get libLikedSongs => 'Gillade låtar';

  @override
  String get libTapHeart =>
      'Tryck på hjärtat på en låt för att behålla den här';

  @override
  String get libRemovedFromQueue => 'Borttagen från kön';

  @override
  String get libRemovedFromLibrary => 'Borttagen från biblioteket';

  @override
  String get libRemoveFromLibrary => 'Ta bort från biblioteket';

  @override
  String get libNewPlaylist => 'Ny spellista';

  @override
  String get libPlaylistName => 'Spellistans namn';

  @override
  String get libCreate => 'Skapa';

  @override
  String get libSwipeHint =>
      'svep åt vänster för att ta bort · håll ned för att ordna om';

  @override
  String get libChooseCover => 'Välj omslagsbild';

  @override
  String get libBackToArtCover => 'Tillbaka till låtomslag';

  @override
  String libDeleteConfirm(String name) {
    return 'Ta bort \"$name\"?';
  }

  @override
  String get libDeleteKeepSongs => 'Själva låtarna finns kvar på din enhet';

  @override
  String get libKeep => 'Behåll';

  @override
  String get libDelete => 'Ta bort';

  @override
  String get libRemoveKeepFile => 'Själva filen finns kvar på din enhet';

  @override
  String get libClearConfirm => 'Ta bort alla filer?';

  @override
  String get libLibraryCleared => 'Biblioteket rensat';

  @override
  String get libPickAudioFiles => 'Välj ljudfiler…';

  @override
  String get libImportFolder => 'Importera en mapp';

  @override
  String get libScanWholeFolder => 'Skanna en hel mapp… (rekommenderas)';

  @override
  String libImportFailed(String error) {
    return 'Import misslyckades: $error';
  }

  @override
  String get libNoAudioFound => 'Inga ljudfiler hittades';

  @override
  String libImportedCount(int count) {
    return 'Importerade $count låtar';
  }

  @override
  String get libNothingHere =>
      'Inget här ännu — svep åt vänster för att ta bort, håll ned för att ordna om';

  @override
  String get sidebarYourLibrary => 'DITT BIBLIOTEK';

  @override
  String get sidebarPlaylists => 'SPELLISTOR';

  @override
  String get sidebarFolders => 'MAPPAR';

  @override
  String get rowQueue => 'Kö';

  @override
  String get rowRemove => 'Ta bort';

  @override
  String get rowPlaylist => 'Spellista';

  @override
  String plTrackCount(int count) {
    return '$count spår';
  }

  @override
  String get lyricsSourceAuto => 'Auto';

  @override
  String get lyricsSourceEmbedded => 'Inbäddad';

  @override
  String get lyricsSourceBestQuality => 'Bästa tillgängliga kvalitet';

  @override
  String get lyricsSourceFileTags => 'Från ljudfilens egna taggar';

  @override
  String get lyricsSourceWordOnline => 'Ordsynkroniserad (online)';

  @override
  String get lyricsSourceLineOnline => 'Radsynkroniserad (online)';

  @override
  String get lyricsSourceNotFound => 'Hittades inte för den här låten';

  @override
  String get npCatModeUnlocked => 'Mjau?! Kattläget upplåst 🐱';

  @override
  String get shellResumePlayback => 'Återuppta uppspelning';

  @override
  String get shellPlay => 'SPELA';

  @override
  String get devSection => 'UTVECKLARE';

  @override
  String get devModeUnlocked => '🛠️ Utvecklarläget upplåst';

  @override
  String get devUnlockAll => 'Lås upp alla tillbehör';

  @override
  String get devClearLyricsCache => 'Rensa textcache';

  @override
  String get devRefetchLyrics => 'Hämta alla texter igen…';

  @override
  String get devLyricsCleared => 'Textcachen rensad';

  @override
  String get devHideOptions => 'Dölj utvecklaralternativ';

  @override
  String get devModeOff => 'Utvecklarläget av';

  @override
  String get youCantReadFolders => 'Kunde inte läsa dina musikmappar';

  @override
  String get youNoMusicFolders => 'Inga musikmappar hittades';
}
