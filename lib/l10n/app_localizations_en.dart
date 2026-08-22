// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'Language';

  @override
  String get languageFollowSystem => 'Follow System';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Hana360';

  @override
  String get commonCancel => 'Cancel';

  @override
  String get commonConfirm => 'OK';

  @override
  String get commonBack => 'Back';

  @override
  String get commonDone => 'Done';

  @override
  String get commonUnknown => 'Unknown';

  @override
  String get secUpmix => 'Upmix Engine';

  @override
  String get spatialAudioTitle => '360 Spatial Audio';

  @override
  String get npNothingPlaying => 'Nothing playing yet';

  @override
  String get npPickSong => 'Pick a song from your library';

  @override
  String get npSpatialSettings => '360 Settings';

  @override
  String get npLyrics => 'Lyrics';

  @override
  String get libSearchHint => 'Search your music…';

  @override
  String get libClearLibrary => 'Clear library';

  @override
  String get libImportMusic => 'Import music';

  @override
  String libError(String error) {
    return 'Something went wrong: $error';
  }

  @override
  String libNoMatch(String query) {
    return 'Nothing matches \"$query\"';
  }

  @override
  String get libPermissionDenied =>
      'Hana360 needs permission to find your music\nNo access on this device? Import instead.';

  @override
  String get libNoSongs =>
      'No songs found on this device\nImport music from your files to get started';

  @override
  String get libGrantAccess => 'Grant access';

  @override
  String get libRescan => 'Rescan';

  @override
  String get libAddedToQueue => 'Added to queue';

  @override
  String get libNoAlbums => 'No albums yet';

  @override
  String get libNoFolders => 'No folders yet';

  @override
  String get libNoPlaylists => 'No playlists yet';

  @override
  String libPlaylistCreated(String name) {
    return 'Playlist \"$name\" created 🌸';
  }

  @override
  String get libFolderHint => 'long-press a folder to turn it into a playlist';

  @override
  String libSongCount(int count) {
    return '$count songs';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count songs · $path';
  }

  @override
  String get homeGreetingLate => 'Up late ♪';

  @override
  String get homeGreetingMorning => 'Good morning ♪';

  @override
  String get homeGreetingAfternoon => 'Good afternoon ♪';

  @override
  String get homeGreetingEvening => 'Good evening ♪';

  @override
  String get homeJumpBackIn => 'JUMP BACK IN';

  @override
  String get homeForYou => 'FOR YOU';

  @override
  String get homeForYouSub => 'picked on this device, from your listening';

  @override
  String get homeWelcome => 'Welcome to Hana360 🌸';

  @override
  String get homeAllQuiet => 'All quiet 🌸';

  @override
  String get homeLibraryHint =>
      'Your music lives in the Library tab — add folders there. Everything you play gathers here.';

  @override
  String get homePlayHint =>
      'Play something and it\'ll be waiting here next time.';

  @override
  String get youRescanLibrary => 'Rescan library';

  @override
  String get youExcludedFolders => 'Excluded folders';

  @override
  String get youExcludedFoldersSub => 'Hide folders from your library';

  @override
  String get youCatMode => 'Cat Mode';

  @override
  String get youAbout => 'About';

  @override
  String get youScanning => 'Scanning your music…';

  @override
  String get youOpenSource => 'Open Source';

  @override
  String get youOpenSourceSub =>
      'Hana360 is a derivative of Hanamimi (GPLv3) by ShaptakNaskar — modified 2026-08-10';

  @override
  String get youCheckUpdates => 'Check for updates';

  @override
  String get youCheckUpdatesSub => 'New builds land on GitHub Releases';

  @override
  String get youUpToDate => 'You\'re up to date 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Made by Sappy';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'Keep playing in background';

  @override
  String get youKeepPlayingAllowed =>
      'Allowed — the system won\'t pause your music';

  @override
  String get youKeepPlayingTap => 'Tap to stop the system killing playback';

  @override
  String get youExcludedFoldersTitle => 'Excluded folders';

  @override
  String get youExcludedFoldersDesc =>
      'Songs in switched-off folders are left out of your library';

  @override
  String get youVisSensitivity => 'Visualizer sensitivity';

  @override
  String get youVisSensitivitySub => 'Turn up for songs that barely move it';

  @override
  String get youNerdMode => 'Nerd mode';

  @override
  String get youNerdModeSub =>
      'Show codec, bitrate & audio output on Now Playing';

  @override
  String get youEqualizer => 'Equalizer';

  @override
  String get youComingSoon => 'Coming soon';

  @override
  String get sleepTimer => 'Sleep timer';

  @override
  String get sleep15 => '15 minutes';

  @override
  String get sleep30 => '30 minutes';

  @override
  String get sleep1h => '1 hour';

  @override
  String get sleepEndTrack => 'End of track';

  @override
  String get sleepFading => 'Fading out… sweet dreams';

  @override
  String sleepIn(String time) {
    return 'Sleeping in $time';
  }

  @override
  String get sleepEndTrackActive => 'Sleeping when this song ends';

  @override
  String get sleepCancel => 'Cancel timer';

  @override
  String get queueUpNext => 'Up next';

  @override
  String get queueEmpty => 'Queue is empty';

  @override
  String get updateAvailable => 'Update available ✨';

  @override
  String get updateNoNotes => 'No release notes.';

  @override
  String get updateInstalling => 'Opening installer…';

  @override
  String get updateFailed => 'Couldn\'t update — try again later';

  @override
  String get updateLater => 'Later';

  @override
  String get updateRetry => 'Retry';

  @override
  String get updateNow => 'Update';

  @override
  String get spatialToggleTitle => '360 Spatial Audio';

  @override
  String get spatialOn => 'On';

  @override
  String get spatialOff => 'Off';

  @override
  String get lyricsNoFound => 'No lyrics found';

  @override
  String get lyricsJustListening => 'This one\'s just for listening';

  @override
  String get lyricsTrySource => 'Try another source';

  @override
  String get lyricsSource => 'Lyrics source';

  @override
  String get lyricsWordSynced => 'Word-synced';

  @override
  String get lyricsLineSynced => 'Line-synced';

  @override
  String get lyricsUnsynced => 'Unsynced';

  @override
  String get plNoPlaylists => 'No playlists yet — make one first!';

  @override
  String get plAddToPlaylist => 'Add to playlist';

  @override
  String plAddedTo(String name) {
    return 'Added to $name';
  }

  @override
  String get shareLyrics => 'Share lyrics';

  @override
  String get shareMaxLines => 'Max lines selected';

  @override
  String sharePickLines(int count) {
    return 'Pick up to $count lines';
  }

  @override
  String get sharePickHint => 'Pick some lines below…';

  @override
  String get shareButton => 'Share';

  @override
  String get batTitle => 'Keep the music playing 🎵';

  @override
  String get batBody =>
      'Android\'s battery optimization can pause your music when the screen is off. Allow Hana360 to run unrestricted so playback stays stable.\n\nYou can change this anytime in You → \"Keep playing in background\".';

  @override
  String get batNotNow => 'Not now';

  @override
  String get batAllow => 'Allow';

  @override
  String get algoSwitch => 'Algorithm';

  @override
  String get speakerDistance => 'Speaker Distance';

  @override
  String get channelTrim => 'Channel Trim';

  @override
  String get masterGain => 'Master Gain';

  @override
  String get secHrtf => 'HRTF Personalization';

  @override
  String get outputGain => 'Output Gain';

  @override
  String get secEq => 'Spatial EQ';

  @override
  String get secReverb => 'Reverb';

  @override
  String get roomSize => 'Room';

  @override
  String get reverbGain => 'Reverb Gain';

  @override
  String get secTracking => 'Head Tracking';

  @override
  String get trackOff => 'Off';

  @override
  String get trackSensor => 'Phone Sensor';

  @override
  String get trackManual => 'Manual XY';

  @override
  String get dragHint =>
      'Drag to adjust head orientation (sound field follows)';

  @override
  String get customEq => 'Custom';

  @override
  String get eqPresetMusic => 'Music';

  @override
  String get eqPresetCinema => 'Cinema';

  @override
  String get eqPresetGame => 'Game';

  @override
  String get eqPresetVoice => 'Voice';

  @override
  String get hrtfGroup0 => 'Male / Small / Small';

  @override
  String get hrtfGroup1 => 'Male / Small / Mid';

  @override
  String get hrtfGroup2 => 'Male / Small / Large';

  @override
  String get hrtfGroup3 => 'Male / Mid / Small';

  @override
  String get hrtfGroup4 => 'Male / Mid / Mid';

  @override
  String get hrtfGroup5 => 'Male / Mid / Large';

  @override
  String get hrtfGroup6 => 'Male / Large / Small';

  @override
  String get hrtfGroup7 => 'Male / Large / Mid';

  @override
  String get hrtfGroup8 => 'Male / Large / Large';

  @override
  String get hrtfGroup9 => 'Female / Small / Small';

  @override
  String get hrtfGroup10 => 'Female / Small / Mid';

  @override
  String get hrtfGroup11 => 'Female / Small / Large';

  @override
  String get hrtfGroup12 => 'Female / Mid / Small';

  @override
  String get hrtfGroup13 => 'Female / Mid / Mid';

  @override
  String get hrtfGroup14 => 'Female / Mid / Large';

  @override
  String get navHome => 'Home';

  @override
  String get navLibrary => 'Library';

  @override
  String get navPlaying => 'Playing';

  @override
  String get navYou => 'You';

  @override
  String get tabSongs => 'Songs';

  @override
  String get tabAlbums => 'Albums';

  @override
  String get tabFolders => 'Folders';

  @override
  String get tabPlaylists => 'Playlists';

  @override
  String get youMood => 'MOOD';

  @override
  String get youCompanion => 'YOUR COMPANION';

  @override
  String get youBuddies => 'BUDDIES';

  @override
  String get youSound => 'SOUND';

  @override
  String get youMore => 'MORE';

  @override
  String get themeCherryBlossom => 'Cherry Blossom';

  @override
  String get themeStarryNight => 'Starry Night';

  @override
  String get themeAdaptiveLight => 'Adaptive Light';

  @override
  String get themeAdaptiveDark => 'Adaptive Dark';

  @override
  String youListenedTogether(int h, int m) {
    return '${h}h ${m}m listened together';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'Header & Now Playing';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'Perches on the Library title';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'Naps on the mini player';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'Struts atop Liked songs';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'Glow on the dark themes';

  @override
  String get accBow => 'Pink bow';

  @override
  String get accHeadphones => 'Tiny headphones';

  @override
  String get accFlower => 'Flower';

  @override
  String get accCrown => 'Tiny crown';

  @override
  String accUnlockLabel(int h) {
    return 'Listen for $h hours';
  }

  @override
  String get youCrossfade => 'Crossfade';

  @override
  String get youCrossfadeSub => 'Blend the end of a song into the next';

  @override
  String get youSmartShuffle => 'Smart shuffle';

  @override
  String get youSmartShuffleSub =>
      'Shuffle leans toward your favorites — computed on this device';

  @override
  String get libLikedSongs => 'Liked songs';

  @override
  String get libTapHeart => 'Tap the heart on a song to keep it here';

  @override
  String get libRemovedFromQueue => 'Removed from queue';

  @override
  String get libRemovedFromLibrary => 'Removed from library';

  @override
  String get libRemoveFromLibrary => 'Remove from library';

  @override
  String get libNewPlaylist => 'New playlist';

  @override
  String get libPlaylistName => 'Playlist name';

  @override
  String get libCreate => 'Create';

  @override
  String get libSwipeHint => 'swipe left to remove · hold to reorder';

  @override
  String get libChooseCover => 'Choose cover image';

  @override
  String get libBackToArtCover => 'Back to song-art cover';

  @override
  String libDeleteConfirm(String name) {
    return 'Delete \"$name\"?';
  }

  @override
  String get libDeleteKeepSongs => 'The songs themselves stay on your device';

  @override
  String get libKeep => 'Keep';

  @override
  String get libDelete => 'Delete';

  @override
  String get libRemoveKeepFile => 'The file itself stays on your device';

  @override
  String get libClearConfirm => 'Remove all files?';

  @override
  String get libLibraryCleared => 'Library cleared';

  @override
  String get libPickAudioFiles => 'Pick audio files…';

  @override
  String get libImportFolder => 'Import a folder';

  @override
  String get libScanWholeFolder => 'Scan a whole folder… (recommended)';

  @override
  String libImportFailed(String error) {
    return 'Import failed: $error';
  }

  @override
  String get libNoAudioFound => 'No audio files found';

  @override
  String libImportedCount(int count) {
    return 'Imported $count songs';
  }

  @override
  String get libNothingHere =>
      'Nothing here yet — swipe left to remove, hold to reorder';

  @override
  String get sidebarYourLibrary => 'YOUR LIBRARY';

  @override
  String get sidebarPlaylists => 'PLAYLISTS';

  @override
  String get sidebarFolders => 'FOLDERS';

  @override
  String get rowQueue => 'Queue';

  @override
  String get rowRemove => 'Remove';

  @override
  String get rowPlaylist => 'Playlist';

  @override
  String plTrackCount(int count) {
    return '$count tracks';
  }

  @override
  String get lyricsSourceAuto => 'Auto';

  @override
  String get lyricsSourceEmbedded => 'Embedded';

  @override
  String get lyricsSourceBestQuality => 'Best available quality';

  @override
  String get lyricsSourceFileTags => 'From the audio file\'s own tags';

  @override
  String get lyricsSourceWordOnline => 'Word-synced (online)';

  @override
  String get lyricsSourceLineOnline => 'Line-synced (online)';

  @override
  String get lyricsSourceNotFound => 'Not found for this song';

  @override
  String get npCatModeUnlocked => 'Meow?! Cat Mode unlocked 🐱';

  @override
  String get shellResumePlayback => 'Resume playback';

  @override
  String get shellPlay => 'PLAY';

  @override
  String get devSection => 'DEVELOPER';

  @override
  String get devModeUnlocked => '🛠️ Developer mode unlocked';

  @override
  String get devUnlockAll => 'Unlock all accessories';

  @override
  String get devClearLyricsCache => 'Clear lyrics cache';

  @override
  String get devRefetchLyrics => 'Refetch all lyrics…';

  @override
  String get devLyricsCleared => 'Lyrics cache cleared';

  @override
  String get devHideOptions => 'Hide developer options';

  @override
  String get devModeOff => 'Developer mode off';

  @override
  String get youCantReadFolders => 'Couldn\'t read your music folders';

  @override
  String get youNoMusicFolders => 'No music folders found';
}
