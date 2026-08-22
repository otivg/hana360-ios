// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class AppLocalizationsCa extends AppLocalizations {
  AppLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'Idioma';

  @override
  String get languageFollowSystem => 'Segueix el sistema';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Hana360';

  @override
  String get commonCancel => 'Cancel·la';

  @override
  String get commonConfirm => 'D\'acord';

  @override
  String get commonBack => 'Enrere';

  @override
  String get commonDone => 'Fet';

  @override
  String get commonUnknown => 'Desconegut';

  @override
  String get secUpmix => 'Motor d\'upmix';

  @override
  String get spatialAudioTitle => 'Àudio espacial 360°';

  @override
  String get npNothingPlaying => 'Encara no sona res';

  @override
  String get npPickSong => 'Tria una cançó de la teva biblioteca';

  @override
  String get npSpatialSettings => 'Configuració 360°';

  @override
  String get npLyrics => 'Lletres';

  @override
  String get libSearchHint => 'Cerca a la teva música…';

  @override
  String get libClearLibrary => 'Buida la biblioteca';

  @override
  String get libImportMusic => 'Importa música';

  @override
  String libError(String error) {
    return 'Alguna cosa ha fallat: $error';
  }

  @override
  String libNoMatch(String query) {
    return 'Res no coincideix amb \"$query\"';
  }

  @override
  String get libPermissionDenied =>
      'Hana360 necessita permís per trobar la teva música\nSense accés en aquest dispositiu? Importa en lloc d\'això.';

  @override
  String get libNoSongs =>
      'No s\'han trobat cançons en aquest dispositiu\nImporta música dels teus fitxers per començar';

  @override
  String get libGrantAccess => 'Concedeix accés';

  @override
  String get libRescan => 'Torna a escanejar';

  @override
  String get libAddedToQueue => 'Afegida a la cua';

  @override
  String get libNoAlbums => 'Encara no hi ha àlbums';

  @override
  String get libNoFolders => 'Encara no hi ha carpetes';

  @override
  String get libNoPlaylists => 'Encara no hi ha llistes de reproducció';

  @override
  String libPlaylistCreated(String name) {
    return 'Llista \"$name\" creada 🌸';
  }

  @override
  String get libFolderHint =>
      'mantén premuda una carpeta per convertir-la en llista de reproducció';

  @override
  String libSongCount(int count) {
    return '$count cançons';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count cançons · $path';
  }

  @override
  String get homeGreetingLate => 'Despert fins tard ♪';

  @override
  String get homeGreetingMorning => 'Bon dia ♪';

  @override
  String get homeGreetingAfternoon => 'Bona tarda ♪';

  @override
  String get homeGreetingEvening => 'Bon vespre ♪';

  @override
  String get homeJumpBackIn => 'TORNA-HI';

  @override
  String get homeForYou => 'PER A TU';

  @override
  String get homeForYouSub =>
      'triat en aquest dispositiu, a partir de les teves escoltes';

  @override
  String get homeWelcome => 'Benvingut a Hana360 🌸';

  @override
  String get homeAllQuiet => 'Tot en silenci 🌸';

  @override
  String get homeLibraryHint =>
      'La teva música viu a la pestanya Biblioteca — afegeix-hi carpetes. Tot el que reprodueixes es reuneix aquí.';

  @override
  String get homePlayHint =>
      'Reprodueix alguna cosa i t\'esperarà aquí la propera vegada.';

  @override
  String get youRescanLibrary => 'Torna a escanejar la biblioteca';

  @override
  String get youExcludedFolders => 'Carpetes excloses';

  @override
  String get youExcludedFoldersSub => 'Amaga carpetes de la biblioteca';

  @override
  String get youCatMode => 'Mode gat';

  @override
  String get youAbout => 'Sobre';

  @override
  String get youScanning => 'Escanejant la teva música…';

  @override
  String get youOpenSource => 'Codi obert';

  @override
  String get youOpenSourceSub =>
      'Hana360 és una derivació de Hanamimi (GPLv3) de ShaptakNaskar — modificat el 2026-08-10';

  @override
  String get youCheckUpdates => 'Comprova actualitzacions';

  @override
  String get youCheckUpdatesSub =>
      'Les noves versions surten a GitHub Releases';

  @override
  String get youUpToDate => 'Estàs al dia 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Fet per Sappy';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'Continua reproduint en segon pla';

  @override
  String get youKeepPlayingAllowed =>
      'Permès — el sistema no pausarà la teva música';

  @override
  String get youKeepPlayingTap =>
      'Toca per evitar que el sistema aturi la reproducció';

  @override
  String get youExcludedFoldersTitle => 'Carpetes excloses';

  @override
  String get youExcludedFoldersDesc =>
      'Les cançons de les carpetes desactivades queden fora de la biblioteca';

  @override
  String get youVisSensitivity => 'Sensibilitat del visualitzador';

  @override
  String get youVisSensitivitySub =>
      'Puja-la per a cançons que amb prou feines el mouen';

  @override
  String get youNerdMode => 'Mode friki';

  @override
  String get youNerdModeSub =>
      'Mostra còdec, bitrate i sortida d\'àudio a S\'està reproduint';

  @override
  String get youEqualizer => 'Equalitzador';

  @override
  String get youComingSoon => 'Properament';

  @override
  String get sleepTimer => 'Temporitzador de son';

  @override
  String get sleep15 => '15 minuts';

  @override
  String get sleep30 => '30 minuts';

  @override
  String get sleep1h => '1 hora';

  @override
  String get sleepEndTrack => 'Final de la cançó';

  @override
  String get sleepFading => 'Es va esvaint… bons somnis';

  @override
  String sleepIn(String time) {
    return 'Dormint d\'aquí a $time';
  }

  @override
  String get sleepEndTrackActive => 'Dormir quan acabi aquesta cançó';

  @override
  String get sleepCancel => 'Cancel·la el temporitzador';

  @override
  String get queueUpNext => 'A continuació';

  @override
  String get queueEmpty => 'La cua és buida';

  @override
  String get updateAvailable => 'Actualització disponible ✨';

  @override
  String get updateNoNotes => 'Sense notes de llançament.';

  @override
  String get updateInstalling => 'Obrint la instal·lació…';

  @override
  String get updateFailed => 'No s\'ha pogut actualitzar — prova-ho més tard';

  @override
  String get updateLater => 'Més tard';

  @override
  String get updateRetry => 'Torna-ho a provar';

  @override
  String get updateNow => 'Actualitza';

  @override
  String get spatialToggleTitle => 'Àudio espacial 360°';

  @override
  String get spatialOn => 'Activat';

  @override
  String get spatialOff => 'Desactivat';

  @override
  String get lyricsNoFound => 'No s\'ha trobat la lletra';

  @override
  String get lyricsJustListening => 'Aquesta és només per escoltar';

  @override
  String get lyricsTrySource => 'Prova una altra font';

  @override
  String get lyricsSource => 'Font de les lletres';

  @override
  String get lyricsWordSynced => 'Sincronitzada per paraules';

  @override
  String get lyricsLineSynced => 'Sincronitzada per línies';

  @override
  String get lyricsUnsynced => 'No sincronitzada';

  @override
  String get plNoPlaylists => 'Encara no hi ha llistes — crea\'n una primer!';

  @override
  String get plAddToPlaylist => 'Afegeix a la llista';

  @override
  String plAddedTo(String name) {
    return 'Afegida a $name';
  }

  @override
  String get shareLyrics => 'Comparteix les lletres';

  @override
  String get shareMaxLines => 'Nombre màxim de línies seleccionat';

  @override
  String sharePickLines(int count) {
    return 'Tria fins a $count línies';
  }

  @override
  String get sharePickHint => 'Tria unes quantes línies a sota…';

  @override
  String get shareButton => 'Comparteix';

  @override
  String get batTitle => 'Deixa que la música segueixi sonant 🎵';

  @override
  String get batBody =>
      'L\'optimització de bateria d\'Android pot pausar la música quan la pantalla està apagada. Permet que Hana360 funcioni sense restriccions perquè la reproducció es mantingui estable.\n\nPots canviar-ho en qualsevol moment a Tu → \"Continua reproduint en segon pla\".';

  @override
  String get batNotNow => 'Ara no';

  @override
  String get batAllow => 'Permet';

  @override
  String get algoSwitch => 'Algoritme';

  @override
  String get speakerDistance => 'Distància dels altaveus';

  @override
  String get channelTrim => 'Retall de canal';

  @override
  String get masterGain => 'Guany principal';

  @override
  String get secHrtf => 'Personalització HRTF';

  @override
  String get outputGain => 'Guany de sortida';

  @override
  String get secEq => 'EQ espacial';

  @override
  String get secReverb => 'Reverberació';

  @override
  String get roomSize => 'Sala';

  @override
  String get reverbGain => 'Guany de reverberació';

  @override
  String get secTracking => 'Seguiment del cap';

  @override
  String get trackOff => 'Desactivat';

  @override
  String get trackSensor => 'Sensor del telèfon';

  @override
  String get trackManual => 'XY manual';

  @override
  String get dragHint =>
      'Arrossega per ajustar l\'orientació del cap (el camp sonor segueix)';

  @override
  String get customEq => 'Personalitzat';

  @override
  String get eqPresetMusic => 'Música';

  @override
  String get eqPresetCinema => 'Cinema';

  @override
  String get eqPresetGame => 'Joc';

  @override
  String get eqPresetVoice => 'Veu';

  @override
  String get hrtfGroup0 => 'Home / Petita / Petita';

  @override
  String get hrtfGroup1 => 'Home / Petita / Mitjana';

  @override
  String get hrtfGroup2 => 'Home / Petita / Gran';

  @override
  String get hrtfGroup3 => 'Home / Mitjana / Petita';

  @override
  String get hrtfGroup4 => 'Home / Mitjana / Mitjana';

  @override
  String get hrtfGroup5 => 'Home / Mitjana / Gran';

  @override
  String get hrtfGroup6 => 'Home / Gran / Petita';

  @override
  String get hrtfGroup7 => 'Home / Gran / Mitjana';

  @override
  String get hrtfGroup8 => 'Home / Gran / Gran';

  @override
  String get hrtfGroup9 => 'Dona / Petita / Petita';

  @override
  String get hrtfGroup10 => 'Dona / Petita / Mitjana';

  @override
  String get hrtfGroup11 => 'Dona / Petita / Gran';

  @override
  String get hrtfGroup12 => 'Dona / Mitjana / Petita';

  @override
  String get hrtfGroup13 => 'Dona / Mitjana / Mitjana';

  @override
  String get hrtfGroup14 => 'Dona / Mitjana / Gran';

  @override
  String get navHome => 'Inici';

  @override
  String get navLibrary => 'Biblioteca';

  @override
  String get navPlaying => 'Reproducció';

  @override
  String get navYou => 'Tu';

  @override
  String get tabSongs => 'Cançons';

  @override
  String get tabAlbums => 'Àlbums';

  @override
  String get tabFolders => 'Carpetes';

  @override
  String get tabPlaylists => 'Llistes';

  @override
  String get youMood => 'ESTAT D\'ÀNIM';

  @override
  String get youCompanion => 'EL TEU COMPANY';

  @override
  String get youBuddies => 'AMICS';

  @override
  String get youSound => 'SO';

  @override
  String get youMore => 'MÉS';

  @override
  String get themeCherryBlossom => 'Flor de cirerer';

  @override
  String get themeStarryNight => 'Nit estrellada';

  @override
  String get themeAdaptiveLight => 'Clar adaptatiu';

  @override
  String get themeAdaptiveDark => 'Fosc adaptatiu';

  @override
  String youListenedTogether(int h, int m) {
    return '$h h $m min escoltats junts';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'Capçalera i S\'està reproduint';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'Es posa sobre el títol de la biblioteca';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'Dormisqueja al mini reproductor';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'Camina sobre les cançons que t\'agraden';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'Brillen en els temes foscos';

  @override
  String get accBow => 'Llaç rosa';

  @override
  String get accHeadphones => 'Auriculars petits';

  @override
  String get accFlower => 'Flor';

  @override
  String get accCrown => 'Corona petita';

  @override
  String accUnlockLabel(int h) {
    return 'Escolta durant $h hores';
  }

  @override
  String get youCrossfade => 'Fosa encreuada';

  @override
  String get youCrossfadeSub => 'Fon el final d\'una cançó amb la següent';

  @override
  String get youSmartShuffle => 'Reproducció aleatòria intel·ligent';

  @override
  String get youSmartShuffleSub =>
      'L\'aleatori s\'inclina cap als teus favorits — calculat en aquest dispositiu';

  @override
  String get libLikedSongs => 'Cançons que t\'agraden';

  @override
  String get libTapHeart => 'Toca el cor d\'una cançó per guardar-la aquí';

  @override
  String get libRemovedFromQueue => 'Eliminada de la cua';

  @override
  String get libRemovedFromLibrary => 'Eliminada de la biblioteca';

  @override
  String get libRemoveFromLibrary => 'Elimina de la biblioteca';

  @override
  String get libNewPlaylist => 'Nova llista';

  @override
  String get libPlaylistName => 'Nom de la llista';

  @override
  String get libCreate => 'Crea';

  @override
  String get libSwipeHint =>
      'llisca a l\'esquerra per eliminar · mantén premut per reordenar';

  @override
  String get libChooseCover => 'Tria la imatge de portada';

  @override
  String get libBackToArtCover => 'Torna a la portada de la cançó';

  @override
  String libDeleteConfirm(String name) {
    return 'Suprimeixes \"$name\"?';
  }

  @override
  String get libDeleteKeepSongs =>
      'Les cançons mateixes romanen al teu dispositiu';

  @override
  String get libKeep => 'Conserva';

  @override
  String get libDelete => 'Suprimeix';

  @override
  String get libRemoveKeepFile => 'El fitxer mateix roman al teu dispositiu';

  @override
  String get libClearConfirm => 'Vols eliminar tots els fitxers?';

  @override
  String get libLibraryCleared => 'Biblioteca buidada';

  @override
  String get libPickAudioFiles => 'Tria fitxers d\'àudio…';

  @override
  String get libImportFolder => 'Importa una carpeta';

  @override
  String get libScanWholeFolder => 'Escaneja tota una carpeta… (recomanat)';

  @override
  String libImportFailed(String error) {
    return 'La importació ha fallat: $error';
  }

  @override
  String get libNoAudioFound => 'No s\'han trobat fitxers d\'àudio';

  @override
  String libImportedCount(int count) {
    return 'Importades $count cançons';
  }

  @override
  String get libNothingHere =>
      'Encara no hi ha res aquí — llisca a l\'esquerra per eliminar, mantén premut per reordenar';

  @override
  String get sidebarYourLibrary => 'LA TEVA BIBLIOTECA';

  @override
  String get sidebarPlaylists => 'LLISTES';

  @override
  String get sidebarFolders => 'CARPETES';

  @override
  String get rowQueue => 'Cua';

  @override
  String get rowRemove => 'Elimina';

  @override
  String get rowPlaylist => 'Llista';

  @override
  String plTrackCount(int count) {
    return '$count pistes';
  }

  @override
  String get lyricsSourceAuto => 'Auto';

  @override
  String get lyricsSourceEmbedded => 'Incrustades';

  @override
  String get lyricsSourceBestQuality => 'Millor qualitat disponible';

  @override
  String get lyricsSourceFileTags => 'De les etiquetes del fitxer d\'àudio';

  @override
  String get lyricsSourceWordOnline => 'Sincronitzada per paraules (en línia)';

  @override
  String get lyricsSourceLineOnline => 'Sincronitzada per línies (en línia)';

  @override
  String get lyricsSourceNotFound => 'No trobada per a aquesta cançó';

  @override
  String get npCatModeUnlocked => 'Miau?! Mode gat desbloquejat 🐱';

  @override
  String get shellResumePlayback => 'Reprèn la reproducció';

  @override
  String get shellPlay => 'REPRODUEIX';

  @override
  String get devSection => 'DESENVOLUPADOR';

  @override
  String get devModeUnlocked => '🛠️ Mode desenvolupador desbloquejat';

  @override
  String get devUnlockAll => 'Desbloqueja tots els accessoris';

  @override
  String get devClearLyricsCache => 'Buida la memòria cau de lletres';

  @override
  String get devRefetchLyrics => 'Torna a obtenir totes les lletres…';

  @override
  String get devLyricsCleared => 'Memòria cau de lletres buidada';

  @override
  String get devHideOptions => 'Amaga les opcions de desenvolupador';

  @override
  String get devModeOff => 'Mode desenvolupador desactivat';

  @override
  String get youCantReadFolders =>
      'No s\'han pogut llegir les teves carpetes de música';

  @override
  String get youNoMusicFolders => 'No s\'han trobat carpetes de música';
}
