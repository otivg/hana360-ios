// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'Limbă';

  @override
  String get languageFollowSystem => 'Urmează sistemul';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Hana360';

  @override
  String get commonCancel => 'Anulează';

  @override
  String get commonConfirm => 'OK';

  @override
  String get commonBack => 'Înapoi';

  @override
  String get commonDone => 'Gata';

  @override
  String get commonUnknown => 'Necunoscut';

  @override
  String get secUpmix => 'Motor upmix';

  @override
  String get spatialAudioTitle => 'Sunet spațial 360°';

  @override
  String get npNothingPlaying => 'Nimic în redare încă';

  @override
  String get npPickSong => 'Alege o melodie din bibliotecă';

  @override
  String get npSpatialSettings => 'Setări 360°';

  @override
  String get npLyrics => 'Versuri';

  @override
  String get libSearchHint => 'Caută în muzica ta…';

  @override
  String get libClearLibrary => 'Golește biblioteca';

  @override
  String get libImportMusic => 'Importă muzică';

  @override
  String libError(String error) {
    return 'Ceva nu a funcționat: $error';
  }

  @override
  String libNoMatch(String query) {
    return 'Nimic nu se potrivește cu \"$query\"';
  }

  @override
  String get libPermissionDenied =>
      'Hana360 are nevoie de permisiune pentru a-ți găsi muzica\nFără acces pe acest dispozitiv? Importă în schimb.';

  @override
  String get libNoSongs =>
      'Nicio melodie găsită pe acest dispozitiv\nImportă muzică din fișierele tale pentru a începe';

  @override
  String get libGrantAccess => 'Acordă acces';

  @override
  String get libRescan => 'Rescanează';

  @override
  String get libAddedToQueue => 'Adăugată în coadă';

  @override
  String get libNoAlbums => 'Niciun album încă';

  @override
  String get libNoFolders => 'Niciun dosar încă';

  @override
  String get libNoPlaylists => 'Nicio listă de redare încă';

  @override
  String libPlaylistCreated(String name) {
    return 'Lista de redare \"$name\" creată 🌸';
  }

  @override
  String get libFolderHint =>
      'ține apăsat un dosar pentru a-l transforma în listă de redare';

  @override
  String libSongCount(int count) {
    return '$count melodii';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count melodii · $path';
  }

  @override
  String get homeGreetingLate => 'Trezit târziu ♪';

  @override
  String get homeGreetingMorning => 'Bună dimineața ♪';

  @override
  String get homeGreetingAfternoon => 'Bună ziua ♪';

  @override
  String get homeGreetingEvening => 'Bună seara ♪';

  @override
  String get homeJumpBackIn => 'RELUAȚI';

  @override
  String get homeForYou => 'PENTRU TINE';

  @override
  String get homeForYouSub => 'ales pe acest dispozitiv, din ascultările tale';

  @override
  String get homeWelcome => 'Bine ai venit în Hana360 🌸';

  @override
  String get homeAllQuiet => 'Totul liniștit 🌸';

  @override
  String get homeLibraryHint =>
      'Muzica ta trăiește în fila Bibliotecă — adaugă acolo dosare. Tot ce asculți se adună aici.';

  @override
  String get homePlayHint => 'Redă ceva și te va aștepta aici data viitoare.';

  @override
  String get youRescanLibrary => 'Rescanează biblioteca';

  @override
  String get youExcludedFolders => 'Dosare excluse';

  @override
  String get youExcludedFoldersSub => 'Ascunde dosarele din bibliotecă';

  @override
  String get youCatMode => 'Mod pisică';

  @override
  String get youAbout => 'Despre';

  @override
  String get youScanning => 'Se scanează muzica ta…';

  @override
  String get youOpenSource => 'Open Source';

  @override
  String get youOpenSourceSub =>
      'Hana360 este o derivată a Hanamimi (GPLv3) de ShaptakNaskar — modificat la 2026-08-10';

  @override
  String get youCheckUpdates => 'Verifică actualizări';

  @override
  String get youCheckUpdatesSub => 'Versiunile noi apar pe GitHub Releases';

  @override
  String get youUpToDate => 'Ești la zi 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Creat de Sappy';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'Continuă redarea în fundal';

  @override
  String get youKeepPlayingAllowed =>
      'Permis — sistemul nu îți pune muzica pe pauză';

  @override
  String get youKeepPlayingTap =>
      'Atinge pentru a opri sistemul să întrerupă redarea';

  @override
  String get youExcludedFoldersTitle => 'Dosare excluse';

  @override
  String get youExcludedFoldersDesc =>
      'Melodiile din dosarele dezactivate sunt excluse din bibliotecă';

  @override
  String get youVisSensitivity => 'Sensibilitate vizualizator';

  @override
  String get youVisSensitivitySub =>
      'Mărește pentru melodiile care abia îl mișcă';

  @override
  String get youNerdMode => 'Mod tocilar';

  @override
  String get youNerdModeSub =>
      'Afișează codec, bitrate și ieșire audio pe Redare acum';

  @override
  String get youEqualizer => 'Egalizator';

  @override
  String get youComingSoon => 'În curând';

  @override
  String get sleepTimer => 'Temporizator somn';

  @override
  String get sleep15 => '15 minute';

  @override
  String get sleep30 => '30 de minute';

  @override
  String get sleep1h => '1 oră';

  @override
  String get sleepEndTrack => 'Sfârșitul melodiei';

  @override
  String get sleepFading => 'Se estompează… vise plăcute';

  @override
  String sleepIn(String time) {
    return 'Adormire peste $time';
  }

  @override
  String get sleepEndTrackActive => 'Adormire când se termină această melodie';

  @override
  String get sleepCancel => 'Anulează temporizatorul';

  @override
  String get queueUpNext => 'Urmează';

  @override
  String get queueEmpty => 'Coada este goală';

  @override
  String get updateAvailable => 'Actualizare disponibilă ✨';

  @override
  String get updateNoNotes => 'Fără note de lansare.';

  @override
  String get updateInstalling => 'Se deschide instalarea…';

  @override
  String get updateFailed =>
      'Nu s-a putut actualiza — încearcă din nou mai târziu';

  @override
  String get updateLater => 'Mai târziu';

  @override
  String get updateRetry => 'Reîncearcă';

  @override
  String get updateNow => 'Actualizează';

  @override
  String get spatialToggleTitle => 'Sunet spațial 360°';

  @override
  String get spatialOn => 'Pornit';

  @override
  String get spatialOff => 'Oprit';

  @override
  String get lyricsNoFound => 'Nicio versiune găsită';

  @override
  String get lyricsJustListening => 'Aceasta este doar de ascultat';

  @override
  String get lyricsTrySource => 'Încearcă altă sursă';

  @override
  String get lyricsSource => 'Sursa versurilor';

  @override
  String get lyricsWordSynced => 'Sincronizat pe cuvinte';

  @override
  String get lyricsLineSynced => 'Sincronizat pe linii';

  @override
  String get lyricsUnsynced => 'Nesincronizat';

  @override
  String get plNoPlaylists =>
      'Nicio listă de redare încă — creează mai întâi una!';

  @override
  String get plAddToPlaylist => 'Adaugă în lista de redare';

  @override
  String plAddedTo(String name) {
    return 'Adăugată în $name';
  }

  @override
  String get shareLyrics => 'Distribuie versurile';

  @override
  String get shareMaxLines => 'Număr maxim de linii selectate';

  @override
  String sharePickLines(int count) {
    return 'Alege până la $count linii';
  }

  @override
  String get sharePickHint => 'Alege câteva linii mai jos…';

  @override
  String get shareButton => 'Distribuie';

  @override
  String get batTitle => 'Ține muzica în redare 🎵';

  @override
  String get batBody =>
      'Optimizarea bateriei Android poate pune muzica pe pauză când ecranul este oprit. Permite Hana360 să ruleze fără restricții pentru o redare stabilă.\n\nPoți schimba oricând acest lucru în Tu → \"Continuă redarea în fundal\".';

  @override
  String get batNotNow => 'Nu acum';

  @override
  String get batAllow => 'Permite';

  @override
  String get algoSwitch => 'Algoritm';

  @override
  String get speakerDistance => 'Distanța difuzoarelor';

  @override
  String get channelTrim => 'Tăiere canal';

  @override
  String get masterGain => 'Amplificare master';

  @override
  String get secHrtf => 'Personalizare HRTF';

  @override
  String get outputGain => 'Amplificare ieșire';

  @override
  String get secEq => 'EQ spațial';

  @override
  String get secReverb => 'Reverberație';

  @override
  String get roomSize => 'Cameră';

  @override
  String get reverbGain => 'Amplificare reverberație';

  @override
  String get secTracking => 'Urmărirea capului';

  @override
  String get trackOff => 'Oprit';

  @override
  String get trackSensor => 'Senzorul telefonului';

  @override
  String get trackManual => 'Manual XY';

  @override
  String get dragHint =>
      'Trage pentru a regla orientarea capului (câmpul sonor urmează)';

  @override
  String get customEq => 'Personalizat';

  @override
  String get eqPresetMusic => 'Muzică';

  @override
  String get eqPresetCinema => 'Cinema';

  @override
  String get eqPresetGame => 'Joc';

  @override
  String get eqPresetVoice => 'Voce';

  @override
  String get hrtfGroup0 => 'Bărbat / Mic / Mic';

  @override
  String get hrtfGroup1 => 'Bărbat / Mic / Mediu';

  @override
  String get hrtfGroup2 => 'Bărbat / Mic / Mare';

  @override
  String get hrtfGroup3 => 'Bărbat / Mediu / Mic';

  @override
  String get hrtfGroup4 => 'Bărbat / Mediu / Mediu';

  @override
  String get hrtfGroup5 => 'Bărbat / Mediu / Mare';

  @override
  String get hrtfGroup6 => 'Bărbat / Mare / Mic';

  @override
  String get hrtfGroup7 => 'Bărbat / Mare / Mediu';

  @override
  String get hrtfGroup8 => 'Bărbat / Mare / Mare';

  @override
  String get hrtfGroup9 => 'Femeie / Mic / Mic';

  @override
  String get hrtfGroup10 => 'Femeie / Mic / Mediu';

  @override
  String get hrtfGroup11 => 'Femeie / Mic / Mare';

  @override
  String get hrtfGroup12 => 'Femeie / Mediu / Mic';

  @override
  String get hrtfGroup13 => 'Femeie / Mediu / Mediu';

  @override
  String get hrtfGroup14 => 'Femeie / Mediu / Mare';

  @override
  String get navHome => 'Acasă';

  @override
  String get navLibrary => 'Bibliotecă';

  @override
  String get navPlaying => 'Redare';

  @override
  String get navYou => 'Tu';

  @override
  String get tabSongs => 'Melodii';

  @override
  String get tabAlbums => 'Albume';

  @override
  String get tabFolders => 'Dosare';

  @override
  String get tabPlaylists => 'Liste de redare';

  @override
  String get youMood => 'STARE';

  @override
  String get youCompanion => 'ÎNSOȚITORUL TĂU';

  @override
  String get youBuddies => 'AMICI';

  @override
  String get youSound => 'SUNET';

  @override
  String get youMore => 'MAI MULT';

  @override
  String get themeCherryBlossom => 'Floare de cireș';

  @override
  String get themeStarryNight => 'Noapte înstelată';

  @override
  String get themeAdaptiveLight => 'Luminos adaptiv';

  @override
  String get themeAdaptiveDark => 'Întunecat adaptiv';

  @override
  String youListenedTogether(int h, int m) {
    return '${h}h ${m}m ascultate împreună';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'Antet și Redare acum';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'Se așază pe titlul Bibliotecii';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'Trage un pui de somn pe mini-player';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'Se plimbă deasupra melodiilor apreciate';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'Strălucesc pe temele întunecate';

  @override
  String get accBow => 'Fundă roz';

  @override
  String get accHeadphones => 'Căști mici';

  @override
  String get accFlower => 'Floare';

  @override
  String get accCrown => 'Coroană mică';

  @override
  String accUnlockLabel(int h) {
    return 'Ascultă $h ore';
  }

  @override
  String get youCrossfade => 'Trecere lină';

  @override
  String get youCrossfadeSub => 'Îmbină sfârșitul unei melodii cu următoarea';

  @override
  String get youSmartShuffle => 'Amestecare inteligentă';

  @override
  String get youSmartShuffleSub =>
      'Amestecarea înclină spre favoritele tale — calculată pe acest dispozitiv';

  @override
  String get libLikedSongs => 'Melodii apreciate';

  @override
  String get libTapHeart =>
      'Atinge inima de pe o melodie pentru a o păstra aici';

  @override
  String get libRemovedFromQueue => 'Eliminată din coadă';

  @override
  String get libRemovedFromLibrary => 'Eliminată din bibliotecă';

  @override
  String get libRemoveFromLibrary => 'Elimină din bibliotecă';

  @override
  String get libNewPlaylist => 'Listă de redare nouă';

  @override
  String get libPlaylistName => 'Numele listei';

  @override
  String get libCreate => 'Creează';

  @override
  String get libSwipeHint =>
      'glisează la stânga pentru a elimina · ține apăsat pentru a reordona';

  @override
  String get libChooseCover => 'Alege imaginea de copertă';

  @override
  String get libBackToArtCover => 'Înapoi la coperta melodiei';

  @override
  String libDeleteConfirm(String name) {
    return 'Ștergi \"$name\"?';
  }

  @override
  String get libDeleteKeepSongs =>
      'Melodiile în sine rămân pe dispozitivul tău';

  @override
  String get libKeep => 'Păstrează';

  @override
  String get libDelete => 'Șterge';

  @override
  String get libRemoveKeepFile => 'Fișierul în sine rămâne pe dispozitivul tău';

  @override
  String get libClearConfirm => 'Elimini toate fișierele?';

  @override
  String get libLibraryCleared => 'Biblioteca a fost golită';

  @override
  String get libPickAudioFiles => 'Alege fișiere audio…';

  @override
  String get libImportFolder => 'Importă un dosar';

  @override
  String get libScanWholeFolder => 'Scanează un dosar întreg… (recomandat)';

  @override
  String libImportFailed(String error) {
    return 'Import eșuat: $error';
  }

  @override
  String get libNoAudioFound => 'Niciun fișier audio găsit';

  @override
  String libImportedCount(int count) {
    return 'Importate $count melodii';
  }

  @override
  String get libNothingHere =>
      'Nimic aici încă — glisează la stânga pentru a elimina, ține apăsat pentru a reordona';

  @override
  String get sidebarYourLibrary => 'BIBLIOTECA TA';

  @override
  String get sidebarPlaylists => 'LISTE DE REDARE';

  @override
  String get sidebarFolders => 'DOSARE';

  @override
  String get rowQueue => 'Coadă';

  @override
  String get rowRemove => 'Elimină';

  @override
  String get rowPlaylist => 'Listă de redare';

  @override
  String plTrackCount(int count) {
    return '$count piese';
  }

  @override
  String get lyricsSourceAuto => 'Auto';

  @override
  String get lyricsSourceEmbedded => 'Încorporate';

  @override
  String get lyricsSourceBestQuality => 'Cea mai bună calitate disponibilă';

  @override
  String get lyricsSourceFileTags =>
      'Din propriile etichete ale fișierului audio';

  @override
  String get lyricsSourceWordOnline => 'Sincronizat pe cuvinte (online)';

  @override
  String get lyricsSourceLineOnline => 'Sincronizat pe linii (online)';

  @override
  String get lyricsSourceNotFound => 'Nu s-au găsit pentru această melodie';

  @override
  String get npCatModeUnlocked => 'Miau?! Modul pisică deblocat 🐱';

  @override
  String get shellResumePlayback => 'Reluare redare';

  @override
  String get shellPlay => 'REDĂ';

  @override
  String get devSection => 'DEZVOLTATOR';

  @override
  String get devModeUnlocked => '🛠️ Modul dezvoltator deblocat';

  @override
  String get devUnlockAll => 'Deblochează toate accesoriile';

  @override
  String get devClearLyricsCache => 'Golește cache-ul versurilor';

  @override
  String get devRefetchLyrics => 'Reîncarcă toate versurile…';

  @override
  String get devLyricsCleared => 'Cache-ul versurilor golit';

  @override
  String get devHideOptions => 'Ascunde opțiunile dezvoltatorului';

  @override
  String get devModeOff => 'Modul dezvoltator oprit';

  @override
  String get youCantReadFolders => 'Nu s-au putut citi dosarele tale de muzică';

  @override
  String get youNoMusicFolders => 'Nu s-au găsit dosare de muzică';
}
