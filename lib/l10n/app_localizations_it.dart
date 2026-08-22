// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'Lingua';

  @override
  String get languageFollowSystem => 'Segui il sistema';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Hana360';

  @override
  String get commonCancel => 'Annulla';

  @override
  String get commonConfirm => 'OK';

  @override
  String get commonBack => 'Indietro';

  @override
  String get commonDone => 'Fatto';

  @override
  String get commonUnknown => 'Sconosciuto';

  @override
  String get secUpmix => 'Motore di upmix';

  @override
  String get spatialAudioTitle => 'Audio spaziale 360°';

  @override
  String get npNothingPlaying => 'Niente in riproduzione';

  @override
  String get npPickSong => 'Scegli una canzone dalla tua libreria';

  @override
  String get npSpatialSettings => 'Impostazioni 360°';

  @override
  String get npLyrics => 'Testi';

  @override
  String get libSearchHint => 'Cerca nella tua musica…';

  @override
  String get libClearLibrary => 'Svuota libreria';

  @override
  String get libImportMusic => 'Importa musica';

  @override
  String libError(String error) {
    return 'Qualcosa è andato storto: $error';
  }

  @override
  String libNoMatch(String query) {
    return 'Nessun risultato per \"$query\"';
  }

  @override
  String get libPermissionDenied =>
      'Hana360 ha bisogno del permesso per trovare la tua musica\nNessun accesso su questo dispositivo? Importa invece.';

  @override
  String get libNoSongs =>
      'Nessuna canzone trovata su questo dispositivo\nImporta musica dai tuoi file per iniziare';

  @override
  String get libGrantAccess => 'Concedi accesso';

  @override
  String get libRescan => 'Riscansiona';

  @override
  String get libAddedToQueue => 'Aggiunta alla coda';

  @override
  String get libNoAlbums => 'Nessun album ancora';

  @override
  String get libNoFolders => 'Nessuna cartella ancora';

  @override
  String get libNoPlaylists => 'Nessuna playlist ancora';

  @override
  String libPlaylistCreated(String name) {
    return 'Playlist \"$name\" creata 🌸';
  }

  @override
  String get libFolderHint =>
      'tieni premuta una cartella per trasformarla in playlist';

  @override
  String libSongCount(int count) {
    return '$count brani';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count brani · $path';
  }

  @override
  String get homeGreetingLate => 'Sveglio fino a tardi ♪';

  @override
  String get homeGreetingMorning => 'Buongiorno ♪';

  @override
  String get homeGreetingAfternoon => 'Buon pomeriggio ♪';

  @override
  String get homeGreetingEvening => 'Buonasera ♪';

  @override
  String get homeJumpBackIn => 'RIPRENDI';

  @override
  String get homeForYou => 'PER TE';

  @override
  String get homeForYouSub => 'scelto su questo dispositivo, dai tuoi ascolti';

  @override
  String get homeWelcome => 'Benvenuto su Hana360 🌸';

  @override
  String get homeAllQuiet => 'Tutto tranquillo 🌸';

  @override
  String get homeLibraryHint =>
      'La tua musica vive nella scheda Libreria — aggiungi cartelle lì. Tutto ciò che ascolti si raccoglie qui.';

  @override
  String get homePlayHint =>
      'Riproduci qualcosa e ti aspetterà qui la prossima volta.';

  @override
  String get youRescanLibrary => 'Riscansiona libreria';

  @override
  String get youExcludedFolders => 'Cartelle escluse';

  @override
  String get youExcludedFoldersSub => 'Nascondi cartelle dalla libreria';

  @override
  String get youCatMode => 'Modalità gatto';

  @override
  String get youAbout => 'Info';

  @override
  String get youScanning => 'Scansione della tua musica…';

  @override
  String get youOpenSource => 'Open Source';

  @override
  String get youOpenSourceSub =>
      'Hana360 è un derivato di Hanamimi (GPLv3) di ShaptakNaskar — modificato il 2026-08-10';

  @override
  String get youCheckUpdates => 'Controlla aggiornamenti';

  @override
  String get youCheckUpdatesSub =>
      'Le nuove build arrivano sulle GitHub Releases';

  @override
  String get youUpToDate => 'Sei aggiornato 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Fatto da Sappy';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'Continua a riprodurre in background';

  @override
  String get youKeepPlayingAllowed =>
      'Consentito — il sistema non metterà in pausa la musica';

  @override
  String get youKeepPlayingTap =>
      'Tocca per impedire al sistema di interrompere la riproduzione';

  @override
  String get youExcludedFoldersTitle => 'Cartelle escluse';

  @override
  String get youExcludedFoldersDesc =>
      'I brani nelle cartelle disattivate sono esclusi dalla libreria';

  @override
  String get youVisSensitivity => 'Sensibilità visualizzatore';

  @override
  String get youVisSensitivitySub =>
      'Aumentala per i brani che lo muovono appena';

  @override
  String get youNerdMode => 'Modalità nerd';

  @override
  String get youNerdModeSub =>
      'Mostra codec, bitrate e uscita audio su In riproduzione';

  @override
  String get youEqualizer => 'Equalizzatore';

  @override
  String get youComingSoon => 'In arrivo';

  @override
  String get sleepTimer => 'Timer di spegnimento';

  @override
  String get sleep15 => '15 minuti';

  @override
  String get sleep30 => '30 minuti';

  @override
  String get sleep1h => '1 ora';

  @override
  String get sleepEndTrack => 'Fine del brano';

  @override
  String get sleepFading => 'Dissolvenza… sogni d\'oro';

  @override
  String sleepIn(String time) {
    return 'Spegnimento tra $time';
  }

  @override
  String get sleepEndTrackActive => 'Spegnimento alla fine di questo brano';

  @override
  String get sleepCancel => 'Annulla timer';

  @override
  String get queueUpNext => 'In coda';

  @override
  String get queueEmpty => 'La coda è vuota';

  @override
  String get updateAvailable => 'Aggiornamento disponibile ✨';

  @override
  String get updateNoNotes => 'Nessuna nota di rilascio.';

  @override
  String get updateInstalling => 'Apertura installazione…';

  @override
  String get updateFailed => 'Impossibile aggiornare — riprova più tardi';

  @override
  String get updateLater => 'Più tardi';

  @override
  String get updateRetry => 'Riprova';

  @override
  String get updateNow => 'Aggiorna';

  @override
  String get spatialToggleTitle => 'Audio spaziale 360°';

  @override
  String get spatialOn => 'On';

  @override
  String get spatialOff => 'Off';

  @override
  String get lyricsNoFound => 'Nessun testo trovato';

  @override
  String get lyricsJustListening => 'Questo è solo da ascoltare';

  @override
  String get lyricsTrySource => 'Prova un\'altra fonte';

  @override
  String get lyricsSource => 'Fonte dei testi';

  @override
  String get lyricsWordSynced => 'Sincronizzato a parole';

  @override
  String get lyricsLineSynced => 'Sincronizzato a righe';

  @override
  String get lyricsUnsynced => 'Non sincronizzato';

  @override
  String get plNoPlaylists => 'Nessuna playlist — creane una prima!';

  @override
  String get plAddToPlaylist => 'Aggiungi alla playlist';

  @override
  String plAddedTo(String name) {
    return 'Aggiunto a $name';
  }

  @override
  String get shareLyrics => 'Condividi testi';

  @override
  String get shareMaxLines => 'Numero massimo di righe selezionate';

  @override
  String sharePickLines(int count) {
    return 'Scegli fino a $count righe';
  }

  @override
  String get sharePickHint => 'Scegli alcune righe qui sotto…';

  @override
  String get shareButton => 'Condividi';

  @override
  String get batTitle => 'Continua a riprodurre la musica 🎵';

  @override
  String get batBody =>
      'L\'ottimizzazione della batteria di Android può mettere in pausa la musica quando lo schermo è spento. Consenti a Hana360 di funzionare senza restrizioni per una riproduzione stabile.\n\nPuoi cambiarlo in qualsiasi momento in Tu → \"Continua a riprodurre in background\".';

  @override
  String get batNotNow => 'Non ora';

  @override
  String get batAllow => 'Consenti';

  @override
  String get algoSwitch => 'Algoritmo';

  @override
  String get speakerDistance => 'Distanza altoparlanti';

  @override
  String get channelTrim => 'Regolazione canali';

  @override
  String get masterGain => 'Guadagno principale';

  @override
  String get secHrtf => 'Personalizzazione HRTF';

  @override
  String get outputGain => 'Guadagno uscita';

  @override
  String get secEq => 'EQ spaziale';

  @override
  String get secReverb => 'Riverbero';

  @override
  String get roomSize => 'Stanza';

  @override
  String get reverbGain => 'Guadagno riverbero';

  @override
  String get secTracking => 'Tracciamento testa';

  @override
  String get trackOff => 'Off';

  @override
  String get trackSensor => 'Sensore del telefono';

  @override
  String get trackManual => 'XY manuale';

  @override
  String get dragHint =>
      'Trascina per regolare l\'orientamento della testa (il campo sonoro segue)';

  @override
  String get customEq => 'Personalizzato';

  @override
  String get eqPresetMusic => 'Musica';

  @override
  String get eqPresetCinema => 'Cinema';

  @override
  String get eqPresetGame => 'Gioco';

  @override
  String get eqPresetVoice => 'Voce';

  @override
  String get hrtfGroup0 => 'Uomo / Piccola / Piccola';

  @override
  String get hrtfGroup1 => 'Uomo / Piccola / Media';

  @override
  String get hrtfGroup2 => 'Uomo / Piccola / Grande';

  @override
  String get hrtfGroup3 => 'Uomo / Media / Piccola';

  @override
  String get hrtfGroup4 => 'Uomo / Media / Media';

  @override
  String get hrtfGroup5 => 'Uomo / Media / Grande';

  @override
  String get hrtfGroup6 => 'Uomo / Grande / Piccola';

  @override
  String get hrtfGroup7 => 'Uomo / Grande / Media';

  @override
  String get hrtfGroup8 => 'Uomo / Grande / Grande';

  @override
  String get hrtfGroup9 => 'Donna / Piccola / Piccola';

  @override
  String get hrtfGroup10 => 'Donna / Piccola / Media';

  @override
  String get hrtfGroup11 => 'Donna / Piccola / Grande';

  @override
  String get hrtfGroup12 => 'Donna / Media / Piccola';

  @override
  String get hrtfGroup13 => 'Donna / Media / Media';

  @override
  String get hrtfGroup14 => 'Donna / Media / Grande';

  @override
  String get navHome => 'Home';

  @override
  String get navLibrary => 'Libreria';

  @override
  String get navPlaying => 'In riproduzione';

  @override
  String get navYou => 'Tu';

  @override
  String get tabSongs => 'Brani';

  @override
  String get tabAlbums => 'Album';

  @override
  String get tabFolders => 'Cartelle';

  @override
  String get tabPlaylists => 'Playlist';

  @override
  String get youMood => 'UMORE';

  @override
  String get youCompanion => 'IL TUO COMPAGNO';

  @override
  String get youBuddies => 'AMICI';

  @override
  String get youSound => 'SUONO';

  @override
  String get youMore => 'ALTRO';

  @override
  String get themeCherryBlossom => 'Fiori di ciliegio';

  @override
  String get themeStarryNight => 'Notte stellata';

  @override
  String get themeAdaptiveLight => 'Chiaro adattivo';

  @override
  String get themeAdaptiveDark => 'Scuro adattivo';

  @override
  String youListenedTogether(int h, int m) {
    return '${h}h ${m}m ascoltati insieme';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'Intestazione e In riproduzione';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'Si posa sul titolo della Libreria';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'Sonnecchia sul mini player';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'Passeggia sopra i brani piaciuti';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'Brillano sui temi scuri';

  @override
  String get accBow => 'Fiocco rosa';

  @override
  String get accHeadphones => 'Cuffiette';

  @override
  String get accFlower => 'Fiore';

  @override
  String get accCrown => 'Coroncina';

  @override
  String accUnlockLabel(int h) {
    return 'Ascolta per $h ore';
  }

  @override
  String get youCrossfade => 'Dissolvenza incrociata';

  @override
  String get youCrossfadeSub => 'Fondi la fine di un brano con il successivo';

  @override
  String get youSmartShuffle => 'Riproduzione casuale intelligente';

  @override
  String get youSmartShuffleSub =>
      'La casuale privilegia i tuoi preferiti — calcolata su questo dispositivo';

  @override
  String get libLikedSongs => 'Brani piaciuti';

  @override
  String get libTapHeart => 'Tocca il cuore su un brano per tenerlo qui';

  @override
  String get libRemovedFromQueue => 'Rimosso dalla coda';

  @override
  String get libRemovedFromLibrary => 'Rimosso dalla libreria';

  @override
  String get libRemoveFromLibrary => 'Rimuovi dalla libreria';

  @override
  String get libNewPlaylist => 'Nuova playlist';

  @override
  String get libPlaylistName => 'Nome playlist';

  @override
  String get libCreate => 'Crea';

  @override
  String get libSwipeHint =>
      'scorri a sinistra per rimuovere · tieni premuto per riordinare';

  @override
  String get libChooseCover => 'Scegli immagine di copertina';

  @override
  String get libBackToArtCover => 'Torna alla copertina del brano';

  @override
  String libDeleteConfirm(String name) {
    return 'Eliminare \"$name\"?';
  }

  @override
  String get libDeleteKeepSongs => 'I brani stessi restano sul tuo dispositivo';

  @override
  String get libKeep => 'Mantieni';

  @override
  String get libDelete => 'Elimina';

  @override
  String get libRemoveKeepFile => 'Il file stesso resta sul tuo dispositivo';

  @override
  String get libClearConfirm => 'Rimuovere tutti i file?';

  @override
  String get libLibraryCleared => 'Libreria svuotata';

  @override
  String get libPickAudioFiles => 'Scegli file audio…';

  @override
  String get libImportFolder => 'Importa una cartella';

  @override
  String get libScanWholeFolder =>
      'Scansiona un\'intera cartella… (consigliato)';

  @override
  String libImportFailed(String error) {
    return 'Importazione non riuscita: $error';
  }

  @override
  String get libNoAudioFound => 'Nessun file audio trovato';

  @override
  String libImportedCount(int count) {
    return 'Importati $count brani';
  }

  @override
  String get libNothingHere =>
      'Niente qui ancora — scorri a sinistra per rimuovere, tieni premuto per riordinare';

  @override
  String get sidebarYourLibrary => 'LA TUA LIBRERIA';

  @override
  String get sidebarPlaylists => 'PLAYLIST';

  @override
  String get sidebarFolders => 'CARTELLE';

  @override
  String get rowQueue => 'Coda';

  @override
  String get rowRemove => 'Rimuovi';

  @override
  String get rowPlaylist => 'Playlist';

  @override
  String plTrackCount(int count) {
    return '$count tracce';
  }

  @override
  String get lyricsSourceAuto => 'Auto';

  @override
  String get lyricsSourceEmbedded => 'Incorporati';

  @override
  String get lyricsSourceBestQuality => 'Migliore qualità disponibile';

  @override
  String get lyricsSourceFileTags => 'Dai tag del file audio';

  @override
  String get lyricsSourceWordOnline => 'Sincronizzati a parole (online)';

  @override
  String get lyricsSourceLineOnline => 'Sincronizzati a righe (online)';

  @override
  String get lyricsSourceNotFound => 'Non trovati per questo brano';

  @override
  String get npCatModeUnlocked => 'Miao?! Modalità gatto sbloccata 🐱';

  @override
  String get shellResumePlayback => 'Riprendi riproduzione';

  @override
  String get shellPlay => 'RIPRODUCI';

  @override
  String get devSection => 'SVILUPPATORE';

  @override
  String get devModeUnlocked => '🛠️ Modalità sviluppatore sbloccata';

  @override
  String get devUnlockAll => 'Sblocca tutti gli accessori';

  @override
  String get devClearLyricsCache => 'Svuota cache dei testi';

  @override
  String get devRefetchLyrics => 'Recupera di nuovo tutti i testi…';

  @override
  String get devLyricsCleared => 'Cache dei testi svuotata';

  @override
  String get devHideOptions => 'Nascondi opzioni sviluppatore';

  @override
  String get devModeOff => 'Modalità sviluppatore disattivata';

  @override
  String get youCantReadFolders =>
      'Impossibile leggere le tue cartelle musicali';

  @override
  String get youNoMusicFolders => 'Nessuna cartella musicale trovata';
}
