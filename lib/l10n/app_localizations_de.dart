// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'Sprache';

  @override
  String get languageFollowSystem => 'System folgen';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Baseus × Hanamimi';

  @override
  String get commonCancel => 'Abbrechen';

  @override
  String get commonConfirm => 'OK';

  @override
  String get commonBack => 'Zurück';

  @override
  String get commonDone => 'Fertig';

  @override
  String get commonUnknown => 'Unbekannt';

  @override
  String get secUpmix => 'Upmix-Engine';

  @override
  String get spatialAudioTitle => '360-Raumklang';

  @override
  String get npNothingPlaying => 'Nichts wird abgespielt';

  @override
  String get npPickSong => 'Wähle einen Song aus deiner Bibliothek';

  @override
  String get npSpatialSettings => '360-Einstellungen';

  @override
  String get npLyrics => 'Songtext';

  @override
  String get libSearchHint => 'Musik suchen…';

  @override
  String get libClearLibrary => 'Bibliothek leeren';

  @override
  String get libImportMusic => 'Musik importieren';

  @override
  String libError(String error) {
    return 'Etwas ist schiefgelaufen: $error';
  }

  @override
  String libNoMatch(String query) {
    return 'Nichts passt zu \"$query\"';
  }

  @override
  String get libPermissionDenied =>
      'Hana360 braucht die Berechtigung, um deine Musik zu finden\nKein Zugriff auf diesem Gerät? Importiere stattdessen.';

  @override
  String get libNoSongs =>
      'Keine Songs auf diesem Gerät gefunden\nImportiere Musik aus deinen Dateien';

  @override
  String get libGrantAccess => 'Zugriff erlauben';

  @override
  String get libRescan => 'Erneut scannen';

  @override
  String get libAddedToQueue => 'Zur Warteschlange hinzugefügt';

  @override
  String get libNoAlbums => 'Noch keine Alben';

  @override
  String get libNoFolders => 'Noch keine Ordner';

  @override
  String get libNoPlaylists => 'Noch keine Wiedergabelisten';

  @override
  String libPlaylistCreated(String name) {
    return 'Wiedergabeliste \"$name\" erstellt 🌸';
  }

  @override
  String get libFolderHint =>
      'Ordner lange drücken, um daraus eine Wiedergabeliste zu machen';

  @override
  String libSongCount(int count) {
    return '$count Songs';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count Songs · $path';
  }

  @override
  String get homeGreetingLate => 'Spät wach ♪';

  @override
  String get homeGreetingMorning => 'Guten Morgen ♪';

  @override
  String get homeGreetingAfternoon => 'Guten Tag ♪';

  @override
  String get homeGreetingEvening => 'Guten Abend ♪';

  @override
  String get homeJumpBackIn => 'WEITERHÖREN';

  @override
  String get homeForYou => 'FÜR DICH';

  @override
  String get homeForYouSub =>
      'auf diesem Gerät ausgewählt, basierend auf deinem Hörverhalten';

  @override
  String get homeWelcome => 'Willkommen bei Hana360 🌸';

  @override
  String get homeAllQuiet => 'Alles ruhig 🌸';

  @override
  String get homeLibraryHint =>
      'Deine Musik lebt im Tab Bibliothek — füge dort Ordner hinzu. Alles, was du abspielst, sammelt sich hier.';

  @override
  String get homePlayHint =>
      'Spiele etwas ab und es wartet beim nächsten Mal hier auf dich.';

  @override
  String get youRescanLibrary => 'Bibliothek erneut scannen';

  @override
  String get youExcludedFolders => 'Ausgeschlossene Ordner';

  @override
  String get youExcludedFoldersSub => 'Ordner aus deiner Bibliothek ausblenden';

  @override
  String get youCatMode => 'Katzenmodus';

  @override
  String get youAbout => 'Über';

  @override
  String get youScanning => 'Musik wird gescannt…';

  @override
  String get youOpenSource => 'Open Source';

  @override
  String get youOpenSourceSub =>
      'Hana360 ist ein Derivat von Hanamimi (GPLv3) von ShaptakNaskar — geändert am 2026-08-10';

  @override
  String get youCheckUpdates => 'Nach Updates suchen';

  @override
  String get youCheckUpdatesSub => 'Neue Builds erscheinen auf GitHub Releases';

  @override
  String get youUpToDate => 'Du bist auf dem neuesten Stand 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Erstellt von Sappy';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'Im Hintergrund weiter abspielen';

  @override
  String get youKeepPlayingAllowed =>
      'Erlaubt — das System pausiert deine Musik nicht';

  @override
  String get youKeepPlayingTap =>
      'Tippen, um zu verhindern, dass das System die Wiedergabe stoppt';

  @override
  String get youExcludedFoldersTitle => 'Ausgeschlossene Ordner';

  @override
  String get youExcludedFoldersDesc =>
      'Songs in deaktivierten Ordnern werden aus deiner Bibliothek ausgeschlossen';

  @override
  String get youVisSensitivity => 'Visualizer-Empfindlichkeit';

  @override
  String get youVisSensitivitySub => 'Erhöhen für Songs, die ihn kaum bewegen';

  @override
  String get youNerdMode => 'Nerd-Modus';

  @override
  String get youNerdModeSub =>
      'Codec, Bitrate & Ausgabe auf dem Player anzeigen';

  @override
  String get youEqualizer => 'Equalizer';

  @override
  String get youComingSoon => 'Bald verfügbar';

  @override
  String get sleepTimer => 'Schlaftimer';

  @override
  String get sleep15 => '15 Minuten';

  @override
  String get sleep30 => '30 Minuten';

  @override
  String get sleep1h => '1 Stunde';

  @override
  String get sleepEndTrack => 'Am Ende des Songs';

  @override
  String get sleepFading => 'Ausblenden… süße Träume';

  @override
  String sleepIn(String time) {
    return 'Schlafen in $time';
  }

  @override
  String get sleepEndTrackActive => 'Schlafen, wenn dieser Song endet';

  @override
  String get sleepCancel => 'Timer abbrechen';

  @override
  String get queueUpNext => 'Als Nächstes';

  @override
  String get queueEmpty => 'Die Warteschlange ist leer';

  @override
  String get updateAvailable => 'Update verfügbar ✨';

  @override
  String get updateNoNotes => 'Keine Versionshinweise.';

  @override
  String get updateInstalling => 'Installer wird geöffnet…';

  @override
  String get updateFailed =>
      'Update fehlgeschlagen — versuche es später erneut';

  @override
  String get updateLater => 'Später';

  @override
  String get updateRetry => 'Erneut versuchen';

  @override
  String get updateNow => 'Aktualisieren';

  @override
  String get spatialToggleTitle => '360-Raumklang';

  @override
  String get spatialOn => 'An';

  @override
  String get spatialOff => 'Aus';

  @override
  String get lyricsNoFound => 'Keine Songtexte gefunden';

  @override
  String get lyricsJustListening => 'Dieser Song ist nur zum Hören';

  @override
  String get lyricsTrySource => 'Andere Quelle versuchen';

  @override
  String get lyricsSource => 'Songtext-Quelle';

  @override
  String get lyricsWordSynced => 'Wort-synchronisiert';

  @override
  String get lyricsLineSynced => 'Zeilen-synchronisiert';

  @override
  String get lyricsUnsynced => 'Nicht synchronisiert';

  @override
  String get plNoPlaylists =>
      'Noch keine Wiedergabelisten — erstelle zuerst eine!';

  @override
  String get plAddToPlaylist => 'Zur Wiedergabeliste hinzufügen';

  @override
  String plAddedTo(String name) {
    return 'Zu $name hinzugefügt';
  }

  @override
  String get shareLyrics => 'Songtext teilen';

  @override
  String get shareMaxLines => 'Maximale Zeilenzahl ausgewählt';

  @override
  String sharePickLines(int count) {
    return 'Wähle bis zu $count Zeilen';
  }

  @override
  String get sharePickHint => 'Wähle unten ein paar Zeilen…';

  @override
  String get shareButton => 'Teilen';

  @override
  String get batTitle => 'Lass die Musik weiterlaufen 🎵';

  @override
  String get batBody =>
      'Die Akku-Optimierung von Android kann deine Musik bei ausgeschaltetem Bildschirm pausieren. Erlaube Hana360, uneingeschränkt zu laufen.\n\nDu kannst das jederzeit unter You → \"Im Hintergrund weiter abspielen\" ändern.';

  @override
  String get batNotNow => 'Jetzt nicht';

  @override
  String get batAllow => 'Erlauben';

  @override
  String get algoSwitch => 'Algorithmus';

  @override
  String get speakerDistance => 'Lautsprecherabstand';

  @override
  String get channelTrim => 'Kanalabgleich';

  @override
  String get masterGain => 'Master-Verstärkung';

  @override
  String get secHrtf => 'HRTF-Anpassung';

  @override
  String get outputGain => 'Ausgangsverstärkung';

  @override
  String get secEq => 'Räumlicher EQ';

  @override
  String get secReverb => 'Hall';

  @override
  String get roomSize => 'Raum';

  @override
  String get reverbGain => 'Hall-Verstärkung';

  @override
  String get secTracking => 'Kopfbewegungs-Tracking';

  @override
  String get trackOff => 'Aus';

  @override
  String get trackSensor => 'Telefonsensor';

  @override
  String get trackManual => 'Manuell XY';

  @override
  String get dragHint =>
      'Ziehen, um die Kopfausrichtung anzupassen (das Klangfeld folgt)';

  @override
  String get customEq => 'Benutzerdefiniert';

  @override
  String get eqPresetMusic => 'Musik';

  @override
  String get eqPresetCinema => 'Kino';

  @override
  String get eqPresetGame => 'Spiel';

  @override
  String get eqPresetVoice => 'Stimme';

  @override
  String get hrtfGroup0 => 'Männlich / Klein / Klein';

  @override
  String get hrtfGroup1 => 'Männlich / Klein / Mittel';

  @override
  String get hrtfGroup2 => 'Männlich / Klein / Groß';

  @override
  String get hrtfGroup3 => 'Männlich / Mittel / Klein';

  @override
  String get hrtfGroup4 => 'Männlich / Mittel / Mittel';

  @override
  String get hrtfGroup5 => 'Männlich / Mittel / Groß';

  @override
  String get hrtfGroup6 => 'Männlich / Groß / Klein';

  @override
  String get hrtfGroup7 => 'Männlich / Groß / Mittel';

  @override
  String get hrtfGroup8 => 'Männlich / Groß / Groß';

  @override
  String get hrtfGroup9 => 'Weiblich / Klein / Klein';

  @override
  String get hrtfGroup10 => 'Weiblich / Klein / Mittel';

  @override
  String get hrtfGroup11 => 'Weiblich / Klein / Groß';

  @override
  String get hrtfGroup12 => 'Weiblich / Mittel / Klein';

  @override
  String get hrtfGroup13 => 'Weiblich / Mittel / Mittel';

  @override
  String get hrtfGroup14 => 'Weiblich / Mittel / Groß';

  @override
  String get navHome => 'Start';

  @override
  String get navLibrary => 'Bibliothek';

  @override
  String get navPlaying => 'Wiedergabe';

  @override
  String get navYou => 'Du';

  @override
  String get tabSongs => 'Songs';

  @override
  String get tabAlbums => 'Alben';

  @override
  String get tabFolders => 'Ordner';

  @override
  String get tabPlaylists => 'Wiedergabelisten';

  @override
  String get youMood => 'STIMMUNG';

  @override
  String get youCompanion => 'DEINE BEGLEITERIN';

  @override
  String get youBuddies => 'KUMPEL';

  @override
  String get youSound => 'KLANG';

  @override
  String get youMore => 'MEHR';

  @override
  String get themeCherryBlossom => 'Kirschblüte';

  @override
  String get themeStarryNight => 'Sternennacht';

  @override
  String get themeAdaptiveLight => 'Adaptiv hell';

  @override
  String get themeAdaptiveDark => 'Adaptiv dunkel';

  @override
  String youListenedTogether(int h, int m) {
    return '$h Std. $m Min. zusammen gehört';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'Kopfzeile & Wiedergabe';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'Sitzt auf dem Bibliothekstitel';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'Nickt auf dem Mini-Player ein';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'Stolziert über Lieblingssongs';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'Leuchten auf dunklen Themes';

  @override
  String get accBow => 'Rosa Schleife';

  @override
  String get accHeadphones => 'Winzige Kopfhörer';

  @override
  String get accFlower => 'Blume';

  @override
  String get accCrown => 'Winzige Krone';

  @override
  String accUnlockLabel(int h) {
    return 'Höre $h Stunden';
  }

  @override
  String get youCrossfade => 'Überblenden';

  @override
  String get youCrossfadeSub => 'Das Ende eines Songs in den nächsten blenden';

  @override
  String get youSmartShuffle => 'Intelligenter Zufall';

  @override
  String get youSmartShuffleSub =>
      'Der Zufall bevorzugt deine Favoriten — auf diesem Gerät berechnet';

  @override
  String get libLikedSongs => 'Lieblingssongs';

  @override
  String get libTapHeart =>
      'Tippe das Herz eines Songs an, um ihn hier zu behalten';

  @override
  String get libRemovedFromQueue => 'Aus der Warteschlange entfernt';

  @override
  String get libRemovedFromLibrary => 'Aus der Bibliothek entfernt';

  @override
  String get libRemoveFromLibrary => 'Aus Bibliothek entfernen';

  @override
  String get libNewPlaylist => 'Neue Wiedergabeliste';

  @override
  String get libPlaylistName => 'Name der Wiedergabeliste';

  @override
  String get libCreate => 'Erstellen';

  @override
  String get libSwipeHint =>
      'nach links wischen zum Entfernen · halten zum Sortieren';

  @override
  String get libChooseCover => 'Coverbild wählen';

  @override
  String get libBackToArtCover => 'Zurück zum Album-Cover';

  @override
  String libDeleteConfirm(String name) {
    return '\"$name\" löschen?';
  }

  @override
  String get libDeleteKeepSongs => 'Die Songs bleiben auf deinem Gerät';

  @override
  String get libKeep => 'Behalten';

  @override
  String get libDelete => 'Löschen';

  @override
  String get libRemoveKeepFile => 'Die Datei bleibt auf deinem Gerät';

  @override
  String get libClearConfirm => 'Alle Dateien entfernen?';

  @override
  String get libLibraryCleared => 'Bibliothek geleert';

  @override
  String get libPickAudioFiles => 'Audiodateien wählen…';

  @override
  String get libImportFolder => 'Ordner importieren';

  @override
  String get libScanWholeFolder => 'Ganzen Ordner scannen… (empfohlen)';

  @override
  String libImportFailed(String error) {
    return 'Import fehlgeschlagen: $error';
  }

  @override
  String get libNoAudioFound => 'Keine Audiodateien gefunden';

  @override
  String libImportedCount(int count) {
    return '$count Songs importiert';
  }

  @override
  String get libNothingHere =>
      'Noch nichts hier — wische zum Entfernen, halte zum Sortieren';

  @override
  String get sidebarYourLibrary => 'DEINE BIBLIOTHEK';

  @override
  String get sidebarPlaylists => 'WIEDERGABELISTEN';

  @override
  String get sidebarFolders => 'ORDNER';

  @override
  String get rowQueue => 'Warteschlange';

  @override
  String get rowRemove => 'Entfernen';

  @override
  String get rowPlaylist => 'Wiedergabeliste';

  @override
  String plTrackCount(int count) {
    return '$count Titel';
  }

  @override
  String get lyricsSourceAuto => 'Auto';

  @override
  String get lyricsSourceEmbedded => 'Eingebettet';

  @override
  String get lyricsSourceBestQuality => 'Beste verfügbare Qualität';

  @override
  String get lyricsSourceFileTags => 'Aus den Tags der Audiodatei';

  @override
  String get lyricsSourceWordOnline => 'Wort-synchronisiert (online)';

  @override
  String get lyricsSourceLineOnline => 'Zeilen-synchronisiert (online)';

  @override
  String get lyricsSourceNotFound => 'Für diesen Song nicht gefunden';

  @override
  String get npCatModeUnlocked => 'Miau?! Katzenmodus freigeschaltet 🐱';

  @override
  String get shellResumePlayback => 'Wiedergabe fortsetzen';

  @override
  String get shellPlay => 'ABSPIELEN';

  @override
  String get devSection => 'ENTWICKLER';

  @override
  String get devModeUnlocked => '🛠️ Entwicklermodus freigeschaltet';

  @override
  String get devUnlockAll => 'Alle Accessoires freischalten';

  @override
  String get devClearLyricsCache => 'Songtext-Cache leeren';

  @override
  String get devRefetchLyrics => 'Alle Songtexte neu laden…';

  @override
  String get devLyricsCleared => 'Songtext-Cache geleert';

  @override
  String get devHideOptions => 'Entwickleroptionen ausblenden';

  @override
  String get devModeOff => 'Entwicklermodus deaktiviert';

  @override
  String get youCantReadFolders =>
      'Deine Musikordner konnten nicht gelesen werden';

  @override
  String get youNoMusicFolders => 'Keine Musikordner gefunden';
}
