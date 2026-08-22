// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class AppLocalizationsCs extends AppLocalizations {
  AppLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'Jazyk';

  @override
  String get languageFollowSystem => 'Sledovat systém';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Hana360';

  @override
  String get commonCancel => 'Zrušit';

  @override
  String get commonConfirm => 'OK';

  @override
  String get commonBack => 'Zpět';

  @override
  String get commonDone => 'Hotovo';

  @override
  String get commonUnknown => 'Neznámý';

  @override
  String get secUpmix => 'Upmix motor';

  @override
  String get spatialAudioTitle => '360° prostorový zvuk';

  @override
  String get npNothingPlaying => 'Zatím nic nehraje';

  @override
  String get npPickSong => 'Vyberte skladbu ze své knihovny';

  @override
  String get npSpatialSettings => 'Nastavení 360°';

  @override
  String get npLyrics => 'Texty';

  @override
  String get libSearchHint => 'Hledat ve vaší hudbě…';

  @override
  String get libClearLibrary => 'Vyčistit knihovnu';

  @override
  String get libImportMusic => 'Importovat hudbu';

  @override
  String libError(String error) {
    return 'Něco se pokazilo: $error';
  }

  @override
  String libNoMatch(String query) {
    return 'Nic neodpovídá \"$query\"';
  }

  @override
  String get libPermissionDenied =>
      'Hana360 potřebuje oprávnění k nalezení vaší hudby\nŽádný přístup na tomto zařízení? Importujte místo toho.';

  @override
  String get libNoSongs =>
      'Na tomto zařízení nebyly nalezeny žádné skladby\nImportujte hudbu ze svých souborů a začněte';

  @override
  String get libGrantAccess => 'Udělit přístup';

  @override
  String get libRescan => 'Znovu skenovat';

  @override
  String get libAddedToQueue => 'Přidáno do fronty';

  @override
  String get libNoAlbums => 'Zatím žádná alba';

  @override
  String get libNoFolders => 'Zatím žádné složky';

  @override
  String get libNoPlaylists => 'Zatím žádné seznamy skladeb';

  @override
  String libPlaylistCreated(String name) {
    return 'Seznam skladeb \"$name\" vytvořen 🌸';
  }

  @override
  String get libFolderHint => 'podržte složku a promění se v seznam skladeb';

  @override
  String libSongCount(int count) {
    return '$count skladeb';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count skladeb · $path';
  }

  @override
  String get homeGreetingLate => 'Dlouho vzhůru ♪';

  @override
  String get homeGreetingMorning => 'Dobré ráno ♪';

  @override
  String get homeGreetingAfternoon => 'Dobré odpoledne ♪';

  @override
  String get homeGreetingEvening => 'Dobrý večer ♪';

  @override
  String get homeJumpBackIn => 'POKRAČOVAT';

  @override
  String get homeForYou => 'PRO VÁS';

  @override
  String get homeForYouSub => 'vybráno na tomto zařízení z vašeho poslechu';

  @override
  String get homeWelcome => 'Vítejte v Hana360 🌸';

  @override
  String get homeAllQuiet => 'Všude klid 🌸';

  @override
  String get homeLibraryHint =>
      'Vaše hudba žije na kartě Knihovna — přidejte tam složky. Vše, co hrajete, se shromažďuje zde.';

  @override
  String get homePlayHint =>
      'Něco si přehrajte a příště to zde na vás bude čekat.';

  @override
  String get youRescanLibrary => 'Znovu skenovat knihovnu';

  @override
  String get youExcludedFolders => 'Vyloučené složky';

  @override
  String get youExcludedFoldersSub => 'Skrýt složky z knihovny';

  @override
  String get youCatMode => 'Kočičí režim';

  @override
  String get youAbout => 'O aplikaci';

  @override
  String get youScanning => 'Skenování vaší hudby…';

  @override
  String get youOpenSource => 'Open Source';

  @override
  String get youOpenSourceSub =>
      'Hana360 je odvozenina Hanamimi (GPLv3) od ShaptakNaskar — upraveno 2026-08-10';

  @override
  String get youCheckUpdates => 'Zkontrolovat aktualizace';

  @override
  String get youCheckUpdatesSub => 'Nové verze vycházejí na GitHub Releases';

  @override
  String get youUpToDate => 'Máte aktuální verzi 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Vytvořil Sappy';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'Přehrávat na pozadí';

  @override
  String get youKeepPlayingAllowed =>
      'Povoleno — systém vaši hudbu nepozastaví';

  @override
  String get youKeepPlayingTap =>
      'Klepněte, aby systém nezastavoval přehrávání';

  @override
  String get youExcludedFoldersTitle => 'Vyloučené složky';

  @override
  String get youExcludedFoldersDesc =>
      'Skladby ve vypnutých složkách jsou z knihovny vynechány';

  @override
  String get youVisSensitivity => 'Citlivost vizualizéru';

  @override
  String get youVisSensitivitySub =>
      'Zvyšte u skladeb, které s ním sotva pohnou';

  @override
  String get youNerdMode => 'Nerd režim';

  @override
  String get youNerdModeSub =>
      'Zobrazit kodek, datový tok a zvukový výstup na Právě hraje';

  @override
  String get youEqualizer => 'Ekvalizér';

  @override
  String get youComingSoon => 'Již brzy';

  @override
  String get sleepTimer => 'Časovač uspání';

  @override
  String get sleep15 => '15 minut';

  @override
  String get sleep30 => '30 minut';

  @override
  String get sleep1h => '1 hodina';

  @override
  String get sleepEndTrack => 'Konec skladby';

  @override
  String get sleepFading => 'Ztišování… sladké sny';

  @override
  String sleepIn(String time) {
    return 'Uspání za $time';
  }

  @override
  String get sleepEndTrackActive => 'Uspání po skončení této skladby';

  @override
  String get sleepCancel => 'Zrušit časovač';

  @override
  String get queueUpNext => 'Další';

  @override
  String get queueEmpty => 'Fronta je prázdná';

  @override
  String get updateAvailable => 'Dostupná aktualizace ✨';

  @override
  String get updateNoNotes => 'Žádné poznámky k vydání.';

  @override
  String get updateInstalling => 'Otevírání instalace…';

  @override
  String get updateFailed => 'Aktualizace selhala — zkuste to později';

  @override
  String get updateLater => 'Později';

  @override
  String get updateRetry => 'Zkusit znovu';

  @override
  String get updateNow => 'Aktualizovat';

  @override
  String get spatialToggleTitle => '360° prostorový zvuk';

  @override
  String get spatialOn => 'Zapnuto';

  @override
  String get spatialOff => 'Vypnuto';

  @override
  String get lyricsNoFound => 'Text nenalezen';

  @override
  String get lyricsJustListening => 'Tato je jen k poslechu';

  @override
  String get lyricsTrySource => 'Zkuste jiný zdroj';

  @override
  String get lyricsSource => 'Zdroj textů';

  @override
  String get lyricsWordSynced => 'Synchronizováno po slovech';

  @override
  String get lyricsLineSynced => 'Synchronizováno po řádcích';

  @override
  String get lyricsUnsynced => 'Nesynchronizováno';

  @override
  String get plNoPlaylists => 'Zatím žádné seznamy — nejprve vytvořte jeden!';

  @override
  String get plAddToPlaylist => 'Přidat do seznamu';

  @override
  String plAddedTo(String name) {
    return 'Přidáno do $name';
  }

  @override
  String get shareLyrics => 'Sdílet texty';

  @override
  String get shareMaxLines => 'Vybrán maximální počet řádků';

  @override
  String sharePickLines(int count) {
    return 'Vyberte až $count řádků';
  }

  @override
  String get sharePickHint => 'Vyberte některé řádky níže…';

  @override
  String get shareButton => 'Sdílet';

  @override
  String get batTitle => 'Nechat hudbu hrát 🎵';

  @override
  String get batBody =>
      'Optimalizace baterie Androidu může pozastavit hudbu, když je obrazovka vypnutá. Povolte Hana360 běžet bez omezení, aby přehrávání zůstalo stabilní.\n\nMůžete to kdykoli změnit v Vy → \"Přehrávat na pozadí\".';

  @override
  String get batNotNow => 'Teď ne';

  @override
  String get batAllow => 'Povolit';

  @override
  String get algoSwitch => 'Algoritmus';

  @override
  String get speakerDistance => 'Vzdálenost reproduktorů';

  @override
  String get channelTrim => 'Trim kanálů';

  @override
  String get masterGain => 'Hlavní zesílení';

  @override
  String get secHrtf => 'Personalizace HRTF';

  @override
  String get outputGain => 'Výstupní zesílení';

  @override
  String get secEq => 'Prostorový EQ';

  @override
  String get secReverb => 'Dozvuk';

  @override
  String get roomSize => 'Místnost';

  @override
  String get reverbGain => 'Zesílení dozvuku';

  @override
  String get secTracking => 'Sledování hlavy';

  @override
  String get trackOff => 'Vypnuto';

  @override
  String get trackSensor => 'Senzor telefonu';

  @override
  String get trackManual => 'Ruční XY';

  @override
  String get dragHint =>
      'Tažením upravte orientaci hlavy (zvukové pole ji sleduje)';

  @override
  String get customEq => 'Vlastní';

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
  String get hrtfGroup1 => 'Muž / Malá / Střední';

  @override
  String get hrtfGroup2 => 'Muž / Malá / Velká';

  @override
  String get hrtfGroup3 => 'Muž / Střední / Malá';

  @override
  String get hrtfGroup4 => 'Muž / Střední / Střední';

  @override
  String get hrtfGroup5 => 'Muž / Střední / Velká';

  @override
  String get hrtfGroup6 => 'Muž / Velká / Malá';

  @override
  String get hrtfGroup7 => 'Muž / Velká / Střední';

  @override
  String get hrtfGroup8 => 'Muž / Velká / Velká';

  @override
  String get hrtfGroup9 => 'Žena / Malá / Malá';

  @override
  String get hrtfGroup10 => 'Žena / Malá / Střední';

  @override
  String get hrtfGroup11 => 'Žena / Malá / Velká';

  @override
  String get hrtfGroup12 => 'Žena / Střední / Malá';

  @override
  String get hrtfGroup13 => 'Žena / Střední / Střední';

  @override
  String get hrtfGroup14 => 'Žena / Střední / Velká';

  @override
  String get navHome => 'Domů';

  @override
  String get navLibrary => 'Knihovna';

  @override
  String get navPlaying => 'Přehrávání';

  @override
  String get navYou => 'Vy';

  @override
  String get tabSongs => 'Skladby';

  @override
  String get tabAlbums => 'Alba';

  @override
  String get tabFolders => 'Složky';

  @override
  String get tabPlaylists => 'Seznamy';

  @override
  String get youMood => 'NÁLADA';

  @override
  String get youCompanion => 'VÁŠ SPOLEČNÍK';

  @override
  String get youBuddies => 'KAMARÁDI';

  @override
  String get youSound => 'ZVUK';

  @override
  String get youMore => 'VÍCE';

  @override
  String get themeCherryBlossom => 'Třešňový květ';

  @override
  String get themeStarryNight => 'Hvězdná noc';

  @override
  String get themeAdaptiveLight => 'Adaptivní světlé';

  @override
  String get themeAdaptiveDark => 'Adaptivní tmavé';

  @override
  String youListenedTogether(int h, int m) {
    return '$h h $m min poslechu společně';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'Záhlaví a Právě hraje';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'Sedí na názvu knihovny';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'Dřímá na mini přehrávači';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'Kráčí nad oblíbenými skladbami';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'Světélkují na tmavých motivech';

  @override
  String get accBow => 'Růžová mašle';

  @override
  String get accHeadphones => 'Drobná sluchátka';

  @override
  String get accFlower => 'Květina';

  @override
  String get accCrown => 'Malá korunka';

  @override
  String accUnlockLabel(int h) {
    return 'Poslouchejte $h hodin';
  }

  @override
  String get youCrossfade => 'Crossfade';

  @override
  String get youCrossfadeSub => 'Prolnout konec skladby do další';

  @override
  String get youSmartShuffle => 'Chytré míchání';

  @override
  String get youSmartShuffleSub =>
      'Míchání se přiklání k vašim oblíbeným — počítáno na tomto zařízení';

  @override
  String get libLikedSongs => 'Oblíbené skladby';

  @override
  String get libTapHeart => 'Klepněte na srdce u skladby, aby zde zůstala';

  @override
  String get libRemovedFromQueue => 'Odebráno z fronty';

  @override
  String get libRemovedFromLibrary => 'Odebráno z knihovny';

  @override
  String get libRemoveFromLibrary => 'Odebrat z knihovny';

  @override
  String get libNewPlaylist => 'Nový seznam';

  @override
  String get libPlaylistName => 'Název seznamu';

  @override
  String get libCreate => 'Vytvořit';

  @override
  String get libSwipeHint =>
      'přejetím doleva odeberete · podržením přeuspořádáte';

  @override
  String get libChooseCover => 'Vybrat obrázek obalu';

  @override
  String get libBackToArtCover => 'Zpět k obalu skladby';

  @override
  String libDeleteConfirm(String name) {
    return 'Smazat \"$name\"?';
  }

  @override
  String get libDeleteKeepSongs => 'Samotné skladby zůstanou na vašem zařízení';

  @override
  String get libKeep => 'Ponechat';

  @override
  String get libDelete => 'Smazat';

  @override
  String get libRemoveKeepFile => 'Samotný soubor zůstane na vašem zařízení';

  @override
  String get libClearConfirm => 'Odebrat všechny soubory?';

  @override
  String get libLibraryCleared => 'Knihovna vyčištěna';

  @override
  String get libPickAudioFiles => 'Vybrat zvukové soubory…';

  @override
  String get libImportFolder => 'Importovat složku';

  @override
  String get libScanWholeFolder => 'Skenovat celou složku… (doporučeno)';

  @override
  String libImportFailed(String error) {
    return 'Import selhal: $error';
  }

  @override
  String get libNoAudioFound => 'Nebyly nalezeny žádné zvukové soubory';

  @override
  String libImportedCount(int count) {
    return 'Importováno $count skladeb';
  }

  @override
  String get libNothingHere =>
      'Zatím zde nic není — přejetím doleva odeberete, podržením přeuspořádáte';

  @override
  String get sidebarYourLibrary => 'VAŠE KNIHOVNA';

  @override
  String get sidebarPlaylists => 'SEZNAMY SKLADEB';

  @override
  String get sidebarFolders => 'SLOŽKY';

  @override
  String get rowQueue => 'Fronta';

  @override
  String get rowRemove => 'Odebrat';

  @override
  String get rowPlaylist => 'Seznam';

  @override
  String plTrackCount(int count) {
    return '$count stop';
  }

  @override
  String get lyricsSourceAuto => 'Auto';

  @override
  String get lyricsSourceEmbedded => 'Vložené';

  @override
  String get lyricsSourceBestQuality => 'Nejlepší dostupná kvalita';

  @override
  String get lyricsSourceFileTags => 'Z vlastních tagů zvukového souboru';

  @override
  String get lyricsSourceWordOnline => 'Synchronizováno po slovech (online)';

  @override
  String get lyricsSourceLineOnline => 'Synchronizováno po řádcích (online)';

  @override
  String get lyricsSourceNotFound => 'Pro tuto skladbu nenalezeno';

  @override
  String get npCatModeUnlocked => 'Mňau?! Kočičí režim odemčen 🐱';

  @override
  String get shellResumePlayback => 'Obnovit přehrávání';

  @override
  String get shellPlay => 'PŘEHRÁT';

  @override
  String get devSection => 'VÝVOJÁŘ';

  @override
  String get devModeUnlocked => '🛠️ Vývojářský režim odemčen';

  @override
  String get devUnlockAll => 'Odemknout všechny doplňky';

  @override
  String get devClearLyricsCache => 'Vymazat mezipaměť textů';

  @override
  String get devRefetchLyrics => 'Znovu načíst všechny texty…';

  @override
  String get devLyricsCleared => 'Mezipaměť textů vymazána';

  @override
  String get devHideOptions => 'Skrýt možnosti vývojáře';

  @override
  String get devModeOff => 'Vývojářský režim vypnut';

  @override
  String get youCantReadFolders => 'Nelze přečíst vaše hudební složky';

  @override
  String get youNoMusicFolders => 'Nenalezeny žádné hudební složky';
}
