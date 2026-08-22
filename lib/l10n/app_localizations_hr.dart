// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class AppLocalizationsHr extends AppLocalizations {
  AppLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'Jezik';

  @override
  String get languageFollowSystem => 'Prati sustav';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Hana360';

  @override
  String get commonCancel => 'Odustani';

  @override
  String get commonConfirm => 'OK';

  @override
  String get commonBack => 'Natrag';

  @override
  String get commonDone => 'Gotovo';

  @override
  String get commonUnknown => 'Nepoznato';

  @override
  String get secUpmix => 'Upmix motor';

  @override
  String get spatialAudioTitle => '360° prostorni zvuk';

  @override
  String get npNothingPlaying => 'Još se ništa ne reproducira';

  @override
  String get npPickSong => 'Odaberi pjesmu iz svoje biblioteke';

  @override
  String get npSpatialSettings => 'Postavke 360°';

  @override
  String get npLyrics => 'Tekstovi';

  @override
  String get libSearchHint => 'Pretraži svoju glazbu…';

  @override
  String get libClearLibrary => 'Očisti biblioteku';

  @override
  String get libImportMusic => 'Uvezi glazbu';

  @override
  String libError(String error) {
    return 'Nešto je pošlo po zlu: $error';
  }

  @override
  String libNoMatch(String query) {
    return 'Ništa ne odgovara \"$query\"';
  }

  @override
  String get libPermissionDenied =>
      'Hana360 treba dopuštenje da pronađe vašu glazbu\nNema pristupa na ovom uređaju? Uvezite umjesto toga.';

  @override
  String get libNoSongs =>
      'Nema pronađenih pjesama na ovom uređaju\nUvezite glazbu iz svojih datoteka za početak';

  @override
  String get libGrantAccess => 'Dopusti pristup';

  @override
  String get libRescan => 'Ponovno skeniraj';

  @override
  String get libAddedToQueue => 'Dodano u red';

  @override
  String get libNoAlbums => 'Još nema albuma';

  @override
  String get libNoFolders => 'Još nema mapa';

  @override
  String get libNoPlaylists => 'Još nema popisa za reprodukciju';

  @override
  String libPlaylistCreated(String name) {
    return 'Popis \"$name\" stvoren 🌸';
  }

  @override
  String get libFolderHint =>
      'dugo pritisnite mapu da je pretvorite u popis za reprodukciju';

  @override
  String libSongCount(int count) {
    return '$count pjesama';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count pjesama · $path';
  }

  @override
  String get homeGreetingLate => 'Kasno budni ♪';

  @override
  String get homeGreetingMorning => 'Dobro jutro ♪';

  @override
  String get homeGreetingAfternoon => 'Dobar dan ♪';

  @override
  String get homeGreetingEvening => 'Dobra večer ♪';

  @override
  String get homeJumpBackIn => 'NASTAVI';

  @override
  String get homeForYou => 'ZA TEBE';

  @override
  String get homeForYouSub => 'odabrano na ovom uređaju, iz vašeg slušanja';

  @override
  String get homeWelcome => 'Dobrodošli u Hana360 🌸';

  @override
  String get homeAllQuiet => 'Sve tiho 🌸';

  @override
  String get homeLibraryHint =>
      'Vaša glazba živi na kartici Biblioteka — ondje dodajte mape. Sve što reproducirate skuplja se ovdje.';

  @override
  String get homePlayHint =>
      'Reproducirajte nešto i čekat će vas ovdje sljedeći put.';

  @override
  String get youRescanLibrary => 'Ponovno skeniraj biblioteku';

  @override
  String get youExcludedFolders => 'Isključene mape';

  @override
  String get youExcludedFoldersSub => 'Sakrij mape iz biblioteke';

  @override
  String get youCatMode => 'Mačji način';

  @override
  String get youAbout => 'O aplikaciji';

  @override
  String get youScanning => 'Skeniranje vaše glazbe…';

  @override
  String get youOpenSource => 'Open Source';

  @override
  String get youOpenSourceSub =>
      'Hana360 je izvedenica Hanamimija (GPLv3) autora ShaptakNaskar — izmijenjeno 2026-08-10';

  @override
  String get youCheckUpdates => 'Provjeri ažuriranja';

  @override
  String get youCheckUpdatesSub => 'Nove verzije izlaze na GitHub Releases';

  @override
  String get youUpToDate => 'Imate najnoviju verziju 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Napravio Sappy';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'Nastavi reproducirati u pozadini';

  @override
  String get youKeepPlayingAllowed =>
      'Dopušteno — sustav neće pauzirati vašu glazbu';

  @override
  String get youKeepPlayingTap =>
      'Dodirnite da spriječite sustav da zaustavi reprodukciju';

  @override
  String get youExcludedFoldersTitle => 'Isključene mape';

  @override
  String get youExcludedFoldersDesc =>
      'Pjesme u isključenim mapama izostavljene su iz biblioteke';

  @override
  String get youVisSensitivity => 'Osjetljivost vizualizatora';

  @override
  String get youVisSensitivitySub =>
      'Pojačajte za pjesme koje ga jedva pokreću';

  @override
  String get youNerdMode => 'Nerd način';

  @override
  String get youNerdModeSub =>
      'Prikaži kodek, bitrate i audio izlaz na Sada svira';

  @override
  String get youEqualizer => 'Ekvilizator';

  @override
  String get youComingSoon => 'Uskoro';

  @override
  String get sleepTimer => 'Tajmer spavanja';

  @override
  String get sleep15 => '15 minuta';

  @override
  String get sleep30 => '30 minuta';

  @override
  String get sleep1h => '1 sat';

  @override
  String get sleepEndTrack => 'Kraj pjesme';

  @override
  String get sleepFading => 'Stišavanje… laku noć';

  @override
  String sleepIn(String time) {
    return 'Spavanje za $time';
  }

  @override
  String get sleepEndTrackActive => 'Spavanje kad ova pjesma završi';

  @override
  String get sleepCancel => 'Otkaži tajmer';

  @override
  String get queueUpNext => 'Sljedeće';

  @override
  String get queueEmpty => 'Red je prazan';

  @override
  String get updateAvailable => 'Dostupno ažuriranje ✨';

  @override
  String get updateNoNotes => 'Nema bilješki o izdanju.';

  @override
  String get updateInstalling => 'Otvaranje instalacije…';

  @override
  String get updateFailed => 'Ažuriranje nije uspjelo — pokušajte kasnije';

  @override
  String get updateLater => 'Kasnije';

  @override
  String get updateRetry => 'Pokušaj ponovno';

  @override
  String get updateNow => 'Ažuriraj';

  @override
  String get spatialToggleTitle => '360° prostorni zvuk';

  @override
  String get spatialOn => 'Uključeno';

  @override
  String get spatialOff => 'Isključeno';

  @override
  String get lyricsNoFound => 'Tekst nije pronađen';

  @override
  String get lyricsJustListening => 'Ova je samo za slušanje';

  @override
  String get lyricsTrySource => 'Pokušajte drugi izvor';

  @override
  String get lyricsSource => 'Izvor tekstova';

  @override
  String get lyricsWordSynced => 'Sinkronizirano po riječima';

  @override
  String get lyricsLineSynced => 'Sinkronizirano po stihovima';

  @override
  String get lyricsUnsynced => 'Nesinkronizirano';

  @override
  String get plNoPlaylists => 'Još nema popisa — prvo napravite jedan!';

  @override
  String get plAddToPlaylist => 'Dodaj u popis';

  @override
  String plAddedTo(String name) {
    return 'Dodano u $name';
  }

  @override
  String get shareLyrics => 'Podijeli tekstove';

  @override
  String get shareMaxLines => 'Odabran najveći broj stihova';

  @override
  String sharePickLines(int count) {
    return 'Odaberite do $count stihova';
  }

  @override
  String get sharePickHint => 'Odaberite nekoliko stihova ispod…';

  @override
  String get shareButton => 'Podijeli';

  @override
  String get batTitle => 'Neka glazba nastavi svirati 🎵';

  @override
  String get batBody =>
      'Optimizacija baterije Androida može pauzirati glazbu kad je zaslon isključen. Dopustite Hana360 da radi bez ograničenja kako bi reprodukcija ostala stabilna.\n\nTo možete u svakom trenutku promijeniti u Ti → \"Nastavi reproducirati u pozadini\".';

  @override
  String get batNotNow => 'Ne sada';

  @override
  String get batAllow => 'Dopusti';

  @override
  String get algoSwitch => 'Algoritam';

  @override
  String get speakerDistance => 'Udaljenost zvučnika';

  @override
  String get channelTrim => 'Trim kanala';

  @override
  String get masterGain => 'Glavno pojačanje';

  @override
  String get secHrtf => 'Personalizacija HRTF-a';

  @override
  String get outputGain => 'Izlazno pojačanje';

  @override
  String get secEq => 'Prostorni EQ';

  @override
  String get secReverb => 'Odjek';

  @override
  String get roomSize => 'Prostorija';

  @override
  String get reverbGain => 'Pojačanje odjeka';

  @override
  String get secTracking => 'Praćenje glave';

  @override
  String get trackOff => 'Isključeno';

  @override
  String get trackSensor => 'Senzor telefona';

  @override
  String get trackManual => 'Ručno XY';

  @override
  String get dragHint =>
      'Povucite za podešavanje orijentacije glave (zvučno polje slijedi)';

  @override
  String get customEq => 'Prilagođeno';

  @override
  String get eqPresetMusic => 'Glazba';

  @override
  String get eqPresetCinema => 'Kino';

  @override
  String get eqPresetGame => 'Igra';

  @override
  String get eqPresetVoice => 'Glas';

  @override
  String get hrtfGroup0 => 'Muškarac / Mala / Mala';

  @override
  String get hrtfGroup1 => 'Muškarac / Mala / Srednja';

  @override
  String get hrtfGroup2 => 'Muškarac / Mala / Velika';

  @override
  String get hrtfGroup3 => 'Muškarac / Srednja / Mala';

  @override
  String get hrtfGroup4 => 'Muškarac / Srednja / Srednja';

  @override
  String get hrtfGroup5 => 'Muškarac / Srednja / Velika';

  @override
  String get hrtfGroup6 => 'Muškarac / Velika / Mala';

  @override
  String get hrtfGroup7 => 'Muškarac / Velika / Srednja';

  @override
  String get hrtfGroup8 => 'Muškarac / Velika / Velika';

  @override
  String get hrtfGroup9 => 'Žena / Mala / Mala';

  @override
  String get hrtfGroup10 => 'Žena / Mala / Srednja';

  @override
  String get hrtfGroup11 => 'Žena / Mala / Velika';

  @override
  String get hrtfGroup12 => 'Žena / Srednja / Mala';

  @override
  String get hrtfGroup13 => 'Žena / Srednja / Srednja';

  @override
  String get hrtfGroup14 => 'Žena / Srednja / Velika';

  @override
  String get navHome => 'Početna';

  @override
  String get navLibrary => 'Biblioteka';

  @override
  String get navPlaying => 'Reprodukcija';

  @override
  String get navYou => 'Ti';

  @override
  String get tabSongs => 'Pjesme';

  @override
  String get tabAlbums => 'Albumi';

  @override
  String get tabFolders => 'Mape';

  @override
  String get tabPlaylists => 'Popisi';

  @override
  String get youMood => 'RASPOLOŽENJE';

  @override
  String get youCompanion => 'VAŠ SUPUTNIK';

  @override
  String get youBuddies => 'PRIJATELJI';

  @override
  String get youSound => 'ZVUK';

  @override
  String get youMore => 'VIŠE';

  @override
  String get themeCherryBlossom => 'Cvijet trešnje';

  @override
  String get themeStarryNight => 'Zvjezdana noć';

  @override
  String get themeAdaptiveLight => 'Adaptivno svijetlo';

  @override
  String get themeAdaptiveDark => 'Adaptivno tamno';

  @override
  String youListenedTogether(int h, int m) {
    return '$h h $m min zajedničkog slušanja';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'Zaglavlje i Sada svira';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'Sjedi na naslovu biblioteke';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'Drijema na mini playeru';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'Šepuri se nad lajkanim pjesmama';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'Svijetle na tamnim temama';

  @override
  String get accBow => 'Ružičasta mašna';

  @override
  String get accHeadphones => 'Sićušne slušalice';

  @override
  String get accFlower => 'Cvijet';

  @override
  String get accCrown => 'Sićušna kruna';

  @override
  String accUnlockLabel(int h) {
    return 'Slušajte $h sati';
  }

  @override
  String get youCrossfade => 'Crossfade';

  @override
  String get youCrossfadeSub => 'Stopi kraj pjesme sa sljedećom';

  @override
  String get youSmartShuffle => 'Pametno miješanje';

  @override
  String get youSmartShuffleSub =>
      'Miješanje naginje vašim favoritima — izračunato na ovom uređaju';

  @override
  String get libLikedSongs => 'Lajkane pjesme';

  @override
  String get libTapHeart => 'Dodirnite srce na pjesmi da je zadržite ovdje';

  @override
  String get libRemovedFromQueue => 'Uklonjeno iz reda';

  @override
  String get libRemovedFromLibrary => 'Uklonjeno iz biblioteke';

  @override
  String get libRemoveFromLibrary => 'Ukloni iz biblioteke';

  @override
  String get libNewPlaylist => 'Novi popis';

  @override
  String get libPlaylistName => 'Naziv popisa';

  @override
  String get libCreate => 'Stvori';

  @override
  String get libSwipeHint =>
      'prijeđite ulijevo za uklanjanje · držite za preuređivanje';

  @override
  String get libChooseCover => 'Odaberite sliku naslovnice';

  @override
  String get libBackToArtCover => 'Natrag na naslovnicu pjesme';

  @override
  String libDeleteConfirm(String name) {
    return 'Izbrisati \"$name\"?';
  }

  @override
  String get libDeleteKeepSongs => 'Same pjesme ostaju na vašem uređaju';

  @override
  String get libKeep => 'Zadrži';

  @override
  String get libDelete => 'Izbriši';

  @override
  String get libRemoveKeepFile => 'Sama datoteka ostaje na vašem uređaju';

  @override
  String get libClearConfirm => 'Ukloniti sve datoteke?';

  @override
  String get libLibraryCleared => 'Biblioteka očišćena';

  @override
  String get libPickAudioFiles => 'Odaberite audio datoteke…';

  @override
  String get libImportFolder => 'Uvezi mapu';

  @override
  String get libScanWholeFolder => 'Skeniraj cijelu mapu… (preporučeno)';

  @override
  String libImportFailed(String error) {
    return 'Uvoz nije uspio: $error';
  }

  @override
  String get libNoAudioFound => 'Nisu pronađene audio datoteke';

  @override
  String libImportedCount(int count) {
    return 'Uvezeno $count pjesama';
  }

  @override
  String get libNothingHere =>
      'Još ništa ovdje — prijeđite ulijevo za uklanjanje, držite za preuređivanje';

  @override
  String get sidebarYourLibrary => 'VAŠA BIBLIOTEKA';

  @override
  String get sidebarPlaylists => 'POPISI';

  @override
  String get sidebarFolders => 'MAPE';

  @override
  String get rowQueue => 'Red';

  @override
  String get rowRemove => 'Ukloni';

  @override
  String get rowPlaylist => 'Popis';

  @override
  String plTrackCount(int count) {
    return '$count zapisa';
  }

  @override
  String get lyricsSourceAuto => 'Auto';

  @override
  String get lyricsSourceEmbedded => 'Ugrađeni';

  @override
  String get lyricsSourceBestQuality => 'Najbolja dostupna kvaliteta';

  @override
  String get lyricsSourceFileTags => 'Iz vlastitih oznaka audio datoteke';

  @override
  String get lyricsSourceWordOnline => 'Sinkronizirano po riječima (online)';

  @override
  String get lyricsSourceLineOnline => 'Sinkronizirano po stihovima (online)';

  @override
  String get lyricsSourceNotFound => 'Nije pronađeno za ovu pjesmu';

  @override
  String get npCatModeUnlocked => 'Mijau?! Mačji način otključan 🐱';

  @override
  String get shellResumePlayback => 'Nastavi reprodukciju';

  @override
  String get shellPlay => 'REPRODUCIRAJ';

  @override
  String get devSection => 'RAZVOJNI PROGRAMER';

  @override
  String get devModeUnlocked => '🛠️ Razvojni način otključan';

  @override
  String get devUnlockAll => 'Otključaj sve dodatke';

  @override
  String get devClearLyricsCache => 'Očisti predmemoriju tekstova';

  @override
  String get devRefetchLyrics => 'Ponovno dohvati sve tekstove…';

  @override
  String get devLyricsCleared => 'Predmemorija tekstova očišćena';

  @override
  String get devHideOptions => 'Sakrij razvojne opcije';

  @override
  String get devModeOff => 'Razvojni način isključen';

  @override
  String get youCantReadFolders => 'Nije moguće pročitati vaše glazbene mape';

  @override
  String get youNoMusicFolders => 'Nisu pronađene glazbene mape';
}
