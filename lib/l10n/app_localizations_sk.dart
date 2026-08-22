// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class AppLocalizationsSk extends AppLocalizations {
  AppLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'Jazyk';

  @override
  String get languageFollowSystem => 'Sledovať systém';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Hana360';

  @override
  String get commonCancel => 'Zrušiť';

  @override
  String get commonConfirm => 'OK';

  @override
  String get commonBack => 'Späť';

  @override
  String get commonDone => 'Hotovo';

  @override
  String get commonUnknown => 'Neznámy';

  @override
  String get secUpmix => 'Upmix motor';

  @override
  String get spatialAudioTitle => '360° priestorový zvuk';

  @override
  String get npNothingPlaying => 'Zatiaľ nič nehrá';

  @override
  String get npPickSong => 'Vyberte skladbu zo svojej knižnice';

  @override
  String get npSpatialSettings => 'Nastavenia 360°';

  @override
  String get npLyrics => 'Texty';

  @override
  String get libSearchHint => 'Hľadať vo vašej hudbe…';

  @override
  String get libClearLibrary => 'Vyčistiť knižnicu';

  @override
  String get libImportMusic => 'Importovať hudbu';

  @override
  String libError(String error) {
    return 'Niečo sa pokazilo: $error';
  }

  @override
  String libNoMatch(String query) {
    return 'Nič nezodpovedá \"$query\"';
  }

  @override
  String get libPermissionDenied =>
      'Hana360 potrebuje povolenie na nájdenie vašej hudby\nŽiadny prístup na tomto zariadení? Importujte namiesto toho.';

  @override
  String get libNoSongs =>
      'Na tomto zariadení sa nenašli žiadne skladby\nImportujte hudbu zo svojich súborov a začnite';

  @override
  String get libGrantAccess => 'Udeliť prístup';

  @override
  String get libRescan => 'Znovu skenovať';

  @override
  String get libAddedToQueue => 'Pridané do fronty';

  @override
  String get libNoAlbums => 'Zatiaľ žiadne albumy';

  @override
  String get libNoFolders => 'Zatiaľ žiadne priečinky';

  @override
  String get libNoPlaylists => 'Zatiaľ žiadne zoznamy skladieb';

  @override
  String libPlaylistCreated(String name) {
    return 'Zoznam skladieb \"$name\" vytvorený 🌸';
  }

  @override
  String get libFolderHint =>
      'podržte priečinok a premení sa na zoznam skladieb';

  @override
  String libSongCount(int count) {
    return '$count skladieb';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count skladieb · $path';
  }

  @override
  String get homeGreetingLate => 'Dlho hore ♪';

  @override
  String get homeGreetingMorning => 'Dobré ráno ♪';

  @override
  String get homeGreetingAfternoon => 'Dobré popoludnie ♪';

  @override
  String get homeGreetingEvening => 'Dobrý večer ♪';

  @override
  String get homeJumpBackIn => 'POKRAČOVAŤ';

  @override
  String get homeForYou => 'PRE VÁS';

  @override
  String get homeForYouSub => 'vybrané na tomto zariadení z vášho počúvania';

  @override
  String get homeWelcome => 'Vitajte v Hana360 🌸';

  @override
  String get homeAllQuiet => 'Všetko ticho 🌸';

  @override
  String get homeLibraryHint =>
      'Vaša hudba žije na karte Knižnica — pridajte tam priečinky. Všetko, čo hráte, sa zhromažďuje tu.';

  @override
  String get homePlayHint => 'Prehrajte niečo a nabudúce to tu na vás počká.';

  @override
  String get youRescanLibrary => 'Znovu skenovať knižnicu';

  @override
  String get youExcludedFolders => 'Vylúčené priečinky';

  @override
  String get youExcludedFoldersSub => 'Skryť priečinky z knižnice';

  @override
  String get youCatMode => 'Mačací režim';

  @override
  String get youAbout => 'O aplikácii';

  @override
  String get youScanning => 'Skenovanie vašej hudby…';

  @override
  String get youOpenSource => 'Open Source';

  @override
  String get youOpenSourceSub =>
      'Hana360 je odvodenina Hanamimi (GPLv3) od ShaptakNaskar — upravené 2026-08-10';

  @override
  String get youCheckUpdates => 'Skontrolovať aktualizácie';

  @override
  String get youCheckUpdatesSub => 'Nové verzie vychádzajú na GitHub Releases';

  @override
  String get youUpToDate => 'Máte aktuálnu verziu 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Vytvoril Sappy';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'Prehrávať na pozadí';

  @override
  String get youKeepPlayingAllowed =>
      'Povolené — systém vašu hudbu nepozastaví';

  @override
  String get youKeepPlayingTap =>
      'Klepnite, aby systém nezastavoval prehrávanie';

  @override
  String get youExcludedFoldersTitle => 'Vylúčené priečinky';

  @override
  String get youExcludedFoldersDesc =>
      'Skladby vo vypnutých priečinkoch sú z knižnice vynechané';

  @override
  String get youVisSensitivity => 'Citlivosť vizualizéra';

  @override
  String get youVisSensitivitySub =>
      'Zvýšte pri skladbách, ktoré ním sotva pohnú';

  @override
  String get youNerdMode => 'Nerd režim';

  @override
  String get youNerdModeSub =>
      'Zobraziť kodek, bitrate a zvukový výstup na Práve hrá';

  @override
  String get youEqualizer => 'Ekvalizér';

  @override
  String get youComingSoon => 'Už čoskoro';

  @override
  String get sleepTimer => 'Časovač uspania';

  @override
  String get sleep15 => '15 minút';

  @override
  String get sleep30 => '30 minút';

  @override
  String get sleep1h => '1 hodina';

  @override
  String get sleepEndTrack => 'Koniec skladby';

  @override
  String get sleepFading => 'Stišovanie… sladké sny';

  @override
  String sleepIn(String time) {
    return 'Uspanie za $time';
  }

  @override
  String get sleepEndTrackActive => 'Uspanie po skončení tejto skladby';

  @override
  String get sleepCancel => 'Zrušiť časovač';

  @override
  String get queueUpNext => 'Ďalej';

  @override
  String get queueEmpty => 'Fronta je prázdna';

  @override
  String get updateAvailable => 'Dostupná aktualizácia ✨';

  @override
  String get updateNoNotes => 'Žiadne poznámky k vydaniu.';

  @override
  String get updateInstalling => 'Otváranie inštalácie…';

  @override
  String get updateFailed => 'Aktualizácia zlyhala — skúste to neskôr';

  @override
  String get updateLater => 'Neskôr';

  @override
  String get updateRetry => 'Skúsiť znova';

  @override
  String get updateNow => 'Aktualizovať';

  @override
  String get spatialToggleTitle => '360° priestorový zvuk';

  @override
  String get spatialOn => 'Zapnuté';

  @override
  String get spatialOff => 'Vypnuté';

  @override
  String get lyricsNoFound => 'Text nenájdený';

  @override
  String get lyricsJustListening => 'Táto je len na počúvanie';

  @override
  String get lyricsTrySource => 'Skúste iný zdroj';

  @override
  String get lyricsSource => 'Zdroj textov';

  @override
  String get lyricsWordSynced => 'Synchronizované po slovách';

  @override
  String get lyricsLineSynced => 'Synchronizované po riadkoch';

  @override
  String get lyricsUnsynced => 'Nesynchronizované';

  @override
  String get plNoPlaylists => 'Zatiaľ žiadne zoznamy — najprv vytvorte jeden!';

  @override
  String get plAddToPlaylist => 'Pridať do zoznamu';

  @override
  String plAddedTo(String name) {
    return 'Pridané do $name';
  }

  @override
  String get shareLyrics => 'Zdieľať texty';

  @override
  String get shareMaxLines => 'Vybratý maximálny počet riadkov';

  @override
  String sharePickLines(int count) {
    return 'Vyberte až $count riadkov';
  }

  @override
  String get sharePickHint => 'Vyberte niektoré riadky nižšie…';

  @override
  String get shareButton => 'Zdieľať';

  @override
  String get batTitle => 'Nechať hudbu hrať 🎵';

  @override
  String get batBody =>
      'Optimalizácia batérie Androidu môže pozastaviť hudbu, keď je obrazovka vypnutá. Povoľte Hana360 bežať bez obmedzení, aby prehrávanie zostalo stabilné.\n\nMôžete to kedykoľvek zmeniť v Vy → \"Prehrávať na pozadí\".';

  @override
  String get batNotNow => 'Teraz nie';

  @override
  String get batAllow => 'Povoliť';

  @override
  String get algoSwitch => 'Algoritmus';

  @override
  String get speakerDistance => 'Vzdialenosť reproduktorov';

  @override
  String get channelTrim => 'Trim kanálov';

  @override
  String get masterGain => 'Hlavné zosilnenie';

  @override
  String get secHrtf => 'Personalizácia HRTF';

  @override
  String get outputGain => 'Výstupné zosilnenie';

  @override
  String get secEq => 'Priestorový EQ';

  @override
  String get secReverb => 'Dozvuk';

  @override
  String get roomSize => 'Miestnosť';

  @override
  String get reverbGain => 'Zosilnenie dozvuku';

  @override
  String get secTracking => 'Sledovanie hlavy';

  @override
  String get trackOff => 'Vypnuté';

  @override
  String get trackSensor => 'Senzor telefónu';

  @override
  String get trackManual => 'Manuálne XY';

  @override
  String get dragHint =>
      'Ťahaním upravte orientáciu hlavy (zvukové pole ju sleduje)';

  @override
  String get customEq => 'Vlastné';

  @override
  String get eqPresetMusic => 'Hudba';

  @override
  String get eqPresetCinema => 'Kino';

  @override
  String get eqPresetGame => 'Hra';

  @override
  String get eqPresetVoice => 'Hlas';

  @override
  String get hrtfGroup0 => 'Muž / Malá / Malá';

  @override
  String get hrtfGroup1 => 'Muž / Malá / Stredná';

  @override
  String get hrtfGroup2 => 'Muž / Malá / Veľká';

  @override
  String get hrtfGroup3 => 'Muž / Stredná / Malá';

  @override
  String get hrtfGroup4 => 'Muž / Stredná / Stredná';

  @override
  String get hrtfGroup5 => 'Muž / Stredná / Veľká';

  @override
  String get hrtfGroup6 => 'Muž / Veľká / Malá';

  @override
  String get hrtfGroup7 => 'Muž / Veľká / Stredná';

  @override
  String get hrtfGroup8 => 'Muž / Veľká / Veľká';

  @override
  String get hrtfGroup9 => 'Žena / Malá / Malá';

  @override
  String get hrtfGroup10 => 'Žena / Malá / Stredná';

  @override
  String get hrtfGroup11 => 'Žena / Malá / Veľká';

  @override
  String get hrtfGroup12 => 'Žena / Stredná / Malá';

  @override
  String get hrtfGroup13 => 'Žena / Stredná / Stredná';

  @override
  String get hrtfGroup14 => 'Žena / Stredná / Veľká';

  @override
  String get navHome => 'Domov';

  @override
  String get navLibrary => 'Knižnica';

  @override
  String get navPlaying => 'Prehrávanie';

  @override
  String get navYou => 'Vy';

  @override
  String get tabSongs => 'Skladby';

  @override
  String get tabAlbums => 'Albumy';

  @override
  String get tabFolders => 'Priečinky';

  @override
  String get tabPlaylists => 'Zoznamy';

  @override
  String get youMood => 'NÁLADA';

  @override
  String get youCompanion => 'VÁŠ SPOLOČNÍK';

  @override
  String get youBuddies => 'KAMARÁTI';

  @override
  String get youSound => 'ZVUK';

  @override
  String get youMore => 'VIAC';

  @override
  String get themeCherryBlossom => 'Čerešňový kvet';

  @override
  String get themeStarryNight => 'Hviezdna noc';

  @override
  String get themeAdaptiveLight => 'Adaptívne svetlé';

  @override
  String get themeAdaptiveDark => 'Adaptívne tmavé';

  @override
  String youListenedTogether(int h, int m) {
    return '$h h $m min spoločného počúvania';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'Hlavička a Práve hrá';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'Sedí na názve knižnice';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'Drieme na mini prehrávači';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'Kráča nad obľúbenými skladbami';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'Svietia na tmavých motívoch';

  @override
  String get accBow => 'Ružová mašľa';

  @override
  String get accHeadphones => 'Malé slúchadlá';

  @override
  String get accFlower => 'Kvet';

  @override
  String get accCrown => 'Malá korunka';

  @override
  String accUnlockLabel(int h) {
    return 'Počúvajte $h hodín';
  }

  @override
  String get youCrossfade => 'Crossfade';

  @override
  String get youCrossfadeSub => 'Plynulo prepojiť koniec skladby s ďalšou';

  @override
  String get youSmartShuffle => 'Inteligentné miešanie';

  @override
  String get youSmartShuffleSub =>
      'Miešanie sa prikláňa k vašim obľúbeným — počítané na tomto zariadení';

  @override
  String get libLikedSongs => 'Obľúbené skladby';

  @override
  String get libTapHeart => 'Klepnite na srdce pri skladbe, aby tu zostala';

  @override
  String get libRemovedFromQueue => 'Odstránené z fronty';

  @override
  String get libRemovedFromLibrary => 'Odstránené z knižnice';

  @override
  String get libRemoveFromLibrary => 'Odstrániť z knižnice';

  @override
  String get libNewPlaylist => 'Nový zoznam';

  @override
  String get libPlaylistName => 'Názov zoznamu';

  @override
  String get libCreate => 'Vytvoriť';

  @override
  String get libSwipeHint =>
      'potiahnutím doľava odstránite · podržaním preusporiadate';

  @override
  String get libChooseCover => 'Vybrať obrázok obalu';

  @override
  String get libBackToArtCover => 'Späť k obalu skladby';

  @override
  String libDeleteConfirm(String name) {
    return 'Odstrániť \"$name\"?';
  }

  @override
  String get libDeleteKeepSongs => 'Samotné skladby zostanú na vašom zariadení';

  @override
  String get libKeep => 'Ponechať';

  @override
  String get libDelete => 'Odstrániť';

  @override
  String get libRemoveKeepFile => 'Samotný súbor zostane na vašom zariadení';

  @override
  String get libClearConfirm => 'Odstrániť všetky súbory?';

  @override
  String get libLibraryCleared => 'Knižnica vyčistená';

  @override
  String get libPickAudioFiles => 'Vybrať zvukové súbory…';

  @override
  String get libImportFolder => 'Importovať priečinok';

  @override
  String get libScanWholeFolder => 'Skenovať celý priečinok… (odporúčané)';

  @override
  String libImportFailed(String error) {
    return 'Import zlyhal: $error';
  }

  @override
  String get libNoAudioFound => 'Nenašli sa žiadne zvukové súbory';

  @override
  String libImportedCount(int count) {
    return 'Importovaných $count skladieb';
  }

  @override
  String get libNothingHere =>
      'Zatiaľ tu nič nie je — potiahnutím doľava odstránite, podržaním preusporiadate';

  @override
  String get sidebarYourLibrary => 'VAŠA KNIŽNICA';

  @override
  String get sidebarPlaylists => 'ZOZNAMY SKLADIEB';

  @override
  String get sidebarFolders => 'PRIEČINKY';

  @override
  String get rowQueue => 'Fronta';

  @override
  String get rowRemove => 'Odstrániť';

  @override
  String get rowPlaylist => 'Zoznam';

  @override
  String plTrackCount(int count) {
    return '$count stôp';
  }

  @override
  String get lyricsSourceAuto => 'Auto';

  @override
  String get lyricsSourceEmbedded => 'Vložené';

  @override
  String get lyricsSourceBestQuality => 'Najlepšia dostupná kvalita';

  @override
  String get lyricsSourceFileTags => 'Z vlastných tagov zvukového súboru';

  @override
  String get lyricsSourceWordOnline => 'Synchronizované po slovách (online)';

  @override
  String get lyricsSourceLineOnline => 'Synchronizované po riadkoch (online)';

  @override
  String get lyricsSourceNotFound => 'Pre túto skladbu nenájdené';

  @override
  String get npCatModeUnlocked => 'Mňau?! Mačací režim odomknutý 🐱';

  @override
  String get shellResumePlayback => 'Obnoviť prehrávanie';

  @override
  String get shellPlay => 'PREHRAŤ';

  @override
  String get devSection => 'VÝVOJÁR';

  @override
  String get devModeUnlocked => '🛠️ Vývojársky režim odomknutý';

  @override
  String get devUnlockAll => 'Odomknúť všetky doplnky';

  @override
  String get devClearLyricsCache => 'Vymazať vyrovnávaciu pamäť textov';

  @override
  String get devRefetchLyrics => 'Znova načítať všetky texty…';

  @override
  String get devLyricsCleared => 'Vyrovnávacia pamäť textov vymazaná';

  @override
  String get devHideOptions => 'Skryť možnosti vývojára';

  @override
  String get devModeOff => 'Vývojársky režim vypnutý';

  @override
  String get youCantReadFolders =>
      'Nepodarilo sa prečítať vaše hudobné priečinky';

  @override
  String get youNoMusicFolders => 'Nenašli sa žiadne hudobné priečinky';
}
