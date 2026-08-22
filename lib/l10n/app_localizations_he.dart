// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class AppLocalizationsHe extends AppLocalizations {
  AppLocalizationsHe([String locale = 'he']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'שפה';

  @override
  String get languageFollowSystem => 'עקוב אחר המערכת';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Hana360';

  @override
  String get commonCancel => 'ביטול';

  @override
  String get commonConfirm => 'אישור';

  @override
  String get commonBack => 'חזרה';

  @override
  String get commonDone => 'סיום';

  @override
  String get commonUnknown => 'לא ידוע';

  @override
  String get secUpmix => 'מנוע Upmix';

  @override
  String get spatialAudioTitle => 'שמע מרחבי 360°';

  @override
  String get npNothingPlaying => 'שום דבר לא מתנגן עדיין';

  @override
  String get npPickSong => 'בחר שיר מהספרייה שלך';

  @override
  String get npSpatialSettings => 'הגדרות 360°';

  @override
  String get npLyrics => 'מילים';

  @override
  String get libSearchHint => 'חיפוש במוזיקה שלך…';

  @override
  String get libClearLibrary => 'נקה ספרייה';

  @override
  String get libImportMusic => 'ייבא מוזיקה';

  @override
  String libError(String error) {
    return 'משהו השתבש: $error';
  }

  @override
  String libNoMatch(String query) {
    return 'שום דבר לא תואם ל-\"$query\"';
  }

  @override
  String get libPermissionDenied =>
      'Hana360 זקוק להרשאה כדי למצוא את המוזיקה שלך\nאין גישה במכשיר הזה? ייבא במקום זאת.';

  @override
  String get libNoSongs =>
      'לא נמצאו שירים במכשיר הזה\nייבא מוזיקה מהקבצים שלך כדי להתחיל';

  @override
  String get libGrantAccess => 'הענק גישה';

  @override
  String get libRescan => 'סרוק מחדש';

  @override
  String get libAddedToQueue => 'נוסף לתור';

  @override
  String get libNoAlbums => 'אין עדיין אלבומים';

  @override
  String get libNoFolders => 'אין עדיין תיקיות';

  @override
  String get libNoPlaylists => 'אין עדיין רשימות השמעה';

  @override
  String libPlaylistCreated(String name) {
    return 'רשימת ההשמעה \"$name\" נוצרה 🌸';
  }

  @override
  String get libFolderHint =>
      'לחץ לחיצה ארוכה על תיקיה כדי להפוך אותה לרשימת השמעה';

  @override
  String libSongCount(int count) {
    return '$count שירים';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count שירים · $path';
  }

  @override
  String get homeGreetingLate => 'ער עד מאוחר ♪';

  @override
  String get homeGreetingMorning => 'בוקר טוב ♪';

  @override
  String get homeGreetingAfternoon => 'צהריים טובים ♪';

  @override
  String get homeGreetingEvening => 'ערב טוב ♪';

  @override
  String get homeJumpBackIn => 'חזור פנימה';

  @override
  String get homeForYou => 'בשבילך';

  @override
  String get homeForYouSub => 'נבחר במכשיר הזה, מההאזנות שלך';

  @override
  String get homeWelcome => 'ברוך הבא ל-Hana360 🌸';

  @override
  String get homeAllQuiet => 'הכל שקט 🌸';

  @override
  String get homeLibraryHint =>
      'המוזיקה שלך גרה בלשונית הספרייה — הוסף שם תיקיות. כל מה שאתה מנגן נאסף כאן.';

  @override
  String get homePlayHint => 'נגן משהו והוא יחכה כאן בפעם הבאה.';

  @override
  String get youRescanLibrary => 'סרוק מחדש את הספרייה';

  @override
  String get youExcludedFolders => 'תיקיות מוחרגות';

  @override
  String get youExcludedFoldersSub => 'הסתר תיקיות מהספרייה';

  @override
  String get youCatMode => 'מצב חתול';

  @override
  String get youAbout => 'אודות';

  @override
  String get youScanning => 'סורק את המוזיקה שלך…';

  @override
  String get youOpenSource => 'קוד פתוח';

  @override
  String get youOpenSourceSub =>
      'Hana360 הוא נגזרת של Hanamimi (GPLv3) מאת ShaptakNaskar — שונה ב-2026-08-10';

  @override
  String get youCheckUpdates => 'בדוק עדכונים';

  @override
  String get youCheckUpdatesSub => 'גרסאות חדשות מגיעות ל-GitHub Releases';

  @override
  String get youUpToDate => 'אתה מעודכן 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'נוצר על ידי Sappy';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'המשך נגינה ברקע';

  @override
  String get youKeepPlayingAllowed => 'מותר — המערכת לא תעצור את המוזיקה שלך';

  @override
  String get youKeepPlayingTap => 'הקש כדי למנוע מהמערכת לעצור את ההשמעה';

  @override
  String get youExcludedFoldersTitle => 'תיקיות מוחרגות';

  @override
  String get youExcludedFoldersDesc => 'שירים בתיקיות כבויות מוחרגים מהספרייה';

  @override
  String get youVisSensitivity => 'רגישות הממחיש';

  @override
  String get youVisSensitivitySub => 'הגבר עבור שירים שכמעט לא מזיזים אותו';

  @override
  String get youNerdMode => 'מצב חנון';

  @override
  String get youNerdModeSub => 'הצג codec, bitrate ויציאת שמע במסך מתנגן עכשיו';

  @override
  String get youEqualizer => 'אקולייזר';

  @override
  String get youComingSoon => 'בקרוב';

  @override
  String get sleepTimer => 'טיימר שינה';

  @override
  String get sleep15 => '15 דקות';

  @override
  String get sleep30 => '30 דקות';

  @override
  String get sleep1h => 'שעה אחת';

  @override
  String get sleepEndTrack => 'סוף השיר';

  @override
  String get sleepFading => 'דועך… חלומות מתוקים';

  @override
  String sleepIn(String time) {
    return 'שינה בעוד $time';
  }

  @override
  String get sleepEndTrackActive => 'שינה כשהשיר הזה יסתיים';

  @override
  String get sleepCancel => 'בטל טיימר';

  @override
  String get queueUpNext => 'הבא בתור';

  @override
  String get queueEmpty => 'התור ריק';

  @override
  String get updateAvailable => 'עדכון זמין ✨';

  @override
  String get updateNoNotes => 'אין הערות גרסה.';

  @override
  String get updateInstalling => 'פותח התקנה…';

  @override
  String get updateFailed => 'לא ניתן לעדכן — נסה שוב מאוחר יותר';

  @override
  String get updateLater => 'מאוחר יותר';

  @override
  String get updateRetry => 'נסה שוב';

  @override
  String get updateNow => 'עדכן';

  @override
  String get spatialToggleTitle => 'שמע מרחבי 360°';

  @override
  String get spatialOn => 'פועל';

  @override
  String get spatialOff => 'כבוי';

  @override
  String get lyricsNoFound => 'לא נמצאו מילים';

  @override
  String get lyricsJustListening => 'זה רק להאזנה';

  @override
  String get lyricsTrySource => 'נסה מקור אחר';

  @override
  String get lyricsSource => 'מקור המילים';

  @override
  String get lyricsWordSynced => 'מסונכרן לפי מילים';

  @override
  String get lyricsLineSynced => 'מסונכרן לפי שורות';

  @override
  String get lyricsUnsynced => 'לא מסונכרן';

  @override
  String get plNoPlaylists => 'אין עדיין רשימות — צור אחת קודם!';

  @override
  String get plAddToPlaylist => 'הוסף לרשימת השמעה';

  @override
  String plAddedTo(String name) {
    return 'נוסף ל-$name';
  }

  @override
  String get shareLyrics => 'שתף מילים';

  @override
  String get shareMaxLines => 'נבחר מספר שורות מקסימלי';

  @override
  String sharePickLines(int count) {
    return 'בחר עד $count שורות';
  }

  @override
  String get sharePickHint => 'בחר כמה שורות למטה…';

  @override
  String get shareButton => 'שתף';

  @override
  String get batTitle => 'המשך לנגן את המוזיקה 🎵';

  @override
  String get batBody =>
      'אופטימיזציית הסוללה של Android עשויה להשהות את המוזיקה כשהמסך כבוי. אפשר ל-Hana360 לפעול ללא הגבלה כדי שההשמעה תישאר יציבה.\n\nתוכל לשנות זאת בכל עת ב-אתה → \"המשך נגינה ברקע\".';

  @override
  String get batNotNow => 'לא עכשיו';

  @override
  String get batAllow => 'אפשר';

  @override
  String get algoSwitch => 'אלגוריתם';

  @override
  String get speakerDistance => 'מרחק רמקולים';

  @override
  String get channelTrim => 'חיתוך ערוץ';

  @override
  String get masterGain => 'הגבר מאסטר';

  @override
  String get secHrtf => 'התאמה אישית של HRTF';

  @override
  String get outputGain => 'הגבר פלט';

  @override
  String get secEq => 'EQ מרחבי';

  @override
  String get secReverb => 'הדהוד';

  @override
  String get roomSize => 'חדר';

  @override
  String get reverbGain => 'הגבר הדהוד';

  @override
  String get secTracking => 'מעקב ראש';

  @override
  String get trackOff => 'כבוי';

  @override
  String get trackSensor => 'חיישן הטלפון';

  @override
  String get trackManual => 'XY ידני';

  @override
  String get dragHint => 'גרור כדי לכוונן את כיוון הראש (שדה השמע עוקב)';

  @override
  String get customEq => 'מותאם אישית';

  @override
  String get eqPresetMusic => 'מוזיקה';

  @override
  String get eqPresetCinema => 'קולנוע';

  @override
  String get eqPresetGame => 'משחק';

  @override
  String get eqPresetVoice => 'קול';

  @override
  String get hrtfGroup0 => 'גבר / קטן / קטן';

  @override
  String get hrtfGroup1 => 'גבר / קטן / בינוני';

  @override
  String get hrtfGroup2 => 'גבר / קטן / גדול';

  @override
  String get hrtfGroup3 => 'גבר / בינוני / קטן';

  @override
  String get hrtfGroup4 => 'גבר / בינוני / בינוני';

  @override
  String get hrtfGroup5 => 'גבר / בינוני / גדול';

  @override
  String get hrtfGroup6 => 'גבר / גדול / קטן';

  @override
  String get hrtfGroup7 => 'גבר / גדול / בינוני';

  @override
  String get hrtfGroup8 => 'גבר / גדול / גדול';

  @override
  String get hrtfGroup9 => 'אישה / קטן / קטן';

  @override
  String get hrtfGroup10 => 'אישה / קטן / בינוני';

  @override
  String get hrtfGroup11 => 'אישה / קטן / גדול';

  @override
  String get hrtfGroup12 => 'אישה / בינוני / קטן';

  @override
  String get hrtfGroup13 => 'אישה / בינוני / בינוני';

  @override
  String get hrtfGroup14 => 'אישה / בינוני / גדול';

  @override
  String get navHome => 'בית';

  @override
  String get navLibrary => 'ספרייה';

  @override
  String get navPlaying => 'מתנגן';

  @override
  String get navYou => 'אתה';

  @override
  String get tabSongs => 'שירים';

  @override
  String get tabAlbums => 'אלבומים';

  @override
  String get tabFolders => 'תיקיות';

  @override
  String get tabPlaylists => 'רשימות השמעה';

  @override
  String get youMood => 'מצב רוח';

  @override
  String get youCompanion => 'המלווה שלך';

  @override
  String get youBuddies => 'חברים';

  @override
  String get youSound => 'צליל';

  @override
  String get youMore => 'עוד';

  @override
  String get themeCherryBlossom => 'פריחת דובדבן';

  @override
  String get themeStarryNight => 'ליל כוכבים';

  @override
  String get themeAdaptiveLight => 'בהיר אדפטיבי';

  @override
  String get themeAdaptiveDark => 'כהה אדפטיבי';

  @override
  String youListenedTogether(int h, int m) {
    return '$h שע\' $m דק\' האזנה משותפת';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'כותרת ומתנגן עכשיו';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'יושב על כותרת הספרייה';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'מנמנם על הנגן הקטן';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'צועד מעל השירים שאוהבים';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'זוהרים בערכות הנושא הכהות';

  @override
  String get accBow => 'קשת ורודה';

  @override
  String get accHeadphones => 'אוזניות זעירות';

  @override
  String get accFlower => 'פרח';

  @override
  String get accCrown => 'כתר זעיר';

  @override
  String accUnlockLabel(int h) {
    return 'האזן במשך $h שעות';
  }

  @override
  String get youCrossfade => 'Crossfade';

  @override
  String get youCrossfadeSub => 'מזג את סוף השיר עם הבא';

  @override
  String get youSmartShuffle => 'ערבוב חכם';

  @override
  String get youSmartShuffleSub =>
      'הערבוב נוטה למועדפים שלך — מחושב במכשיר הזה';

  @override
  String get libLikedSongs => 'שירים אהובים';

  @override
  String get libTapHeart => 'הקש על הלב בשיר כדי לשמור אותו כאן';

  @override
  String get libRemovedFromQueue => 'הוסר מהתור';

  @override
  String get libRemovedFromLibrary => 'הוסר מהספרייה';

  @override
  String get libRemoveFromLibrary => 'הסר מהספרייה';

  @override
  String get libNewPlaylist => 'רשימת השמעה חדשה';

  @override
  String get libPlaylistName => 'שם הרשימה';

  @override
  String get libCreate => 'צור';

  @override
  String get libSwipeHint => 'החלק שמאלה להסרה · החזק לסידור מחדש';

  @override
  String get libChooseCover => 'בחר תמונת עטיפה';

  @override
  String get libBackToArtCover => 'חזרה לעטיפת השיר';

  @override
  String libDeleteConfirm(String name) {
    return 'למחוק את \"$name\"?';
  }

  @override
  String get libDeleteKeepSongs => 'השירים עצמם נשארים במכשיר שלך';

  @override
  String get libKeep => 'שמור';

  @override
  String get libDelete => 'מחק';

  @override
  String get libRemoveKeepFile => 'הקובץ עצמו נשאר במכשיר שלך';

  @override
  String get libClearConfirm => 'להסיר את כל הקבצים?';

  @override
  String get libLibraryCleared => 'הספרייה נוקתה';

  @override
  String get libPickAudioFiles => 'בחר קבצי שמע…';

  @override
  String get libImportFolder => 'ייבא תיקיה';

  @override
  String get libScanWholeFolder => 'סרוק תיקיה שלמה… (מומלץ)';

  @override
  String libImportFailed(String error) {
    return 'הייבוא נכשל: $error';
  }

  @override
  String get libNoAudioFound => 'לא נמצאו קבצי שמע';

  @override
  String libImportedCount(int count) {
    return 'יובאו $count שירים';
  }

  @override
  String get libNothingHere =>
      'אין כאן עדיין כלום — החלק שמאלה להסרה, החזק לסידור מחדש';

  @override
  String get sidebarYourLibrary => 'הספרייה שלך';

  @override
  String get sidebarPlaylists => 'רשימות השמעה';

  @override
  String get sidebarFolders => 'תיקיות';

  @override
  String get rowQueue => 'תור';

  @override
  String get rowRemove => 'הסר';

  @override
  String get rowPlaylist => 'רשימת השמעה';

  @override
  String plTrackCount(int count) {
    return '$count רצועות';
  }

  @override
  String get lyricsSourceAuto => 'אוטומטי';

  @override
  String get lyricsSourceEmbedded => 'מוטבע';

  @override
  String get lyricsSourceBestQuality => 'האיכות הטובה ביותר הזמינה';

  @override
  String get lyricsSourceFileTags => 'מהתגים של קובץ השמע עצמו';

  @override
  String get lyricsSourceWordOnline => 'מסונכרן לפי מילים (מקוון)';

  @override
  String get lyricsSourceLineOnline => 'מסונכרן לפי שורות (מקוון)';

  @override
  String get lyricsSourceNotFound => 'לא נמצא עבור השיר הזה';

  @override
  String get npCatModeUnlocked => 'מיאו?! מצב חתול נפתח 🐱';

  @override
  String get shellResumePlayback => 'המשך השמעה';

  @override
  String get shellPlay => 'נגן';

  @override
  String get devSection => 'מפתח';

  @override
  String get devModeUnlocked => '🛠️ מצב מפתח נפתח';

  @override
  String get devUnlockAll => 'פתח את כל האביזרים';

  @override
  String get devClearLyricsCache => 'נקה מטמון מילים';

  @override
  String get devRefetchLyrics => 'טען מחדש את כל המילים…';

  @override
  String get devLyricsCleared => 'מטמון המילים נוקה';

  @override
  String get devHideOptions => 'הסתר אפשרויות מפתח';

  @override
  String get devModeOff => 'מצב מפתח כבוי';

  @override
  String get youCantReadFolders => 'לא ניתן לקרוא את תיקיות המוזיקה שלך';

  @override
  String get youNoMusicFolders => 'לא נמצאו תיקיות מוזיקה';
}
