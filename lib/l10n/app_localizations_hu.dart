// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class AppLocalizationsHu extends AppLocalizations {
  AppLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'Nyelv';

  @override
  String get languageFollowSystem => 'Rendszer követése';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Hana360';

  @override
  String get commonCancel => 'Mégse';

  @override
  String get commonConfirm => 'OK';

  @override
  String get commonBack => 'Vissza';

  @override
  String get commonDone => 'Kész';

  @override
  String get commonUnknown => 'Ismeretlen';

  @override
  String get secUpmix => 'Upmix motor';

  @override
  String get spatialAudioTitle => '360° térbeli hang';

  @override
  String get npNothingPlaying => 'Még semmi sem szól';

  @override
  String get npPickSong => 'Válassz egy dalt a könyvtáradból';

  @override
  String get npSpatialSettings => '360° beállítások';

  @override
  String get npLyrics => 'Dalszöveg';

  @override
  String get libSearchHint => 'Keresés a zenédben…';

  @override
  String get libClearLibrary => 'Könyvtár törlése';

  @override
  String get libImportMusic => 'Zene importálása';

  @override
  String libError(String error) {
    return 'Valami hiba történt: $error';
  }

  @override
  String libNoMatch(String query) {
    return 'Nincs találat erre: \"$query\"';
  }

  @override
  String get libPermissionDenied =>
      'A Hana360-nak engedélyre van szüksége a zenéd megtalálásához\nNincs hozzáférés ezen az eszközön? Importálj helyette.';

  @override
  String get libNoSongs =>
      'Nem található dal ezen az eszközön\nImportálj zenét a fájljaidból a kezdéshez';

  @override
  String get libGrantAccess => 'Hozzáférés megadása';

  @override
  String get libRescan => 'Újraolvasás';

  @override
  String get libAddedToQueue => 'Hozzáadva a várólistához';

  @override
  String get libNoAlbums => 'Még nincsenek albumok';

  @override
  String get libNoFolders => 'Még nincsenek mappák';

  @override
  String get libNoPlaylists => 'Még nincsenek lejátszási listák';

  @override
  String libPlaylistCreated(String name) {
    return '\"$name\" lejátszási lista létrehozva 🌸';
  }

  @override
  String get libFolderHint =>
      'tartsd lenyomva a mappát, hogy lejátszási listává alakítsd';

  @override
  String libSongCount(int count) {
    return '$count dal';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count dal · $path';
  }

  @override
  String get homeGreetingLate => 'Későn fent ♪';

  @override
  String get homeGreetingMorning => 'Jó reggelt ♪';

  @override
  String get homeGreetingAfternoon => 'Jó napot ♪';

  @override
  String get homeGreetingEvening => 'Jó estét ♪';

  @override
  String get homeJumpBackIn => 'FOLYTATÁS';

  @override
  String get homeForYou => 'NEKED';

  @override
  String get homeForYouSub =>
      'ezen az eszközön, a hallgatásaid alapján választva';

  @override
  String get homeWelcome => 'Üdvözlünk a Hana360-ban 🌸';

  @override
  String get homeAllQuiet => 'Minden csendes 🌸';

  @override
  String get homeLibraryHint =>
      'A zenéd a Könyvtár fülön él — ott adj hozzá mappákat. Minden, amit lejátszol, itt gyűlik össze.';

  @override
  String get homePlayHint => 'Játssz le valamit, és legközelebb itt fog várni.';

  @override
  String get youRescanLibrary => 'Könyvtár újraolvasása';

  @override
  String get youExcludedFolders => 'Kizárt mappák';

  @override
  String get youExcludedFoldersSub => 'Mappák elrejtése a könyvtárból';

  @override
  String get youCatMode => 'Macska mód';

  @override
  String get youAbout => 'Névjegy';

  @override
  String get youScanning => 'Zenéd beolvasása…';

  @override
  String get youOpenSource => 'Open Source';

  @override
  String get youOpenSourceSub =>
      'A Hana360 a Hanamimi (GPLv3, ShaptakNaskar) származéka — módosítva: 2026-08-10';

  @override
  String get youCheckUpdates => 'Frissítések keresése';

  @override
  String get youCheckUpdatesSub =>
      'Az új verziók a GitHub Releases oldalon jelennek meg';

  @override
  String get youUpToDate => 'Naprakész vagy 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Készítette: Sappy';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'Lejátszás folytatása a háttérben';

  @override
  String get youKeepPlayingAllowed =>
      'Engedélyezve — a rendszer nem szünetelteti a zenéd';

  @override
  String get youKeepPlayingTap =>
      'Koppints, hogy a rendszer ne állítsa le a lejátszást';

  @override
  String get youExcludedFoldersTitle => 'Kizárt mappák';

  @override
  String get youExcludedFoldersDesc =>
      'A kikapcsolt mappák dalai kimaradnak a könyvtárból';

  @override
  String get youVisSensitivity => 'Vizualizátor érzékenysége';

  @override
  String get youVisSensitivitySub =>
      'Növeld azoknál a daloknál, amelyek alig mozgatják';

  @override
  String get youNerdMode => 'Nerd mód';

  @override
  String get youNerdModeSub =>
      'Kodek, bitráta és hangkimenet megjelenítése a Most játszik képernyőn';

  @override
  String get youEqualizer => 'Hangszínszabályzó';

  @override
  String get youComingSoon => 'Hamarosan';

  @override
  String get sleepTimer => 'Elalvás időzítő';

  @override
  String get sleep15 => '15 perc';

  @override
  String get sleep30 => '30 perc';

  @override
  String get sleep1h => '1 óra';

  @override
  String get sleepEndTrack => 'A dal vége';

  @override
  String get sleepFading => 'Elhalkulás… szép álmokat';

  @override
  String sleepIn(String time) {
    return 'Elalvás ennyi múlva: $time';
  }

  @override
  String get sleepEndTrackActive => 'Elalvás, amikor ez a dal véget ér';

  @override
  String get sleepCancel => 'Időzítő törlése';

  @override
  String get queueUpNext => 'Következő';

  @override
  String get queueEmpty => 'A várólista üres';

  @override
  String get updateAvailable => 'Frissítés érhető el ✨';

  @override
  String get updateNoNotes => 'Nincsenek kiadási megjegyzések.';

  @override
  String get updateInstalling => 'Telepítő megnyitása…';

  @override
  String get updateFailed => 'Nem sikerült frissíteni — próbáld újra később';

  @override
  String get updateLater => 'Később';

  @override
  String get updateRetry => 'Újra';

  @override
  String get updateNow => 'Frissítés';

  @override
  String get spatialToggleTitle => '360° térbeli hang';

  @override
  String get spatialOn => 'Be';

  @override
  String get spatialOff => 'Ki';

  @override
  String get lyricsNoFound => 'Nem található dalszöveg';

  @override
  String get lyricsJustListening => 'Ez csak hallgatásra való';

  @override
  String get lyricsTrySource => 'Próbálj másik forrást';

  @override
  String get lyricsSource => 'Dalszöveg forrása';

  @override
  String get lyricsWordSynced => 'Szó-szinkronizált';

  @override
  String get lyricsLineSynced => 'Sor-szinkronizált';

  @override
  String get lyricsUnsynced => 'Nem szinkronizált';

  @override
  String get plNoPlaylists =>
      'Még nincs lejátszási lista — előbb hozz létre egyet!';

  @override
  String get plAddToPlaylist => 'Hozzáadás a listához';

  @override
  String plAddedTo(String name) {
    return 'Hozzáadva ehhez: $name';
  }

  @override
  String get shareLyrics => 'Dalszöveg megosztása';

  @override
  String get shareMaxLines => 'Maximális sorszám kiválasztva';

  @override
  String sharePickLines(int count) {
    return 'Válassz legfeljebb $count sort';
  }

  @override
  String get sharePickHint => 'Válassz néhány sort lentebb…';

  @override
  String get shareButton => 'Megosztás';

  @override
  String get batTitle => 'Zenéljen tovább 🎵';

  @override
  String get batBody =>
      'Az Android akkumulátor-optimalizálása szüneteltetheti a zenét, ha a képernyő ki van kapcsolva. Engedélyezd, hogy a Hana360 korlátozás nélkül fusson, hogy a lejátszás stabil maradjon.\n\nEzt bármikor módosíthatod: Te → \"Lejátszás folytatása a háttérben\".';

  @override
  String get batNotNow => 'Most nem';

  @override
  String get batAllow => 'Engedélyezés';

  @override
  String get algoSwitch => 'Algoritmus';

  @override
  String get speakerDistance => 'Hangszóró távolság';

  @override
  String get channelTrim => 'Csatorna trim';

  @override
  String get masterGain => 'Fő erősítés';

  @override
  String get secHrtf => 'HRTF személyre szabás';

  @override
  String get outputGain => 'Kimeneti erősítés';

  @override
  String get secEq => 'Térbeli EQ';

  @override
  String get secReverb => 'Visszhang';

  @override
  String get roomSize => 'Szoba';

  @override
  String get reverbGain => 'Visszhang erősítés';

  @override
  String get secTracking => 'Fejkövetés';

  @override
  String get trackOff => 'Ki';

  @override
  String get trackSensor => 'Telefon érzékelő';

  @override
  String get trackManual => 'Kézi XY';

  @override
  String get dragHint =>
      'Húzd a fej irányának beállításához (a hangtér követi)';

  @override
  String get customEq => 'Egyéni';

  @override
  String get eqPresetMusic => 'Zene';

  @override
  String get eqPresetCinema => 'Mozi';

  @override
  String get eqPresetGame => 'Játék';

  @override
  String get eqPresetVoice => 'Beszéd';

  @override
  String get hrtfGroup0 => 'Férfi / Kicsi / Kicsi';

  @override
  String get hrtfGroup1 => 'Férfi / Kicsi / Közepes';

  @override
  String get hrtfGroup2 => 'Férfi / Kicsi / Nagy';

  @override
  String get hrtfGroup3 => 'Férfi / Közepes / Kicsi';

  @override
  String get hrtfGroup4 => 'Férfi / Közepes / Közepes';

  @override
  String get hrtfGroup5 => 'Férfi / Közepes / Nagy';

  @override
  String get hrtfGroup6 => 'Férfi / Nagy / Kicsi';

  @override
  String get hrtfGroup7 => 'Férfi / Nagy / Közepes';

  @override
  String get hrtfGroup8 => 'Férfi / Nagy / Nagy';

  @override
  String get hrtfGroup9 => 'Nő / Kicsi / Kicsi';

  @override
  String get hrtfGroup10 => 'Nő / Kicsi / Közepes';

  @override
  String get hrtfGroup11 => 'Nő / Kicsi / Nagy';

  @override
  String get hrtfGroup12 => 'Nő / Közepes / Kicsi';

  @override
  String get hrtfGroup13 => 'Nő / Közepes / Közepes';

  @override
  String get hrtfGroup14 => 'Nő / Közepes / Nagy';

  @override
  String get navHome => 'Kezdőlap';

  @override
  String get navLibrary => 'Könyvtár';

  @override
  String get navPlaying => 'Lejátszás';

  @override
  String get navYou => 'Te';

  @override
  String get tabSongs => 'Dalok';

  @override
  String get tabAlbums => 'Albumok';

  @override
  String get tabFolders => 'Mappák';

  @override
  String get tabPlaylists => 'Lejátszási listák';

  @override
  String get youMood => 'HANGULAT';

  @override
  String get youCompanion => 'A TÁRSAD';

  @override
  String get youBuddies => 'PAJTÁSOK';

  @override
  String get youSound => 'HANG';

  @override
  String get youMore => 'TOVÁBB';

  @override
  String get themeCherryBlossom => 'Cseresznyevirág';

  @override
  String get themeStarryNight => 'Csillagos éj';

  @override
  String get themeAdaptiveLight => 'Adaptív világos';

  @override
  String get themeAdaptiveDark => 'Adaptív sötét';

  @override
  String youListenedTogether(int h, int m) {
    return '$hó ${m}p közös hallgatás';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'Fejléc és Most játszik';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'A Könyvtár címén ül';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'A mini lejátszón szunyókál';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'A kedvelt dalok felett lépeget';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'Ragyognak a sötét témákon';

  @override
  String get accBow => 'Rózsaszín masni';

  @override
  String get accHeadphones => 'Apró fejhallgató';

  @override
  String get accFlower => 'Virág';

  @override
  String get accCrown => 'Apró korona';

  @override
  String accUnlockLabel(int h) {
    return 'Hallgass $h órát';
  }

  @override
  String get youCrossfade => 'Áttűnés';

  @override
  String get youCrossfadeSub => 'Olvaszd a dal végét a következőbe';

  @override
  String get youSmartShuffle => 'Okos keverés';

  @override
  String get youSmartShuffleSub =>
      'A keverés a kedvenceid felé hajlik — ezen az eszközön számolva';

  @override
  String get libLikedSongs => 'Kedvelt dalok';

  @override
  String get libTapHeart => 'Koppints a szívre egy dalon, hogy itt tartsd';

  @override
  String get libRemovedFromQueue => 'Eltávolítva a várólistából';

  @override
  String get libRemovedFromLibrary => 'Eltávolítva a könyvtárból';

  @override
  String get libRemoveFromLibrary => 'Eltávolítás a könyvtárból';

  @override
  String get libNewPlaylist => 'Új lejátszási lista';

  @override
  String get libPlaylistName => 'Lista neve';

  @override
  String get libCreate => 'Létrehozás';

  @override
  String get libSwipeHint =>
      'csúsztasd balra az eltávolításhoz · tartsd lenyomva az átrendezéshez';

  @override
  String get libChooseCover => 'Borítókép kiválasztása';

  @override
  String get libBackToArtCover => 'Vissza a dal borítójához';

  @override
  String libDeleteConfirm(String name) {
    return 'Törlöd ezt: \"$name\"?';
  }

  @override
  String get libDeleteKeepSongs => 'Maguk a dalok az eszközödön maradnak';

  @override
  String get libKeep => 'Megtartás';

  @override
  String get libDelete => 'Törlés';

  @override
  String get libRemoveKeepFile => 'Maga a fájl az eszközödön marad';

  @override
  String get libClearConfirm => 'Az összes fájl eltávolítása?';

  @override
  String get libLibraryCleared => 'Könyvtár törölve';

  @override
  String get libPickAudioFiles => 'Hangfájlok kiválasztása…';

  @override
  String get libImportFolder => 'Mappa importálása';

  @override
  String get libScanWholeFolder => 'Teljes mappa beolvasása… (ajánlott)';

  @override
  String libImportFailed(String error) {
    return 'Importálás sikertelen: $error';
  }

  @override
  String get libNoAudioFound => 'Nem találhatók hangfájlok';

  @override
  String libImportedCount(int count) {
    return 'Importálva: $count dal';
  }

  @override
  String get libNothingHere =>
      'Még nincs itt semmi — csúsztasd balra az eltávolításhoz, tartsd lenyomva az átrendezéshez';

  @override
  String get sidebarYourLibrary => 'A KÖNYVTÁRAD';

  @override
  String get sidebarPlaylists => 'LEJÁTSZÁSI LISTÁK';

  @override
  String get sidebarFolders => 'MAPPÁK';

  @override
  String get rowQueue => 'Várólista';

  @override
  String get rowRemove => 'Eltávolítás';

  @override
  String get rowPlaylist => 'Lejátszási lista';

  @override
  String plTrackCount(int count) {
    return '$count szám';
  }

  @override
  String get lyricsSourceAuto => 'Auto';

  @override
  String get lyricsSourceEmbedded => 'Beágyazott';

  @override
  String get lyricsSourceBestQuality => 'Legjobb elérhető minőség';

  @override
  String get lyricsSourceFileTags => 'A hangfájl saját címkéiből';

  @override
  String get lyricsSourceWordOnline => 'Szó-szinkronizált (online)';

  @override
  String get lyricsSourceLineOnline => 'Sor-szinkronizált (online)';

  @override
  String get lyricsSourceNotFound => 'Ehhez a dalhoz nem található';

  @override
  String get npCatModeUnlocked => 'Miáú?! Macska mód feloldva 🐱';

  @override
  String get shellResumePlayback => 'Lejátszás folytatása';

  @override
  String get shellPlay => 'LEJÁTSZÁS';

  @override
  String get devSection => 'FEJLESZTŐ';

  @override
  String get devModeUnlocked => '🛠️ Fejlesztői mód feloldva';

  @override
  String get devUnlockAll => 'Az összes kiegészítő feloldása';

  @override
  String get devClearLyricsCache => 'Dalszöveg gyorsítótár törlése';

  @override
  String get devRefetchLyrics => 'Az összes dalszöveg újra lekérése…';

  @override
  String get devLyricsCleared => 'Dalszöveg gyorsítótár törölve';

  @override
  String get devHideOptions => 'Fejlesztői beállítások elrejtése';

  @override
  String get devModeOff => 'Fejlesztői mód kikapcsolva';

  @override
  String get youCantReadFolders => 'Nem sikerült beolvasni a zenei mappáidat';

  @override
  String get youNoMusicFolders => 'Nem találhatók zenei mappák';
}
