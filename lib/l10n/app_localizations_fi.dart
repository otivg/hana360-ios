// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'Kieli';

  @override
  String get languageFollowSystem => 'Seuraa järjestelmää';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Hana360';

  @override
  String get commonCancel => 'Peruuta';

  @override
  String get commonConfirm => 'OK';

  @override
  String get commonBack => 'Takaisin';

  @override
  String get commonDone => 'Valmis';

  @override
  String get commonUnknown => 'Tuntematon';

  @override
  String get secUpmix => 'Upmix-moottori';

  @override
  String get spatialAudioTitle => '360° tilaääni';

  @override
  String get npNothingPlaying => 'Ei toistoa vielä';

  @override
  String get npPickSong => 'Valitse kappale kirjastostasi';

  @override
  String get npSpatialSettings => '360°-asetukset';

  @override
  String get npLyrics => 'Sanat';

  @override
  String get libSearchHint => 'Etsi musiikistasi…';

  @override
  String get libClearLibrary => 'Tyhjennä kirjasto';

  @override
  String get libImportMusic => 'Tuo musiikkia';

  @override
  String libError(String error) {
    return 'Jokin meni pieleen: $error';
  }

  @override
  String libNoMatch(String query) {
    return 'Ei osumia haulle \"$query\"';
  }

  @override
  String get libPermissionDenied =>
      'Hana360 tarvitsee luvan löytääkseen musiikkisi\nEi pääsyä tällä laitteella? Tuo sen sijaan.';

  @override
  String get libNoSongs =>
      'Tältä laitteelta ei löytynyt kappaleita\nTuo musiikkia tiedostoistasi aloittaaksesi';

  @override
  String get libGrantAccess => 'Myönnä pääsy';

  @override
  String get libRescan => 'Skannaa uudelleen';

  @override
  String get libAddedToQueue => 'Lisätty jonoon';

  @override
  String get libNoAlbums => 'Ei vielä albumeja';

  @override
  String get libNoFolders => 'Ei vielä kansioita';

  @override
  String get libNoPlaylists => 'Ei vielä soittolistoja';

  @override
  String libPlaylistCreated(String name) {
    return 'Soittolista \"$name\" luotu 🌸';
  }

  @override
  String get libFolderHint =>
      'pidä kansiota pohjassa muuttaaksesi sen soittolistaksi';

  @override
  String libSongCount(int count) {
    return '$count kappaletta';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count kappaletta · $path';
  }

  @override
  String get homeGreetingLate => 'Valvot myöhään ♪';

  @override
  String get homeGreetingMorning => 'Hyvää huomenta ♪';

  @override
  String get homeGreetingAfternoon => 'Hyvää iltapäivää ♪';

  @override
  String get homeGreetingEvening => 'Hyvää iltaa ♪';

  @override
  String get homeJumpBackIn => 'PALAA TAKAISIN';

  @override
  String get homeForYou => 'SINULLE';

  @override
  String get homeForYouSub => 'valittu tällä laitteella kuuntelusi perusteella';

  @override
  String get homeWelcome => 'Tervetuloa Hana360:een 🌸';

  @override
  String get homeAllQuiet => 'Kaikki hiljaista 🌸';

  @override
  String get homeLibraryHint =>
      'Musiikkisi asuu Kirjasto-välilehdellä — lisää kansioita siellä. Kaikki, mitä toistat, kertyy tänne.';

  @override
  String get homePlayHint =>
      'Toista jotain, niin se odottaa täällä ensi kerralla.';

  @override
  String get youRescanLibrary => 'Skannaa kirjasto uudelleen';

  @override
  String get youExcludedFolders => 'Poissuljetut kansiot';

  @override
  String get youExcludedFoldersSub => 'Piilota kansiot kirjastostasi';

  @override
  String get youCatMode => 'Kissatila';

  @override
  String get youAbout => 'Tietoja';

  @override
  String get youScanning => 'Skannataan musiikkiasi…';

  @override
  String get youOpenSource => 'Avoin lähdekoodi';

  @override
  String get youOpenSourceSub =>
      'Hana360 on johdannainen Hanamimista (GPLv3), tekijä ShaptakNaskar — muokattu 2026-08-10';

  @override
  String get youCheckUpdates => 'Tarkista päivitykset';

  @override
  String get youCheckUpdatesSub => 'Uudet versiot tulevat GitHub Releasesiin';

  @override
  String get youUpToDate => 'Olet ajan tasalla 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Tehnyt Sappy';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'Jatka toistoa taustalla';

  @override
  String get youKeepPlayingAllowed =>
      'Sallittu — järjestelmä ei keskeytä musiikkiasi';

  @override
  String get youKeepPlayingTap =>
      'Napauta estääksesi järjestelmää pysäyttämästä toistoa';

  @override
  String get youExcludedFoldersTitle => 'Poissuljetut kansiot';

  @override
  String get youExcludedFoldersDesc =>
      'Pois päältä olevissa kansioissa olevat kappaleet jätetään pois kirjastosta';

  @override
  String get youVisSensitivity => 'Visualisaattorin herkkyys';

  @override
  String get youVisSensitivitySub =>
      'Nosta kappaleille, jotka tuskin liikuttavat sitä';

  @override
  String get youNerdMode => 'Nörttitila';

  @override
  String get youNerdModeSub =>
      'Näytä koodekki, bittinopeus ja äänilähtö Nyt soi -näkymässä';

  @override
  String get youEqualizer => 'Taajuuskorjain';

  @override
  String get youComingSoon => 'Tulossa pian';

  @override
  String get sleepTimer => 'Uniajastin';

  @override
  String get sleep15 => '15 minuuttia';

  @override
  String get sleep30 => '30 minuuttia';

  @override
  String get sleep1h => '1 tunti';

  @override
  String get sleepEndTrack => 'Kappaleen lopussa';

  @override
  String get sleepFading => 'Häivytetään… kauniita unia';

  @override
  String sleepIn(String time) {
    return 'Nukutaan $time päästä';
  }

  @override
  String get sleepEndTrackActive => 'Nukutaan, kun tämä kappale loppuu';

  @override
  String get sleepCancel => 'Peruuta ajastin';

  @override
  String get queueUpNext => 'Seuraavaksi';

  @override
  String get queueEmpty => 'Jono on tyhjä';

  @override
  String get updateAvailable => 'Päivitys saatavilla ✨';

  @override
  String get updateNoNotes => 'Ei julkaisutietoja.';

  @override
  String get updateInstalling => 'Avataan asennusta…';

  @override
  String get updateFailed => 'Päivitys epäonnistui — yritä myöhemmin uudelleen';

  @override
  String get updateLater => 'Myöhemmin';

  @override
  String get updateRetry => 'Yritä uudelleen';

  @override
  String get updateNow => 'Päivitä';

  @override
  String get spatialToggleTitle => '360° tilaääni';

  @override
  String get spatialOn => 'Päällä';

  @override
  String get spatialOff => 'Pois';

  @override
  String get lyricsNoFound => 'Sanoja ei löytynyt';

  @override
  String get lyricsJustListening => 'Tämä on vain kuuntelua varten';

  @override
  String get lyricsTrySource => 'Kokeile toista lähdettä';

  @override
  String get lyricsSource => 'Sanojen lähde';

  @override
  String get lyricsWordSynced => 'Sanasynkronoitu';

  @override
  String get lyricsLineSynced => 'Rivisynkronoitu';

  @override
  String get lyricsUnsynced => 'Synkronoimaton';

  @override
  String get plNoPlaylists => 'Ei soittolistoja vielä — tee ensin yksi!';

  @override
  String get plAddToPlaylist => 'Lisää soittolistaan';

  @override
  String plAddedTo(String name) {
    return 'Lisätty kohteeseen $name';
  }

  @override
  String get shareLyrics => 'Jaa sanat';

  @override
  String get shareMaxLines => 'Enimmäismäärä rivejä valittu';

  @override
  String sharePickLines(int count) {
    return 'Valitse enintään $count riviä';
  }

  @override
  String get sharePickHint => 'Valitse joitain rivejä alta…';

  @override
  String get shareButton => 'Jaa';

  @override
  String get batTitle => 'Pidä musiikki soimassa 🎵';

  @override
  String get batBody =>
      'Androidin akun optimointi voi keskeyttää musiikin, kun näyttö on pois päältä. Salli Hana360:n toimia rajoituksetta, jotta toisto pysyy vakaana.\n\nVoit muuttaa tätä milloin tahansa kohdassa Sinä → \"Jatka toistoa taustalla\".';

  @override
  String get batNotNow => 'Ei nyt';

  @override
  String get batAllow => 'Salli';

  @override
  String get algoSwitch => 'Algoritmi';

  @override
  String get speakerDistance => 'Kaiuttimen etäisyys';

  @override
  String get channelTrim => 'Kanavan trimmi';

  @override
  String get masterGain => 'Master-vahvistus';

  @override
  String get secHrtf => 'HRTF-personointi';

  @override
  String get outputGain => 'Lähtövahvistus';

  @override
  String get secEq => 'Tila-EQ';

  @override
  String get secReverb => 'Kaiku';

  @override
  String get roomSize => 'Huone';

  @override
  String get reverbGain => 'Kaiun vahvistus';

  @override
  String get secTracking => 'Pään seuranta';

  @override
  String get trackOff => 'Pois';

  @override
  String get trackSensor => 'Puhelimen anturi';

  @override
  String get trackManual => 'Manuaalinen XY';

  @override
  String get dragHint => 'Vedä säätääksesi pään suuntaa (äänikenttä seuraa)';

  @override
  String get customEq => 'Mukautettu';

  @override
  String get eqPresetMusic => 'Musiikki';

  @override
  String get eqPresetCinema => 'Elokuva';

  @override
  String get eqPresetGame => 'Peli';

  @override
  String get eqPresetVoice => 'Puhe';

  @override
  String get hrtfGroup0 => 'Mies / Pieni / Pieni';

  @override
  String get hrtfGroup1 => 'Mies / Pieni / Keskikokoinen';

  @override
  String get hrtfGroup2 => 'Mies / Pieni / Suuri';

  @override
  String get hrtfGroup3 => 'Mies / Keskikokoinen / Pieni';

  @override
  String get hrtfGroup4 => 'Mies / Keskikokoinen / Keskikokoinen';

  @override
  String get hrtfGroup5 => 'Mies / Keskikokoinen / Suuri';

  @override
  String get hrtfGroup6 => 'Mies / Suuri / Pieni';

  @override
  String get hrtfGroup7 => 'Mies / Suuri / Keskikokoinen';

  @override
  String get hrtfGroup8 => 'Mies / Suuri / Suuri';

  @override
  String get hrtfGroup9 => 'Nainen / Pieni / Pieni';

  @override
  String get hrtfGroup10 => 'Nainen / Pieni / Keskikokoinen';

  @override
  String get hrtfGroup11 => 'Nainen / Pieni / Suuri';

  @override
  String get hrtfGroup12 => 'Nainen / Keskikokoinen / Pieni';

  @override
  String get hrtfGroup13 => 'Nainen / Keskikokoinen / Keskikokoinen';

  @override
  String get hrtfGroup14 => 'Nainen / Keskikokoinen / Suuri';

  @override
  String get navHome => 'Koti';

  @override
  String get navLibrary => 'Kirjasto';

  @override
  String get navPlaying => 'Toistossa';

  @override
  String get navYou => 'Sinä';

  @override
  String get tabSongs => 'Kappaleet';

  @override
  String get tabAlbums => 'Albumit';

  @override
  String get tabFolders => 'Kansiot';

  @override
  String get tabPlaylists => 'Soittolistat';

  @override
  String get youMood => 'TUNNELMA';

  @override
  String get youCompanion => 'SEURALAISESI';

  @override
  String get youBuddies => 'KAVERIT';

  @override
  String get youSound => 'ÄÄNI';

  @override
  String get youMore => 'LISÄÄ';

  @override
  String get themeCherryBlossom => 'Kirsikankukka';

  @override
  String get themeStarryNight => 'Tähtiyö';

  @override
  String get themeAdaptiveLight => 'Mukautuva vaalea';

  @override
  String get themeAdaptiveDark => 'Mukautuva tumma';

  @override
  String youListenedTogether(int h, int m) {
    return '$h t $m min kuunneltu yhdessä';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'Ylätunniste ja Nyt soi';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'Istuu kirjaston otsikolla';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'Torkkuu minisoittimella';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'Keikistelee tykättyjen kappaleiden päällä';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'Hehkuvat tummilla teemoilla';

  @override
  String get accBow => 'Vaaleanpunainen rusetti';

  @override
  String get accHeadphones => 'Pienet kuulokkeet';

  @override
  String get accFlower => 'Kukka';

  @override
  String get accCrown => 'Pieni kruunu';

  @override
  String accUnlockLabel(int h) {
    return 'Kuuntele $h tuntia';
  }

  @override
  String get youCrossfade => 'Ristiinhäivytys';

  @override
  String get youCrossfadeSub => 'Sekoita kappaleen loppu seuraavaan';

  @override
  String get youSmartShuffle => 'Älykäs sekoitus';

  @override
  String get youSmartShuffleSub =>
      'Sekoitus painottuu suosikkeihisi — lasketaan tällä laitteella';

  @override
  String get libLikedSongs => 'Tykätyt kappaleet';

  @override
  String get libTapHeart => 'Napauta sydäntä kappaleessa pitääksesi sen täällä';

  @override
  String get libRemovedFromQueue => 'Poistettu jonosta';

  @override
  String get libRemovedFromLibrary => 'Poistettu kirjastosta';

  @override
  String get libRemoveFromLibrary => 'Poista kirjastosta';

  @override
  String get libNewPlaylist => 'Uusi soittolista';

  @override
  String get libPlaylistName => 'Soittolistan nimi';

  @override
  String get libCreate => 'Luo';

  @override
  String get libSwipeHint =>
      'pyyhkäise vasemmalle poistaaksesi · pidä pohjassa järjestääksesi';

  @override
  String get libChooseCover => 'Valitse kansikuva';

  @override
  String get libBackToArtCover => 'Takaisin kappaleen kanteen';

  @override
  String libDeleteConfirm(String name) {
    return 'Poista \"$name\"?';
  }

  @override
  String get libDeleteKeepSongs => 'Itse kappaleet pysyvät laitteellasi';

  @override
  String get libKeep => 'Pidä';

  @override
  String get libDelete => 'Poista';

  @override
  String get libRemoveKeepFile => 'Itse tiedosto pysyy laitteellasi';

  @override
  String get libClearConfirm => 'Poista kaikki tiedostot?';

  @override
  String get libLibraryCleared => 'Kirjasto tyhjennetty';

  @override
  String get libPickAudioFiles => 'Valitse äänitiedostoja…';

  @override
  String get libImportFolder => 'Tuo kansio';

  @override
  String get libScanWholeFolder => 'Skannaa koko kansio… (suositeltu)';

  @override
  String libImportFailed(String error) {
    return 'Tuonti epäonnistui: $error';
  }

  @override
  String get libNoAudioFound => 'Äänitiedostoja ei löytynyt';

  @override
  String libImportedCount(int count) {
    return 'Tuotu $count kappaletta';
  }

  @override
  String get libNothingHere =>
      'Ei vielä mitään — pyyhkäise vasemmalle poistaaksesi, pidä pohjassa järjestääksesi';

  @override
  String get sidebarYourLibrary => 'KIRJASTOSI';

  @override
  String get sidebarPlaylists => 'SOITTOLISTAT';

  @override
  String get sidebarFolders => 'KANSIOT';

  @override
  String get rowQueue => 'Jono';

  @override
  String get rowRemove => 'Poista';

  @override
  String get rowPlaylist => 'Soittolista';

  @override
  String plTrackCount(int count) {
    return '$count raitaa';
  }

  @override
  String get lyricsSourceAuto => 'Auto';

  @override
  String get lyricsSourceEmbedded => 'Upotettu';

  @override
  String get lyricsSourceBestQuality => 'Paras saatavilla oleva laatu';

  @override
  String get lyricsSourceFileTags => 'Äänitiedoston omista tunnisteista';

  @override
  String get lyricsSourceWordOnline => 'Sanasynkronoitu (online)';

  @override
  String get lyricsSourceLineOnline => 'Rivisynkronoitu (online)';

  @override
  String get lyricsSourceNotFound => 'Ei löytynyt tälle kappaleelle';

  @override
  String get npCatModeUnlocked => 'Miau?! Kissatila avattu 🐱';

  @override
  String get shellResumePlayback => 'Jatka toistoa';

  @override
  String get shellPlay => 'TOISTA';

  @override
  String get devSection => 'KEHITTÄJÄ';

  @override
  String get devModeUnlocked => '🛠️ Kehittäjätila avattu';

  @override
  String get devUnlockAll => 'Avaa kaikki lisävarusteet';

  @override
  String get devClearLyricsCache => 'Tyhjennä sanojen välimuisti';

  @override
  String get devRefetchLyrics => 'Hae kaikki sanat uudelleen…';

  @override
  String get devLyricsCleared => 'Sanojen välimuisti tyhjennetty';

  @override
  String get devHideOptions => 'Piilota kehittäjäasetukset';

  @override
  String get devModeOff => 'Kehittäjätila pois';

  @override
  String get youCantReadFolders => 'Musiikkikansioitasi ei voitu lukea';

  @override
  String get youNoMusicFolders => 'Musiikkikansioita ei löytynyt';
}
