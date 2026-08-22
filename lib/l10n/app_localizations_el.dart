// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class AppLocalizationsEl extends AppLocalizations {
  AppLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'Γλώσσα';

  @override
  String get languageFollowSystem => 'Ακολούθηση συστήματος';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Hana360';

  @override
  String get commonCancel => 'Ακύρωση';

  @override
  String get commonConfirm => 'OK';

  @override
  String get commonBack => 'Πίσω';

  @override
  String get commonDone => 'Τέλος';

  @override
  String get commonUnknown => 'Άγνωστο';

  @override
  String get secUpmix => 'Μηχανή upmix';

  @override
  String get spatialAudioTitle => 'Χωρικός ήχος 360°';

  @override
  String get npNothingPlaying => 'Δεν αναπαράγεται τίποτα ακόμα';

  @override
  String get npPickSong => 'Διάλεξε ένα τραγούδι από τη βιβλιοθήκη σου';

  @override
  String get npSpatialSettings => 'Ρυθμίσεις 360°';

  @override
  String get npLyrics => 'Στίχοι';

  @override
  String get libSearchHint => 'Αναζήτηση στη μουσική σου…';

  @override
  String get libClearLibrary => 'Καθαρισμός βιβλιοθήκης';

  @override
  String get libImportMusic => 'Εισαγωγή μουσικής';

  @override
  String libError(String error) {
    return 'Κάτι πήγε στραβά: $error';
  }

  @override
  String libNoMatch(String query) {
    return 'Τίποτα δεν αντιστοιχεί στο \"$query\"';
  }

  @override
  String get libPermissionDenied =>
      'Το Hana360 χρειάζεται άδεια για να βρει τη μουσική σου\nΔεν υπάρχει πρόσβαση σε αυτή τη συσκευή; Εισαγωγή αντ\' αυτού.';

  @override
  String get libNoSongs =>
      'Δεν βρέθηκαν τραγούδια σε αυτή τη συσκευή\nΕισαγωγή μουσικής από τα αρχεία σου για να ξεκινήσεις';

  @override
  String get libGrantAccess => 'Παροχή πρόσβασης';

  @override
  String get libRescan => 'Νέα σάρωση';

  @override
  String get libAddedToQueue => 'Προστέθηκε στην ουρά';

  @override
  String get libNoAlbums => 'Κανένα άλμπουμ ακόμα';

  @override
  String get libNoFolders => 'Κανένας φάκελος ακόμα';

  @override
  String get libNoPlaylists => 'Καμία λίστα αναπαραγωγής ακόμα';

  @override
  String libPlaylistCreated(String name) {
    return 'Η λίστα \"$name\" δημιουργήθηκε 🌸';
  }

  @override
  String get libFolderHint =>
      'κράτησε πατημένο έναν φάκελο για να τον μετατρέψεις σε λίστα';

  @override
  String libSongCount(int count) {
    return '$count τραγούδια';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count τραγούδια · $path';
  }

  @override
  String get homeGreetingLate => 'Ξύπνιος αργά ♪';

  @override
  String get homeGreetingMorning => 'Καλημέρα ♪';

  @override
  String get homeGreetingAfternoon => 'Καλησπέρα ♪';

  @override
  String get homeGreetingEvening => 'Καλό βράδυ ♪';

  @override
  String get homeJumpBackIn => 'ΣΥΝΕΧΙΣΕ';

  @override
  String get homeForYou => 'ΓΙΑ ΣΕΝΑ';

  @override
  String get homeForYouSub =>
      'επιλεγμένο σε αυτή τη συσκευή από τις ακροάσεις σου';

  @override
  String get homeWelcome => 'Καλώς ήρθες στο Hana360 🌸';

  @override
  String get homeAllQuiet => 'Όλα ήσυχα 🌸';

  @override
  String get homeLibraryHint =>
      'Η μουσική σου ζει στην καρτέλα Βιβλιοθήκη — πρόσθεσε εκεί φακέλους. Ό,τι αναπαράγεις μαζεύεται εδώ.';

  @override
  String get homePlayHint =>
      'Παίξε κάτι και θα σε περιμένει εδώ την επόμενη φορά.';

  @override
  String get youRescanLibrary => 'Νέα σάρωση βιβλιοθήκης';

  @override
  String get youExcludedFolders => 'Εξαιρούμενοι φάκελοι';

  @override
  String get youExcludedFoldersSub => 'Απόκρυψη φακέλων από τη βιβλιοθήκη';

  @override
  String get youCatMode => 'Λειτουργία γάτας';

  @override
  String get youAbout => 'Σχετικά';

  @override
  String get youScanning => 'Σάρωση της μουσικής σου…';

  @override
  String get youOpenSource => 'Open Source';

  @override
  String get youOpenSourceSub =>
      'Το Hana360 είναι παράγωγο του Hanamimi (GPLv3) του ShaptakNaskar — τροποποιήθηκε 2026-08-10';

  @override
  String get youCheckUpdates => 'Έλεγχος ενημερώσεων';

  @override
  String get youCheckUpdatesSub => 'Νέες εκδόσεις έρχονται στο GitHub Releases';

  @override
  String get youUpToDate => 'Είσαι ενημερωμένος 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Φτιαγμένο από τον Sappy';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'Συνέχιση αναπαραγωγής στο παρασκήνιο';

  @override
  String get youKeepPlayingAllowed =>
      'Επιτρέπεται — το σύστημα δεν θα διακόψει τη μουσική σου';

  @override
  String get youKeepPlayingTap =>
      'Πάτησε για να μην σταματά το σύστημα την αναπαραγωγή';

  @override
  String get youExcludedFoldersTitle => 'Εξαιρούμενοι φάκελοι';

  @override
  String get youExcludedFoldersDesc =>
      'Τα τραγούδια σε απενεργοποιημένους φακέλους εξαιρούνται από τη βιβλιοθήκη';

  @override
  String get youVisSensitivity => 'Ευαισθησία οπτικοποιητή';

  @override
  String get youVisSensitivitySub =>
      'Αύξησέ την για τραγούδια που μετά βίας τον κινούν';

  @override
  String get youNerdMode => 'Λειτουργία nerd';

  @override
  String get youNerdModeSub =>
      'Εμφάνιση κωδικοποιητή, bitrate και εξόδου ήχου στο Παίζει τώρα';

  @override
  String get youEqualizer => 'Ισοσταθμιστής';

  @override
  String get youComingSoon => 'Έρχεται σύντομα';

  @override
  String get sleepTimer => 'Χρονοδιακόπτης ύπνου';

  @override
  String get sleep15 => '15 λεπτά';

  @override
  String get sleep30 => '30 λεπτά';

  @override
  String get sleep1h => '1 ώρα';

  @override
  String get sleepEndTrack => 'Τέλος τραγουδιού';

  @override
  String get sleepFading => 'Σβήσιμο… όνειρα γλυκά';

  @override
  String sleepIn(String time) {
    return 'Ύπνος σε $time';
  }

  @override
  String get sleepEndTrackActive => 'Ύπνος όταν τελειώσει αυτό το τραγούδι';

  @override
  String get sleepCancel => 'Ακύρωση χρονοδιακόπτη';

  @override
  String get queueUpNext => 'Επόμενο';

  @override
  String get queueEmpty => 'Η ουρά είναι κενή';

  @override
  String get updateAvailable => 'Διαθέσιμη ενημέρωση ✨';

  @override
  String get updateNoNotes => 'Καμία σημείωση έκδοσης.';

  @override
  String get updateInstalling => 'Άνοιγμα εγκατάστασης…';

  @override
  String get updateFailed => 'Η ενημέρωση απέτυχε — δοκίμασε αργότερα';

  @override
  String get updateLater => 'Αργότερα';

  @override
  String get updateRetry => 'Επανάληψη';

  @override
  String get updateNow => 'Ενημέρωση';

  @override
  String get spatialToggleTitle => 'Χωρικός ήχος 360°';

  @override
  String get spatialOn => 'Ενεργό';

  @override
  String get spatialOff => 'Ανενεργό';

  @override
  String get lyricsNoFound => 'Δεν βρέθηκαν στίχοι';

  @override
  String get lyricsJustListening => 'Αυτό είναι μόνο για ακρόαση';

  @override
  String get lyricsTrySource => 'Δοκίμασε άλλη πηγή';

  @override
  String get lyricsSource => 'Πηγή στίχων';

  @override
  String get lyricsWordSynced => 'Συγχρονισμένο ανά λέξη';

  @override
  String get lyricsLineSynced => 'Συγχρονισμένο ανά γραμμή';

  @override
  String get lyricsUnsynced => 'Μη συγχρονισμένο';

  @override
  String get plNoPlaylists => 'Καμία λίστα ακόμα — φτιάξε πρώτα μία!';

  @override
  String get plAddToPlaylist => 'Προσθήκη στη λίστα';

  @override
  String plAddedTo(String name) {
    return 'Προστέθηκε στο $name';
  }

  @override
  String get shareLyrics => 'Κοινοποίηση στίχων';

  @override
  String get shareMaxLines => 'Επιλέχθηκε μέγιστος αριθμός γραμμών';

  @override
  String sharePickLines(int count) {
    return 'Επίλεξε έως $count γραμμές';
  }

  @override
  String get sharePickHint => 'Επίλεξε μερικές γραμμές παρακάτω…';

  @override
  String get shareButton => 'Κοινοποίηση';

  @override
  String get batTitle => 'Συνέχισε να παίζει η μουσική 🎵';

  @override
  String get batBody =>
      'Η βελτιστοποίηση μπαταρίας του Android μπορεί να διακόψει τη μουσική όταν η οθόνη είναι κλειστή. Επίτρεψε στο Hana360 να τρέχει χωρίς περιορισμούς για σταθερή αναπαραγωγή.\n\nΜπορείς να το αλλάξεις ανά πάσα στιγμή στο Εσύ → \"Συνέχιση αναπαραγωγής στο παρασκήνιο\".';

  @override
  String get batNotNow => 'Όχι τώρα';

  @override
  String get batAllow => 'Να επιτραπεί';

  @override
  String get algoSwitch => 'Αλγόριθμος';

  @override
  String get speakerDistance => 'Απόσταση ηχείων';

  @override
  String get channelTrim => 'Περικοπή καναλιού';

  @override
  String get masterGain => 'Κύρια ενίσχυση';

  @override
  String get secHrtf => 'Εξατομίκευση HRTF';

  @override
  String get outputGain => 'Ενίσχυση εξόδου';

  @override
  String get secEq => 'Χωρικό EQ';

  @override
  String get secReverb => 'Αντήχηση';

  @override
  String get roomSize => 'Δωμάτιο';

  @override
  String get reverbGain => 'Ενίσχυση αντήχησης';

  @override
  String get secTracking => 'Παρακολούθηση κεφαλής';

  @override
  String get trackOff => 'Ανενεργό';

  @override
  String get trackSensor => 'Αισθητήρας τηλεφώνου';

  @override
  String get trackManual => 'Χειροκίνητο XY';

  @override
  String get dragHint =>
      'Σύρε για να ρυθμίσεις τον προσανατολισμό της κεφαλής (το ηχητικό πεδίο ακολουθεί)';

  @override
  String get customEq => 'Προσαρμοσμένο';

  @override
  String get eqPresetMusic => 'Μουσική';

  @override
  String get eqPresetCinema => 'Κινηματογράφος';

  @override
  String get eqPresetGame => 'Παιχνίδι';

  @override
  String get eqPresetVoice => 'Φωνή';

  @override
  String get hrtfGroup0 => 'Άνδρας / Μικρό / Μικρό';

  @override
  String get hrtfGroup1 => 'Άνδρας / Μικρό / Μεσαίο';

  @override
  String get hrtfGroup2 => 'Άνδρας / Μικρό / Μεγάλο';

  @override
  String get hrtfGroup3 => 'Άνδρας / Μεσαίο / Μικρό';

  @override
  String get hrtfGroup4 => 'Άνδρας / Μεσαίο / Μεσαίο';

  @override
  String get hrtfGroup5 => 'Άνδρας / Μεσαίο / Μεγάλο';

  @override
  String get hrtfGroup6 => 'Άνδρας / Μεγάλο / Μικρό';

  @override
  String get hrtfGroup7 => 'Άνδρας / Μεγάλο / Μεσαίο';

  @override
  String get hrtfGroup8 => 'Άνδρας / Μεγάλο / Μεγάλο';

  @override
  String get hrtfGroup9 => 'Γυναίκα / Μικρό / Μικρό';

  @override
  String get hrtfGroup10 => 'Γυναίκα / Μικρό / Μεσαίο';

  @override
  String get hrtfGroup11 => 'Γυναίκα / Μικρό / Μεγάλο';

  @override
  String get hrtfGroup12 => 'Γυναίκα / Μεσαίο / Μικρό';

  @override
  String get hrtfGroup13 => 'Γυναίκα / Μεσαίο / Μεσαίο';

  @override
  String get hrtfGroup14 => 'Γυναίκα / Μεσαίο / Μεγάλο';

  @override
  String get navHome => 'Αρχική';

  @override
  String get navLibrary => 'Βιβλιοθήκη';

  @override
  String get navPlaying => 'Αναπαραγωγή';

  @override
  String get navYou => 'Εσύ';

  @override
  String get tabSongs => 'Τραγούδια';

  @override
  String get tabAlbums => 'Άλμπουμ';

  @override
  String get tabFolders => 'Φάκελοι';

  @override
  String get tabPlaylists => 'Λίστες';

  @override
  String get youMood => 'ΔΙΑΘΕΣΗ';

  @override
  String get youCompanion => 'Ο ΣΥΝΤΡΟΦΟΣ ΣΟΥ';

  @override
  String get youBuddies => 'ΦΙΛΟΙ';

  @override
  String get youSound => 'ΗΧΟΣ';

  @override
  String get youMore => 'ΠΕΡΙΣΣΟΤΕΡΑ';

  @override
  String get themeCherryBlossom => 'Άνθος κερασιάς';

  @override
  String get themeStarryNight => 'Έναστρη νύχτα';

  @override
  String get themeAdaptiveLight => 'Προσαρμοστικό φωτεινό';

  @override
  String get themeAdaptiveDark => 'Προσαρμοστικό σκούρο';

  @override
  String youListenedTogether(int h, int m) {
    return '$h ώ $m λ ακρόασης μαζί';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'Κεφαλίδα και Παίζει τώρα';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'Κάθεται στον τίτλο της βιβλιοθήκης';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'Κοιμάται στο mini player';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'Περπατά πάνω από τα αγαπημένα';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'Λάμπουν στα σκούρα θέματα';

  @override
  String get accBow => 'Ροζ φιόγκος';

  @override
  String get accHeadphones => 'Μικροσκοπικά ακουστικά';

  @override
  String get accFlower => 'Λουλούδι';

  @override
  String get accCrown => 'Μικρή κορώνα';

  @override
  String accUnlockLabel(int h) {
    return 'Άκουσε για $h ώρες';
  }

  @override
  String get youCrossfade => 'Crossfade';

  @override
  String get youCrossfadeSub =>
      'Ανάμειξε το τέλος ενός τραγουδιού με το επόμενο';

  @override
  String get youSmartShuffle => 'Έξυπνη αναπαραγωγή';

  @override
  String get youSmartShuffleSub =>
      'Η αναπαραγωγή κλίνει προς τα αγαπημένα σου — υπολογίζεται σε αυτή τη συσκευή';

  @override
  String get libLikedSongs => 'Αγαπημένα τραγούδια';

  @override
  String get libTapHeart =>
      'Πάτησε την καρδιά σε ένα τραγούδι για να το κρατήσεις εδώ';

  @override
  String get libRemovedFromQueue => 'Αφαιρέθηκε από την ουρά';

  @override
  String get libRemovedFromLibrary => 'Αφαιρέθηκε από τη βιβλιοθήκη';

  @override
  String get libRemoveFromLibrary => 'Αφαίρεση από τη βιβλιοθήκη';

  @override
  String get libNewPlaylist => 'Νέα λίστα';

  @override
  String get libPlaylistName => 'Όνομα λίστας';

  @override
  String get libCreate => 'Δημιουργία';

  @override
  String get libSwipeHint =>
      'σύρε αριστερά για αφαίρεση · κράτησε για αναδιάταξη';

  @override
  String get libChooseCover => 'Επίλεξε εικόνα εξωφύλλου';

  @override
  String get libBackToArtCover => 'Πίσω στο εξώφυλλο τραγουδιού';

  @override
  String libDeleteConfirm(String name) {
    return 'Διαγραφή \"$name\"?';
  }

  @override
  String get libDeleteKeepSongs =>
      'Τα ίδια τα τραγούδια παραμένουν στη συσκευή σου';

  @override
  String get libKeep => 'Κράτηση';

  @override
  String get libDelete => 'Διαγραφή';

  @override
  String get libRemoveKeepFile => 'Το ίδιο το αρχείο παραμένει στη συσκευή σου';

  @override
  String get libClearConfirm => 'Αφαίρεση όλων των αρχείων;';

  @override
  String get libLibraryCleared => 'Η βιβλιοθήκη καθαρίστηκε';

  @override
  String get libPickAudioFiles => 'Επίλεξε αρχεία ήχου…';

  @override
  String get libImportFolder => 'Εισαγωγή φακέλου';

  @override
  String get libScanWholeFolder => 'Σάρωση ολόκληρου φακέλου… (συνιστάται)';

  @override
  String libImportFailed(String error) {
    return 'Η εισαγωγή απέτυχε: $error';
  }

  @override
  String get libNoAudioFound => 'Δεν βρέθηκαν αρχεία ήχου';

  @override
  String libImportedCount(int count) {
    return 'Εισήχθησαν $count τραγούδια';
  }

  @override
  String get libNothingHere =>
      'Τίποτα εδώ ακόμα — σύρε αριστερά για αφαίρεση, κράτησε για αναδιάταξη';

  @override
  String get sidebarYourLibrary => 'Η ΒΙΒΛΙΟΘΗΚΗ ΣΟΥ';

  @override
  String get sidebarPlaylists => 'ΛΙΣΤΕΣ ΑΝΑΠΑΡΑΓΩΓΗΣ';

  @override
  String get sidebarFolders => 'ΦΑΚΕΛΟΙ';

  @override
  String get rowQueue => 'Ουρά';

  @override
  String get rowRemove => 'Αφαίρεση';

  @override
  String get rowPlaylist => 'Λίστα';

  @override
  String plTrackCount(int count) {
    return '$count κομμάτια';
  }

  @override
  String get lyricsSourceAuto => 'Αυτόματα';

  @override
  String get lyricsSourceEmbedded => 'Ενσωματωμένοι';

  @override
  String get lyricsSourceBestQuality => 'Καλύτερη διαθέσιμη ποιότητα';

  @override
  String get lyricsSourceFileTags => 'Από τις ετικέτες του αρχείου ήχου';

  @override
  String get lyricsSourceWordOnline => 'Συγχρονισμένο ανά λέξη (online)';

  @override
  String get lyricsSourceLineOnline => 'Συγχρονισμένο ανά γραμμή (online)';

  @override
  String get lyricsSourceNotFound => 'Δεν βρέθηκε για αυτό το τραγούδι';

  @override
  String get npCatModeUnlocked => 'Νιάου?! Ξεκλειδώθηκε η λειτουργία γάτας 🐱';

  @override
  String get shellResumePlayback => 'Συνέχιση αναπαραγωγής';

  @override
  String get shellPlay => 'ΑΝΑΠΑΡΑΓΩΓΗ';

  @override
  String get devSection => 'ΠΡΟΓΡΑΜΜΑΤΙΣΤΗΣ';

  @override
  String get devModeUnlocked => '🛠️ Ξεκλειδώθηκε η λειτουργία προγραμματιστή';

  @override
  String get devUnlockAll => 'Ξεκλείδωμα όλων των αξεσουάρ';

  @override
  String get devClearLyricsCache => 'Καθαρισμός προσωρινής μνήμης στίχων';

  @override
  String get devRefetchLyrics => 'Επαναφόρτωση όλων των στίχων…';

  @override
  String get devLyricsCleared => 'Η προσωρινή μνήμη στίχων καθαρίστηκε';

  @override
  String get devHideOptions => 'Απόκρυψη επιλογών προγραμματιστή';

  @override
  String get devModeOff => 'Λειτουργία προγραμματιστή απενεργοποιημένη';

  @override
  String get youCantReadFolders =>
      'Δεν ήταν δυνατή η ανάγνωση των φακέλων μουσικής σου';

  @override
  String get youNoMusicFolders => 'Δεν βρέθηκαν φάκελοι μουσικής';
}
