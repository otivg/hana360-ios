// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'Taal';

  @override
  String get languageFollowSystem => 'Volg systeem';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Hana360';

  @override
  String get commonCancel => 'Annuleren';

  @override
  String get commonConfirm => 'OK';

  @override
  String get commonBack => 'Terug';

  @override
  String get commonDone => 'Klaar';

  @override
  String get commonUnknown => 'Onbekend';

  @override
  String get secUpmix => 'Upmix-engine';

  @override
  String get spatialAudioTitle => '360° ruimtelijke audio';

  @override
  String get npNothingPlaying => 'Er speelt nog niets';

  @override
  String get npPickSong => 'Kies een nummer uit je bibliotheek';

  @override
  String get npSpatialSettings => '360°-instellingen';

  @override
  String get npLyrics => 'Songteksten';

  @override
  String get libSearchHint => 'Zoek in je muziek…';

  @override
  String get libClearLibrary => 'Bibliotheek leegmaken';

  @override
  String get libImportMusic => 'Muziek importeren';

  @override
  String libError(String error) {
    return 'Er is iets misgegaan: $error';
  }

  @override
  String libNoMatch(String query) {
    return 'Niets komt overeen met \"$query\"';
  }

  @override
  String get libPermissionDenied =>
      'Hana360 heeft toestemming nodig om je muziek te vinden\nGeen toegang op dit apparaat? Importeer in plaats daarvan.';

  @override
  String get libNoSongs =>
      'Geen nummers gevonden op dit apparaat\nImporteer muziek uit je bestanden om te beginnen';

  @override
  String get libGrantAccess => 'Toegang verlenen';

  @override
  String get libRescan => 'Opnieuw scannen';

  @override
  String get libAddedToQueue => 'Aan wachtrij toegevoegd';

  @override
  String get libNoAlbums => 'Nog geen albums';

  @override
  String get libNoFolders => 'Nog geen mappen';

  @override
  String get libNoPlaylists => 'Nog geen afspeellijsten';

  @override
  String libPlaylistCreated(String name) {
    return 'Afspeellijst \"$name\" aangemaakt 🌸';
  }

  @override
  String get libFolderHint =>
      'houd een map ingedrukt om er een afspeellijst van te maken';

  @override
  String libSongCount(int count) {
    return '$count nummers';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count nummers · $path';
  }

  @override
  String get homeGreetingLate => 'Laat op ♪';

  @override
  String get homeGreetingMorning => 'Goedemorgen ♪';

  @override
  String get homeGreetingAfternoon => 'Goedemiddag ♪';

  @override
  String get homeGreetingEvening => 'Goedenavond ♪';

  @override
  String get homeJumpBackIn => 'GA VERDER';

  @override
  String get homeForYou => 'VOOR JOU';

  @override
  String get homeForYouSub =>
      'gekozen op dit apparaat, op basis van je luistergedrag';

  @override
  String get homeWelcome => 'Welkom bij Hana360 🌸';

  @override
  String get homeAllQuiet => 'Alles stil 🌸';

  @override
  String get homeLibraryHint =>
      'Je muziek leeft in het tabblad Bibliotheek — voeg daar mappen toe. Alles wat je afspeelt, verzamelt zich hier.';

  @override
  String get homePlayHint =>
      'Speel iets af en het wacht hier de volgende keer op je.';

  @override
  String get youRescanLibrary => 'Bibliotheek opnieuw scannen';

  @override
  String get youExcludedFolders => 'Uitgesloten mappen';

  @override
  String get youExcludedFoldersSub => 'Mappen verbergen uit je bibliotheek';

  @override
  String get youCatMode => 'Kattenmodus';

  @override
  String get youAbout => 'Over';

  @override
  String get youScanning => 'Je muziek scannen…';

  @override
  String get youOpenSource => 'Open source';

  @override
  String get youOpenSourceSub =>
      'Hana360 is een afgeleide van Hanamimi (GPLv3) van ShaptakNaskar — gewijzigd op 2026-08-10';

  @override
  String get youCheckUpdates => 'Controleren op updates';

  @override
  String get youCheckUpdatesSub =>
      'Nieuwe builds verschijnen op GitHub Releases';

  @override
  String get youUpToDate => 'Je bent up-to-date 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Gemaakt door Sappy';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'Blijf afspelen op de achtergrond';

  @override
  String get youKeepPlayingAllowed =>
      'Toegestaan — het systeem pauzeert je muziek niet';

  @override
  String get youKeepPlayingTap =>
      'Tik om te voorkomen dat het systeem het afspelen stopt';

  @override
  String get youExcludedFoldersTitle => 'Uitgesloten mappen';

  @override
  String get youExcludedFoldersDesc =>
      'Nummers in uitgeschakelde mappen worden uit je bibliotheek weggelaten';

  @override
  String get youVisSensitivity => 'Gevoeligheid visualizer';

  @override
  String get youVisSensitivitySub =>
      'Zet omhoog voor nummers die hem nauwelijks bewegen';

  @override
  String get youNerdMode => 'Nerdmodus';

  @override
  String get youNerdModeSub =>
      'Toon codec, bitrate en audio-uitvoer op Nu afspelen';

  @override
  String get youEqualizer => 'Equalizer';

  @override
  String get youComingSoon => 'Binnenkort';

  @override
  String get sleepTimer => 'Slaaptimer';

  @override
  String get sleep15 => '15 minuten';

  @override
  String get sleep30 => '30 minuten';

  @override
  String get sleep1h => '1 uur';

  @override
  String get sleepEndTrack => 'Einde van nummer';

  @override
  String get sleepFading => 'Uitfaden… slaap lekker';

  @override
  String sleepIn(String time) {
    return 'Slapen over $time';
  }

  @override
  String get sleepEndTrackActive => 'Slapen wanneer dit nummer eindigt';

  @override
  String get sleepCancel => 'Timer annuleren';

  @override
  String get queueUpNext => 'Volgende';

  @override
  String get queueEmpty => 'Wachtrij is leeg';

  @override
  String get updateAvailable => 'Update beschikbaar ✨';

  @override
  String get updateNoNotes => 'Geen release-opmerkingen.';

  @override
  String get updateInstalling => 'Installatie openen…';

  @override
  String get updateFailed => 'Kon niet updaten — probeer het later opnieuw';

  @override
  String get updateLater => 'Later';

  @override
  String get updateRetry => 'Opnieuw';

  @override
  String get updateNow => 'Updaten';

  @override
  String get spatialToggleTitle => '360° ruimtelijke audio';

  @override
  String get spatialOn => 'Aan';

  @override
  String get spatialOff => 'Uit';

  @override
  String get lyricsNoFound => 'Geen songteksten gevonden';

  @override
  String get lyricsJustListening => 'Deze is gewoon om naar te luisteren';

  @override
  String get lyricsTrySource => 'Probeer een andere bron';

  @override
  String get lyricsSource => 'Bron van songteksten';

  @override
  String get lyricsWordSynced => 'Woord-synchroon';

  @override
  String get lyricsLineSynced => 'Regel-synchroon';

  @override
  String get lyricsUnsynced => 'Niet synchroon';

  @override
  String get plNoPlaylists => 'Nog geen afspeellijsten — maak er eerst een!';

  @override
  String get plAddToPlaylist => 'Toevoegen aan afspeellijst';

  @override
  String plAddedTo(String name) {
    return 'Toegevoegd aan $name';
  }

  @override
  String get shareLyrics => 'Songteksten delen';

  @override
  String get shareMaxLines => 'Maximaal aantal regels geselecteerd';

  @override
  String sharePickLines(int count) {
    return 'Kies maximaal $count regels';
  }

  @override
  String get sharePickHint => 'Kies hieronder enkele regels…';

  @override
  String get shareButton => 'Delen';

  @override
  String get batTitle => 'Blijf de muziek afspelen 🎵';

  @override
  String get batBody =>
      'De batterij-optimalisatie van Android kan je muziek pauzeren wanneer het scherm uit staat. Sta Hana360 toe onbeperkt te draaien zodat het afspelen stabiel blijft.\n\nJe kunt dit op elk moment wijzigen in Jij → \"Blijf afspelen op de achtergrond\".';

  @override
  String get batNotNow => 'Niet nu';

  @override
  String get batAllow => 'Toestaan';

  @override
  String get algoSwitch => 'Algoritme';

  @override
  String get speakerDistance => 'Luidsprekerafstand';

  @override
  String get channelTrim => 'Kanaal-trim';

  @override
  String get masterGain => 'Mastergain';

  @override
  String get secHrtf => 'HRTF-personalisatie';

  @override
  String get outputGain => 'Uitgangsgain';

  @override
  String get secEq => 'Ruimtelijke EQ';

  @override
  String get secReverb => 'Galm';

  @override
  String get roomSize => 'Ruimte';

  @override
  String get reverbGain => 'Galmgain';

  @override
  String get secTracking => 'Hoofdtracking';

  @override
  String get trackOff => 'Uit';

  @override
  String get trackSensor => 'Telefoonsensor';

  @override
  String get trackManual => 'Handmatig XY';

  @override
  String get dragHint =>
      'Sleep om de hoofdorichting aan te passen (het geluidsveld volgt)';

  @override
  String get customEq => 'Aangepast';

  @override
  String get eqPresetMusic => 'Muziek';

  @override
  String get eqPresetCinema => 'Bioscoop';

  @override
  String get eqPresetGame => 'Game';

  @override
  String get eqPresetVoice => 'Stem';

  @override
  String get hrtfGroup0 => 'Man / Klein / Klein';

  @override
  String get hrtfGroup1 => 'Man / Klein / Middel';

  @override
  String get hrtfGroup2 => 'Man / Klein / Groot';

  @override
  String get hrtfGroup3 => 'Man / Middel / Klein';

  @override
  String get hrtfGroup4 => 'Man / Middel / Middel';

  @override
  String get hrtfGroup5 => 'Man / Middel / Groot';

  @override
  String get hrtfGroup6 => 'Man / Groot / Klein';

  @override
  String get hrtfGroup7 => 'Man / Groot / Middel';

  @override
  String get hrtfGroup8 => 'Man / Groot / Groot';

  @override
  String get hrtfGroup9 => 'Vrouw / Klein / Klein';

  @override
  String get hrtfGroup10 => 'Vrouw / Klein / Middel';

  @override
  String get hrtfGroup11 => 'Vrouw / Klein / Groot';

  @override
  String get hrtfGroup12 => 'Vrouw / Middel / Klein';

  @override
  String get hrtfGroup13 => 'Vrouw / Middel / Middel';

  @override
  String get hrtfGroup14 => 'Vrouw / Middel / Groot';

  @override
  String get navHome => 'Home';

  @override
  String get navLibrary => 'Bibliotheek';

  @override
  String get navPlaying => 'Afspelen';

  @override
  String get navYou => 'Jij';

  @override
  String get tabSongs => 'Nummers';

  @override
  String get tabAlbums => 'Albums';

  @override
  String get tabFolders => 'Mappen';

  @override
  String get tabPlaylists => 'Afspeellijsten';

  @override
  String get youMood => 'STEMMING';

  @override
  String get youCompanion => 'JOUW METGEZEL';

  @override
  String get youBuddies => 'MAATJES';

  @override
  String get youSound => 'GELUID';

  @override
  String get youMore => 'MEER';

  @override
  String get themeCherryBlossom => 'Kersenbloesem';

  @override
  String get themeStarryNight => 'Sterrennacht';

  @override
  String get themeAdaptiveLight => 'Adaptief licht';

  @override
  String get themeAdaptiveDark => 'Adaptief donker';

  @override
  String youListenedTogether(int h, int m) {
    return '${h}u ${m}m samen geluisterd';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'Koptekst en Nu afspelen';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'Zit op de titel van de Bibliotheek';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'Dut op de minispeler';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'Loopt boven de leuke nummers';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'Gloeien op de donkere thema\'s';

  @override
  String get accBow => 'Roze strik';

  @override
  String get accHeadphones => 'Mini-koptelefoon';

  @override
  String get accFlower => 'Bloem';

  @override
  String get accCrown => 'Mini-kroon';

  @override
  String accUnlockLabel(int h) {
    return 'Luister $h uur';
  }

  @override
  String get youCrossfade => 'Crossfade';

  @override
  String get youCrossfadeSub =>
      'Laat het einde van een nummer overvloeien in het volgende';

  @override
  String get youSmartShuffle => 'Slimme shuffle';

  @override
  String get youSmartShuffleSub =>
      'Shuffle neigt naar je favorieten — berekend op dit apparaat';

  @override
  String get libLikedSongs => 'Leuke nummers';

  @override
  String get libTapHeart =>
      'Tik op het hartje bij een nummer om het hier te bewaren';

  @override
  String get libRemovedFromQueue => 'Uit wachtrij verwijderd';

  @override
  String get libRemovedFromLibrary => 'Uit bibliotheek verwijderd';

  @override
  String get libRemoveFromLibrary => 'Uit bibliotheek verwijderen';

  @override
  String get libNewPlaylist => 'Nieuwe afspeellijst';

  @override
  String get libPlaylistName => 'Naam afspeellijst';

  @override
  String get libCreate => 'Maken';

  @override
  String get libSwipeHint =>
      'veeg naar links om te verwijderen · houd vast om te herschikken';

  @override
  String get libChooseCover => 'Kies omslagafbeelding';

  @override
  String get libBackToArtCover => 'Terug naar omslag van nummer';

  @override
  String libDeleteConfirm(String name) {
    return '\"$name\" verwijderen?';
  }

  @override
  String get libDeleteKeepSongs => 'De nummers zelf blijven op je apparaat';

  @override
  String get libKeep => 'Behouden';

  @override
  String get libDelete => 'Verwijderen';

  @override
  String get libRemoveKeepFile => 'Het bestand zelf blijft op je apparaat';

  @override
  String get libClearConfirm => 'Alle bestanden verwijderen?';

  @override
  String get libLibraryCleared => 'Bibliotheek leeggemaakt';

  @override
  String get libPickAudioFiles => 'Kies audiobestanden…';

  @override
  String get libImportFolder => 'Een map importeren';

  @override
  String get libScanWholeFolder => 'Een hele map scannen… (aanbevolen)';

  @override
  String libImportFailed(String error) {
    return 'Importeren mislukt: $error';
  }

  @override
  String get libNoAudioFound => 'Geen audiobestanden gevonden';

  @override
  String libImportedCount(int count) {
    return '$count nummers geïmporteerd';
  }

  @override
  String get libNothingHere =>
      'Nog niets hier — veeg naar links om te verwijderen, houd vast om te herschikken';

  @override
  String get sidebarYourLibrary => 'JOUW BIBLIOTHEEK';

  @override
  String get sidebarPlaylists => 'AFSPEELLIJSTEN';

  @override
  String get sidebarFolders => 'MAPPEN';

  @override
  String get rowQueue => 'Wachtrij';

  @override
  String get rowRemove => 'Verwijderen';

  @override
  String get rowPlaylist => 'Afspeellijst';

  @override
  String plTrackCount(int count) {
    return '$count tracks';
  }

  @override
  String get lyricsSourceAuto => 'Auto';

  @override
  String get lyricsSourceEmbedded => 'Ingebed';

  @override
  String get lyricsSourceBestQuality => 'Beste beschikbare kwaliteit';

  @override
  String get lyricsSourceFileTags => 'Uit de eigen tags van het audiobestand';

  @override
  String get lyricsSourceWordOnline => 'Woord-synchroon (online)';

  @override
  String get lyricsSourceLineOnline => 'Regel-synchroon (online)';

  @override
  String get lyricsSourceNotFound => 'Niet gevonden voor dit nummer';

  @override
  String get npCatModeUnlocked => 'Miauw?! Kattenmodus ontgrendeld 🐱';

  @override
  String get shellResumePlayback => 'Afspelen hervatten';

  @override
  String get shellPlay => 'AFSPELEN';

  @override
  String get devSection => 'ONTWIKKELAAR';

  @override
  String get devModeUnlocked => '🛠️ Ontwikkelaarsmodus ontgrendeld';

  @override
  String get devUnlockAll => 'Alle accessoires ontgrendelen';

  @override
  String get devClearLyricsCache => 'Songtekstencache wissen';

  @override
  String get devRefetchLyrics => 'Alle songteksten opnieuw ophalen…';

  @override
  String get devLyricsCleared => 'Songtekstencache gewist';

  @override
  String get devHideOptions => 'Ontwikkelaarsopties verbergen';

  @override
  String get devModeOff => 'Ontwikkelaarsmodus uit';

  @override
  String get youCantReadFolders => 'Kon je muziekmappen niet lezen';

  @override
  String get youNoMusicFolders => 'Geen muziekmappen gevonden';
}
