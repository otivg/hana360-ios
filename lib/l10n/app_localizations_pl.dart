// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'Język';

  @override
  String get languageFollowSystem => 'Zgodnie z systemem';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Hana360';

  @override
  String get commonCancel => 'Anuluj';

  @override
  String get commonConfirm => 'OK';

  @override
  String get commonBack => 'Wstecz';

  @override
  String get commonDone => 'Gotowe';

  @override
  String get commonUnknown => 'Nieznany';

  @override
  String get secUpmix => 'Silnik upmix';

  @override
  String get spatialAudioTitle => 'Dźwięk przestrzenny 360°';

  @override
  String get npNothingPlaying => 'Nic nie jest odtwarzane';

  @override
  String get npPickSong => 'Wybierz utwór ze swojej biblioteki';

  @override
  String get npSpatialSettings => 'Ustawienia 360°';

  @override
  String get npLyrics => 'Teksty';

  @override
  String get libSearchHint => 'Szukaj w swojej muzyce…';

  @override
  String get libClearLibrary => 'Wyczyść bibliotekę';

  @override
  String get libImportMusic => 'Importuj muzykę';

  @override
  String libError(String error) {
    return 'Coś poszło nie tak: $error';
  }

  @override
  String libNoMatch(String query) {
    return 'Brak wyników dla \"$query\"';
  }

  @override
  String get libPermissionDenied =>
      'Hana360 potrzebuje uprawnień, aby znaleźć Twoją muzykę\nBrak dostępu na tym urządzeniu? Zaimportuj zamiast tego.';

  @override
  String get libNoSongs =>
      'Nie znaleziono utworów na tym urządzeniu\nZaimportuj muzykę ze swoich plików, aby rozpocząć';

  @override
  String get libGrantAccess => 'Udziel dostępu';

  @override
  String get libRescan => 'Skanuj ponownie';

  @override
  String get libAddedToQueue => 'Dodano do kolejki';

  @override
  String get libNoAlbums => 'Brak albumów';

  @override
  String get libNoFolders => 'Brak folderów';

  @override
  String get libNoPlaylists => 'Brak list odtwarzania';

  @override
  String libPlaylistCreated(String name) {
    return 'Utworzono listę \"$name\" 🌸';
  }

  @override
  String get libFolderHint =>
      'przytrzymaj folder, aby zamienić go w listę odtwarzania';

  @override
  String libSongCount(int count) {
    return '$count utworów';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count utworów · $path';
  }

  @override
  String get homeGreetingLate => 'Do późna ♪';

  @override
  String get homeGreetingMorning => 'Dzień dobry ♪';

  @override
  String get homeGreetingAfternoon => 'Dzień dobry ♪';

  @override
  String get homeGreetingEvening => 'Dobry wieczór ♪';

  @override
  String get homeJumpBackIn => 'WRÓĆ DO SŁUCHANIA';

  @override
  String get homeForYou => 'DLA CIEBIE';

  @override
  String get homeForYouSub =>
      'wybrane na tym urządzeniu, na podstawie Twoich odsłuchów';

  @override
  String get homeWelcome => 'Witaj w Hana360 🌸';

  @override
  String get homeAllQuiet => 'Wszystko cicho 🌸';

  @override
  String get homeLibraryHint =>
      'Twoja muzyka mieszka w zakładce Biblioteka — dodaj tam foldery. Wszystko, czego słuchasz, gromadzi się tutaj.';

  @override
  String get homePlayHint =>
      'Odtwórz coś, a będzie na Ciebie czekać następnym razem.';

  @override
  String get youRescanLibrary => 'Skanuj bibliotekę ponownie';

  @override
  String get youExcludedFolders => 'Wykluczone foldery';

  @override
  String get youExcludedFoldersSub => 'Ukryj foldery z biblioteki';

  @override
  String get youCatMode => 'Tryb kota';

  @override
  String get youAbout => 'O aplikacji';

  @override
  String get youScanning => 'Skanowanie Twojej muzyki…';

  @override
  String get youOpenSource => 'Open Source';

  @override
  String get youOpenSourceSub =>
      'Hana360 jest pochodną Hanamimi (GPLv3) autorstwa ShaptakNaskar — zmodyfikowano 2026-08-10';

  @override
  String get youCheckUpdates => 'Sprawdź aktualizacje';

  @override
  String get youCheckUpdatesSub =>
      'Nowe wersje pojawiają się w GitHub Releases';

  @override
  String get youUpToDate => 'Masz najnowszą wersję 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Stworzone przez Sappy';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'Odtwarzaj w tle';

  @override
  String get youKeepPlayingAllowed =>
      'Dozwolone — system nie wstrzyma Twojej muzyki';

  @override
  String get youKeepPlayingTap =>
      'Dotknij, aby powstrzymać system przed zatrzymaniem odtwarzania';

  @override
  String get youExcludedFoldersTitle => 'Wykluczone foldery';

  @override
  String get youExcludedFoldersDesc =>
      'Utwory w wyłączonych folderach są pomijane w bibliotece';

  @override
  String get youVisSensitivity => 'Czułość wizualizatora';

  @override
  String get youVisSensitivitySub =>
      'Zwiększ dla utworów, które ledwo go poruszają';

  @override
  String get youNerdMode => 'Tryb nerd';

  @override
  String get youNerdModeSub =>
      'Pokaż kodek, bitrate i wyjście audio na ekranie odtwarzania';

  @override
  String get youEqualizer => 'Korektor';

  @override
  String get youComingSoon => 'Wkrótce';

  @override
  String get sleepTimer => 'Wyłącznik czasowy';

  @override
  String get sleep15 => '15 minut';

  @override
  String get sleep30 => '30 minut';

  @override
  String get sleep1h => '1 godzina';

  @override
  String get sleepEndTrack => 'Koniec utworu';

  @override
  String get sleepFading => 'Wygaszanie… słodkich snów';

  @override
  String sleepIn(String time) {
    return 'Uśnięcie za $time';
  }

  @override
  String get sleepEndTrackActive => 'Uśnięcie po zakończeniu tego utworu';

  @override
  String get sleepCancel => 'Anuluj wyłącznik';

  @override
  String get queueUpNext => 'Następne';

  @override
  String get queueEmpty => 'Kolejka jest pusta';

  @override
  String get updateAvailable => 'Dostępna aktualizacja ✨';

  @override
  String get updateNoNotes => 'Brak informacji o wydaniu.';

  @override
  String get updateInstalling => 'Otwieranie instalatora…';

  @override
  String get updateFailed => 'Nie udało się zaktualizować — spróbuj później';

  @override
  String get updateLater => 'Później';

  @override
  String get updateRetry => 'Ponów';

  @override
  String get updateNow => 'Aktualizuj';

  @override
  String get spatialToggleTitle => 'Dźwięk przestrzenny 360°';

  @override
  String get spatialOn => 'Wł.';

  @override
  String get spatialOff => 'Wył.';

  @override
  String get lyricsNoFound => 'Nie znaleziono tekstu';

  @override
  String get lyricsJustListening => 'Ten utwór jest tylko do słuchania';

  @override
  String get lyricsTrySource => 'Wypróbuj inne źródło';

  @override
  String get lyricsSource => 'Źródło tekstów';

  @override
  String get lyricsWordSynced => 'Synchronizacja słów';

  @override
  String get lyricsLineSynced => 'Synchronizacja linii';

  @override
  String get lyricsUnsynced => 'Bez synchronizacji';

  @override
  String get plNoPlaylists => 'Brak list odtwarzania — najpierw utwórz jedną!';

  @override
  String get plAddToPlaylist => 'Dodaj do listy odtwarzania';

  @override
  String plAddedTo(String name) {
    return 'Dodano do $name';
  }

  @override
  String get shareLyrics => 'Udostępnij teksty';

  @override
  String get shareMaxLines => 'Wybrano maksymalną liczbę linii';

  @override
  String sharePickLines(int count) {
    return 'Wybierz do $count linii';
  }

  @override
  String get sharePickHint => 'Wybierz kilka linii poniżej…';

  @override
  String get shareButton => 'Udostępnij';

  @override
  String get batTitle => 'Odtwarzaj muzykę dalej 🎵';

  @override
  String get batBody =>
      'Optymalizacja baterii Androida może wstrzymać muzykę, gdy ekran jest wyłączony. Zezwól Hana360 na działanie bez ograniczeń, aby odtwarzanie było stabilne.\n\nMożesz to zmienić w dowolnym momencie w Ty → \"Odtwarzaj w tle\".';

  @override
  String get batNotNow => 'Nie teraz';

  @override
  String get batAllow => 'Zezwól';

  @override
  String get algoSwitch => 'Algorytm';

  @override
  String get speakerDistance => 'Odległość głośników';

  @override
  String get channelTrim => 'Trymowanie kanałów';

  @override
  String get masterGain => 'Wzmocnienie główne';

  @override
  String get secHrtf => 'Personalizacja HRTF';

  @override
  String get outputGain => 'Wzmocnienie wyjściowe';

  @override
  String get secEq => 'EQ przestrzenny';

  @override
  String get secReverb => 'Pogłos';

  @override
  String get roomSize => 'Pomieszczenie';

  @override
  String get reverbGain => 'Wzmocnienie pogłosu';

  @override
  String get secTracking => 'Śledzenie głowy';

  @override
  String get trackOff => 'Wył.';

  @override
  String get trackSensor => 'Czujnik telefonu';

  @override
  String get trackManual => 'Ręczne XY';

  @override
  String get dragHint =>
      'Przeciągnij, aby dostosować orientację głowy (pole dźwiękowe podąża)';

  @override
  String get customEq => 'Niestandardowy';

  @override
  String get eqPresetMusic => 'Muzyka';

  @override
  String get eqPresetCinema => 'Kino';

  @override
  String get eqPresetGame => 'Gra';

  @override
  String get eqPresetVoice => 'Głos';

  @override
  String get hrtfGroup0 => 'Mężczyzna / Mała / Mała';

  @override
  String get hrtfGroup1 => 'Mężczyzna / Mała / Średnia';

  @override
  String get hrtfGroup2 => 'Mężczyzna / Mała / Duża';

  @override
  String get hrtfGroup3 => 'Mężczyzna / Średnia / Mała';

  @override
  String get hrtfGroup4 => 'Mężczyzna / Średnia / Średnia';

  @override
  String get hrtfGroup5 => 'Mężczyzna / Średnia / Duża';

  @override
  String get hrtfGroup6 => 'Mężczyzna / Duża / Mała';

  @override
  String get hrtfGroup7 => 'Mężczyzna / Duża / Średnia';

  @override
  String get hrtfGroup8 => 'Mężczyzna / Duża / Duża';

  @override
  String get hrtfGroup9 => 'Kobieta / Mała / Mała';

  @override
  String get hrtfGroup10 => 'Kobieta / Mała / Średnia';

  @override
  String get hrtfGroup11 => 'Kobieta / Mała / Duża';

  @override
  String get hrtfGroup12 => 'Kobieta / Średnia / Mała';

  @override
  String get hrtfGroup13 => 'Kobieta / Średnia / Średnia';

  @override
  String get hrtfGroup14 => 'Kobieta / Średnia / Duża';

  @override
  String get navHome => 'Start';

  @override
  String get navLibrary => 'Biblioteka';

  @override
  String get navPlaying => 'Odtwarzanie';

  @override
  String get navYou => 'Ty';

  @override
  String get tabSongs => 'Utwory';

  @override
  String get tabAlbums => 'Albumy';

  @override
  String get tabFolders => 'Foldery';

  @override
  String get tabPlaylists => 'Listy odtwarzania';

  @override
  String get youMood => 'NASTRÓJ';

  @override
  String get youCompanion => 'TWÓJ TOWARZYSZ';

  @override
  String get youBuddies => 'KOMPANI';

  @override
  String get youSound => 'DŹWIĘK';

  @override
  String get youMore => 'WIĘCEJ';

  @override
  String get themeCherryBlossom => 'Kwiat wiśni';

  @override
  String get themeStarryNight => 'Gwiaździsta noc';

  @override
  String get themeAdaptiveLight => 'Adaptacyjny jasny';

  @override
  String get themeAdaptiveDark => 'Adaptacyjny ciemny';

  @override
  String youListenedTogether(int h, int m) {
    return '${h}g ${m}m wspólnego słuchania';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'Nagłówek i Odtwarzanie';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'Siedzi na tytule Biblioteki';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'Drzemie na mini-odtwarzaczu';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'Paraduje nad polubionymi utworami';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'Świecą na ciemnych motywach';

  @override
  String get accBow => 'Różowa kokarda';

  @override
  String get accHeadphones => 'Malutkie słuchawki';

  @override
  String get accFlower => 'Kwiat';

  @override
  String get accCrown => 'Malutka korona';

  @override
  String accUnlockLabel(int h) {
    return 'Słuchaj przez $h godzin';
  }

  @override
  String get youCrossfade => 'Przenikanie';

  @override
  String get youCrossfadeSub => 'Płynnie łącz koniec utworu z następnym';

  @override
  String get youSmartShuffle => 'Inteligentne losowanie';

  @override
  String get youSmartShuffleSub =>
      'Losowanie faworyzuje Twoje ulubione — obliczane na tym urządzeniu';

  @override
  String get libLikedSongs => 'Polubione utwory';

  @override
  String get libTapHeart => 'Dotknij serca przy utworze, aby go tu zatrzymać';

  @override
  String get libRemovedFromQueue => 'Usunięto z kolejki';

  @override
  String get libRemovedFromLibrary => 'Usunięto z biblioteki';

  @override
  String get libRemoveFromLibrary => 'Usuń z biblioteki';

  @override
  String get libNewPlaylist => 'Nowa lista odtwarzania';

  @override
  String get libPlaylistName => 'Nazwa listy';

  @override
  String get libCreate => 'Utwórz';

  @override
  String get libSwipeHint =>
      'przesuń w lewo, aby usunąć · przytrzymaj, aby zmienić kolejność';

  @override
  String get libChooseCover => 'Wybierz obraz okładki';

  @override
  String get libBackToArtCover => 'Wróć do okładki utworu';

  @override
  String libDeleteConfirm(String name) {
    return 'Usunąć \"$name\"?';
  }

  @override
  String get libDeleteKeepSongs => 'Same utwory pozostają na Twoim urządzeniu';

  @override
  String get libKeep => 'Zachowaj';

  @override
  String get libDelete => 'Usuń';

  @override
  String get libRemoveKeepFile => 'Sam plik pozostaje na Twoim urządzeniu';

  @override
  String get libClearConfirm => 'Usunąć wszystkie pliki?';

  @override
  String get libLibraryCleared => 'Biblioteka wyczyszczona';

  @override
  String get libPickAudioFiles => 'Wybierz pliki audio…';

  @override
  String get libImportFolder => 'Importuj folder';

  @override
  String get libScanWholeFolder => 'Skanuj cały folder… (zalecane)';

  @override
  String libImportFailed(String error) {
    return 'Import nieudany: $error';
  }

  @override
  String get libNoAudioFound => 'Nie znaleziono plików audio';

  @override
  String libImportedCount(int count) {
    return 'Zaimportowano $count utworów';
  }

  @override
  String get libNothingHere =>
      'Jeszcze nic tutaj — przesuń w lewo, aby usunąć, przytrzymaj, aby zmienić kolejność';

  @override
  String get sidebarYourLibrary => 'TWOJA BIBLIOTEKA';

  @override
  String get sidebarPlaylists => 'LISTY ODTWARZANIA';

  @override
  String get sidebarFolders => 'FOLDERY';

  @override
  String get rowQueue => 'Kolejka';

  @override
  String get rowRemove => 'Usuń';

  @override
  String get rowPlaylist => 'Lista odtwarzania';

  @override
  String plTrackCount(int count) {
    return '$count ścieżek';
  }

  @override
  String get lyricsSourceAuto => 'Auto';

  @override
  String get lyricsSourceEmbedded => 'Osadzone';

  @override
  String get lyricsSourceBestQuality => 'Najlepsza dostępna jakość';

  @override
  String get lyricsSourceFileTags => 'Z własnych tagów pliku audio';

  @override
  String get lyricsSourceWordOnline => 'Synchronizacja słów (online)';

  @override
  String get lyricsSourceLineOnline => 'Synchronizacja linii (online)';

  @override
  String get lyricsSourceNotFound => 'Nie znaleziono dla tego utworu';

  @override
  String get npCatModeUnlocked => 'Miau?! Odblokowano tryb kota 🐱';

  @override
  String get shellResumePlayback => 'Wznów odtwarzanie';

  @override
  String get shellPlay => 'ODTWÓRZ';

  @override
  String get devSection => 'DEWELOPER';

  @override
  String get devModeUnlocked => '🛠️ Odblokowano tryb dewelopera';

  @override
  String get devUnlockAll => 'Odblokuj wszystkie akcesoria';

  @override
  String get devClearLyricsCache => 'Wyczyść pamięć podręczną tekstów';

  @override
  String get devRefetchLyrics => 'Pobierz ponownie wszystkie teksty…';

  @override
  String get devLyricsCleared => 'Pamięć podręczna tekstów wyczyszczona';

  @override
  String get devHideOptions => 'Ukryj opcje dewelopera';

  @override
  String get devModeOff => 'Tryb dewelopera wyłączony';

  @override
  String get youCantReadFolders =>
      'Nie można odczytać Twoich folderów muzycznych';

  @override
  String get youNoMusicFolders => 'Nie znaleziono folderów muzycznych';
}
