// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovenian (`sl`).
class AppLocalizationsSl extends AppLocalizations {
  AppLocalizationsSl([String locale = 'sl']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'Jezik';

  @override
  String get languageFollowSystem => 'Sledi sistemu';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Hana360';

  @override
  String get commonCancel => 'Prekliči';

  @override
  String get commonConfirm => 'V redu';

  @override
  String get commonBack => 'Nazaj';

  @override
  String get commonDone => 'Končano';

  @override
  String get commonUnknown => 'Neznano';

  @override
  String get secUpmix => 'Motor upmix';

  @override
  String get spatialAudioTitle => '360° prostorski zvok';

  @override
  String get npNothingPlaying => 'Nič se še ne predvaja';

  @override
  String get npPickSong => 'Izberite skladbo iz knjižnice';

  @override
  String get npSpatialSettings => 'Nastavitve 360°';

  @override
  String get npLyrics => 'Besedila';

  @override
  String get libSearchHint => 'Išči v svoji glasbi …';

  @override
  String get libClearLibrary => 'Počisti knjižnico';

  @override
  String get libImportMusic => 'Uvozi glasbo';

  @override
  String libError(String error) {
    return 'Nekaj je šlo narobe: $error';
  }

  @override
  String libNoMatch(String query) {
    return 'Nič ne ustreza \"$query\"';
  }

  @override
  String get libPermissionDenied =>
      'Hana360 potrebuje dovoljenje za iskanje vaše glasbe\nNi dostopa na tej napravi? Namesto tega uvozite.';

  @override
  String get libNoSongs =>
      'Na tej napravi ni bilo najdenih skladb\nZa začetek uvozite glasbo iz svojih datotek';

  @override
  String get libGrantAccess => 'Dovoli dostop';

  @override
  String get libRescan => 'Ponovno skeniraj';

  @override
  String get libAddedToQueue => 'Dodano v čakalno vrsto';

  @override
  String get libNoAlbums => 'Še ni albumov';

  @override
  String get libNoFolders => 'Še ni map';

  @override
  String get libNoPlaylists => 'Še ni seznamov predvajanja';

  @override
  String libPlaylistCreated(String name) {
    return 'Seznam predvajanja \"$name\" ustvarjen 🌸';
  }

  @override
  String get libFolderHint =>
      'dolgo pritisnite mapo, da jo spremenite v seznam predvajanja';

  @override
  String libSongCount(int count) {
    return '$count skladb';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count skladb · $path';
  }

  @override
  String get homeGreetingLate => 'Pokonci pozno ♪';

  @override
  String get homeGreetingMorning => 'Dobro jutro ♪';

  @override
  String get homeGreetingAfternoon => 'Dober dan ♪';

  @override
  String get homeGreetingEvening => 'Dober večer ♪';

  @override
  String get homeJumpBackIn => 'NADALJUJ';

  @override
  String get homeForYou => 'ZATE';

  @override
  String get homeForYouSub => 'izbrano na tej napravi iz vašega poslušanja';

  @override
  String get homeWelcome => 'Dobrodošli v Hana360 🌸';

  @override
  String get homeAllQuiet => 'Vse tiho 🌸';

  @override
  String get homeLibraryHint =>
      'Vaša glasba živi na zavihku Knjižnica — tam dodajte mape. Vse, kar predvajate, se zbira tukaj.';

  @override
  String get homePlayHint =>
      'Predvajajte kaj in naslednjič vas bo čakalo tukaj.';

  @override
  String get youRescanLibrary => 'Ponovno skeniraj knjižnico';

  @override
  String get youExcludedFolders => 'Izključene mape';

  @override
  String get youExcludedFoldersSub => 'Skrij mape iz knjižnice';

  @override
  String get youCatMode => 'Mačji način';

  @override
  String get youAbout => 'O aplikaciji';

  @override
  String get youScanning => 'Skeniranje vaše glasbe …';

  @override
  String get youOpenSource => 'Open Source';

  @override
  String get youOpenSourceSub =>
      'Hana360 je izpeljanka Hanamimi (GPLv3) avtorja ShaptakNaskar — spremenjeno 2026-08-10';

  @override
  String get youCheckUpdates => 'Preveri posodobitve';

  @override
  String get youCheckUpdatesSub => 'Nove različice izidejo na GitHub Releases';

  @override
  String get youUpToDate => 'Imate najnovejšo različico 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Izdelal Sappy';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'Nadaljuj predvajanje v ozadju';

  @override
  String get youKeepPlayingAllowed =>
      'Dovoljeno — sistem vaše glasbe ne bo zaustavil';

  @override
  String get youKeepPlayingTap =>
      'Tapnite, da sistemu preprečite zaustavitev predvajanja';

  @override
  String get youExcludedFoldersTitle => 'Izključene mape';

  @override
  String get youExcludedFoldersDesc =>
      'Skladbe v izklopljenih mapah so izpuščene iz knjižnice';

  @override
  String get youVisSensitivity => 'Občutljivost vizualizatorja';

  @override
  String get youVisSensitivitySub =>
      'Povečajte za skladbe, ki ga komaj premaknejo';

  @override
  String get youNerdMode => 'Nerd način';

  @override
  String get youNerdModeSub =>
      'Prikaži kodek, bitno hitrost in zvočni izhod na Zdaj predvaja';

  @override
  String get youEqualizer => 'Izenačevalnik';

  @override
  String get youComingSoon => 'Kmalu';

  @override
  String get sleepTimer => 'Časovnik spanja';

  @override
  String get sleep15 => '15 minut';

  @override
  String get sleep30 => '30 minut';

  @override
  String get sleep1h => '1 ura';

  @override
  String get sleepEndTrack => 'Konec skladbe';

  @override
  String get sleepFading => 'Utišanje … sladke sanje';

  @override
  String sleepIn(String time) {
    return 'Spanje čez $time';
  }

  @override
  String get sleepEndTrackActive => 'Spanje, ko se ta skladba konča';

  @override
  String get sleepCancel => 'Prekliči časovnik';

  @override
  String get queueUpNext => 'Naslednje';

  @override
  String get queueEmpty => 'Čakalna vrsta je prazna';

  @override
  String get updateAvailable => 'Na voljo posodobitev ✨';

  @override
  String get updateNoNotes => 'Ni zapiskov o izdaji.';

  @override
  String get updateInstalling => 'Odpiranje namestitve …';

  @override
  String get updateFailed => 'Posodobitev ni uspela — poskusite znova pozneje';

  @override
  String get updateLater => 'Pozneje';

  @override
  String get updateRetry => 'Poskusi znova';

  @override
  String get updateNow => 'Posodobi';

  @override
  String get spatialToggleTitle => '360° prostorski zvok';

  @override
  String get spatialOn => 'Vklopljeno';

  @override
  String get spatialOff => 'Izklopljeno';

  @override
  String get lyricsNoFound => 'Besedilo ni najdeno';

  @override
  String get lyricsJustListening => 'Ta je samo za poslušanje';

  @override
  String get lyricsTrySource => 'Poskusite drug vir';

  @override
  String get lyricsSource => 'Vir besedil';

  @override
  String get lyricsWordSynced => 'Sinhronizirano po besedah';

  @override
  String get lyricsLineSynced => 'Sinhronizirano po vrsticah';

  @override
  String get lyricsUnsynced => 'Nesinhronizirano';

  @override
  String get plNoPlaylists => 'Še ni seznamov — najprej ustvarite enega!';

  @override
  String get plAddToPlaylist => 'Dodaj na seznam';

  @override
  String plAddedTo(String name) {
    return 'Dodano v $name';
  }

  @override
  String get shareLyrics => 'Deli besedila';

  @override
  String get shareMaxLines => 'Izbrano največje število vrstic';

  @override
  String sharePickLines(int count) {
    return 'Izberite do $count vrstic';
  }

  @override
  String get sharePickHint => 'Spodaj izberite nekaj vrstic …';

  @override
  String get shareButton => 'Deli';

  @override
  String get batTitle => 'Naj glasba še naprej igra 🎵';

  @override
  String get batBody =>
      'Optimizacija baterije Androida lahko zaustavi glasbo, ko je zaslon izklopljen. Dovolite Hana360 neomejeno delovanje, da predvajanje ostane stabilno.\n\nTo lahko kadar koli spremenite v Ti → \"Nadaljuj predvajanje v ozadju\".';

  @override
  String get batNotNow => 'Ne zdaj';

  @override
  String get batAllow => 'Dovoli';

  @override
  String get algoSwitch => 'Algoritem';

  @override
  String get speakerDistance => 'Razdalja zvočnikov';

  @override
  String get channelTrim => 'Obrezovanje kanalov';

  @override
  String get masterGain => 'Glavno ojačanje';

  @override
  String get secHrtf => 'Personalizacija HRTF';

  @override
  String get outputGain => 'Izhodno ojačanje';

  @override
  String get secEq => 'Prostorski EQ';

  @override
  String get secReverb => 'Odmev';

  @override
  String get roomSize => 'Prostor';

  @override
  String get reverbGain => 'Ojačanje odmeva';

  @override
  String get secTracking => 'Sledenje glave';

  @override
  String get trackOff => 'Izklopljeno';

  @override
  String get trackSensor => 'Senzor telefona';

  @override
  String get trackManual => 'Ročno XY';

  @override
  String get dragHint =>
      'Povlecite za prilagoditev usmerjenosti glave (zvočno polje sledi)';

  @override
  String get customEq => 'Po meri';

  @override
  String get eqPresetMusic => 'Glasba';

  @override
  String get eqPresetCinema => 'Kino';

  @override
  String get eqPresetGame => 'Igra';

  @override
  String get eqPresetVoice => 'Glas';

  @override
  String get hrtfGroup0 => 'Moški / Majhna / Majhna';

  @override
  String get hrtfGroup1 => 'Moški / Majhna / Srednja';

  @override
  String get hrtfGroup2 => 'Moški / Majhna / Velika';

  @override
  String get hrtfGroup3 => 'Moški / Srednja / Majhna';

  @override
  String get hrtfGroup4 => 'Moški / Srednja / Srednja';

  @override
  String get hrtfGroup5 => 'Moški / Srednja / Velika';

  @override
  String get hrtfGroup6 => 'Moški / Velika / Majhna';

  @override
  String get hrtfGroup7 => 'Moški / Velika / Srednja';

  @override
  String get hrtfGroup8 => 'Moški / Velika / Velika';

  @override
  String get hrtfGroup9 => 'Ženska / Majhna / Majhna';

  @override
  String get hrtfGroup10 => 'Ženska / Majhna / Srednja';

  @override
  String get hrtfGroup11 => 'Ženska / Majhna / Velika';

  @override
  String get hrtfGroup12 => 'Ženska / Srednja / Majhna';

  @override
  String get hrtfGroup13 => 'Ženska / Srednja / Srednja';

  @override
  String get hrtfGroup14 => 'Ženska / Srednja / Velika';

  @override
  String get navHome => 'Domov';

  @override
  String get navLibrary => 'Knjižnica';

  @override
  String get navPlaying => 'Predvajanje';

  @override
  String get navYou => 'Ti';

  @override
  String get tabSongs => 'Skladbe';

  @override
  String get tabAlbums => 'Albumi';

  @override
  String get tabFolders => 'Mape';

  @override
  String get tabPlaylists => 'Seznami';

  @override
  String get youMood => 'RAZPOLOŽENJE';

  @override
  String get youCompanion => 'VAŠ SPREMLJEVALEC';

  @override
  String get youBuddies => 'PRIJATELJI';

  @override
  String get youSound => 'ZVOK';

  @override
  String get youMore => 'VEČ';

  @override
  String get themeCherryBlossom => 'Češnjev cvet';

  @override
  String get themeStarryNight => 'Zvezdnata noč';

  @override
  String get themeAdaptiveLight => 'Prilagodljivo svetlo';

  @override
  String get themeAdaptiveDark => 'Prilagodljivo temno';

  @override
  String youListenedTogether(int h, int m) {
    return '$h h $m min skupnega poslušanja';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'Glava in Zdaj predvaja';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'Sedi na naslovu knjižnice';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'Drema na mini predvajalniku';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'Korači nad všečkanimi skladbami';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'Svetijo na temnih temah';

  @override
  String get accBow => 'Rožnata pentlja';

  @override
  String get accHeadphones => 'Majhne slušalke';

  @override
  String get accFlower => 'Roža';

  @override
  String get accCrown => 'Majhna krona';

  @override
  String accUnlockLabel(int h) {
    return 'Poslušajte $h ur';
  }

  @override
  String get youCrossfade => 'Prehod';

  @override
  String get youCrossfadeSub => 'Zlij konec skladbe z naslednjo';

  @override
  String get youSmartShuffle => 'Pametno mešanje';

  @override
  String get youSmartShuffleSub =>
      'Mešanje se nagiba k vašim priljubljenim — izračunano na tej napravi';

  @override
  String get libLikedSongs => 'Všečkane skladbe';

  @override
  String get libTapHeart => 'Tapnite srce pri skladbi, da jo obdržite tukaj';

  @override
  String get libRemovedFromQueue => 'Odstranjeno iz čakalne vrste';

  @override
  String get libRemovedFromLibrary => 'Odstranjeno iz knjižnice';

  @override
  String get libRemoveFromLibrary => 'Odstrani iz knjižnice';

  @override
  String get libNewPlaylist => 'Nov seznam';

  @override
  String get libPlaylistName => 'Ime seznama';

  @override
  String get libCreate => 'Ustvari';

  @override
  String get libSwipeHint =>
      'podrsnite levo za odstranitev · držite za preureditev';

  @override
  String get libChooseCover => 'Izberi sliko naslovnice';

  @override
  String get libBackToArtCover => 'Nazaj na naslovnico skladbe';

  @override
  String libDeleteConfirm(String name) {
    return 'Izbrišem \"$name\"?';
  }

  @override
  String get libDeleteKeepSongs => 'Skladbe same ostanejo na vaši napravi';

  @override
  String get libKeep => 'Obdrži';

  @override
  String get libDelete => 'Izbriši';

  @override
  String get libRemoveKeepFile => 'Sama datoteka ostane na vaši napravi';

  @override
  String get libClearConfirm => 'Odstranim vse datoteke?';

  @override
  String get libLibraryCleared => 'Knjižnica počiščena';

  @override
  String get libPickAudioFiles => 'Izberite zvočne datoteke …';

  @override
  String get libImportFolder => 'Uvozi mapo';

  @override
  String get libScanWholeFolder => 'Skeniraj celotno mapo … (priporočeno)';

  @override
  String libImportFailed(String error) {
    return 'Uvoz ni uspel: $error';
  }

  @override
  String get libNoAudioFound => 'Ni najdenih zvočnih datotek';

  @override
  String libImportedCount(int count) {
    return 'Uvoženih $count skladb';
  }

  @override
  String get libNothingHere =>
      'Tukaj še ni ničesar — podrsnite levo za odstranitev, držite za preureditev';

  @override
  String get sidebarYourLibrary => 'VAŠA KNJIŽNICA';

  @override
  String get sidebarPlaylists => 'SEZNAMI PREDVAJANJA';

  @override
  String get sidebarFolders => 'MAPE';

  @override
  String get rowQueue => 'Čakalna vrsta';

  @override
  String get rowRemove => 'Odstrani';

  @override
  String get rowPlaylist => 'Seznam';

  @override
  String plTrackCount(int count) {
    return '$count skladb';
  }

  @override
  String get lyricsSourceAuto => 'Samodejno';

  @override
  String get lyricsSourceEmbedded => 'Vgrajeno';

  @override
  String get lyricsSourceBestQuality => 'Najboljša razpoložljiva kakovost';

  @override
  String get lyricsSourceFileTags => 'Iz lastnih oznak zvočne datoteke';

  @override
  String get lyricsSourceWordOnline => 'Sinhronizirano po besedah (spletno)';

  @override
  String get lyricsSourceLineOnline => 'Sinhronizirano po vrsticah (spletno)';

  @override
  String get lyricsSourceNotFound => 'Za to skladbo ni najdeno';

  @override
  String get npCatModeUnlocked => 'Mijav?! Mačji način odklenjen 🐱';

  @override
  String get shellResumePlayback => 'Nadaljuj predvajanje';

  @override
  String get shellPlay => 'PREDVAJAJ';

  @override
  String get devSection => 'RAZVIJALEC';

  @override
  String get devModeUnlocked => '🛠️ Razvijalski način odklenjen';

  @override
  String get devUnlockAll => 'Odkleni vse dodatke';

  @override
  String get devClearLyricsCache => 'Počisti predpomnilnik besedil';

  @override
  String get devRefetchLyrics => 'Ponovno pridobi vsa besedila …';

  @override
  String get devLyricsCleared => 'Predpomnilnik besedil počiščen';

  @override
  String get devHideOptions => 'Skrij razvijalske možnosti';

  @override
  String get devModeOff => 'Razvijalski način izklopljen';

  @override
  String get youCantReadFolders => 'Vaših glasbenih map ni mogoče prebrati';

  @override
  String get youNoMusicFolders => 'Ni najdenih glasbenih map';
}
