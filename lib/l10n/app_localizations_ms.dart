// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class AppLocalizationsMs extends AppLocalizations {
  AppLocalizationsMs([String locale = 'ms']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'Bahasa';

  @override
  String get languageFollowSystem => 'Ikut sistem';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Hana360';

  @override
  String get commonCancel => 'Batal';

  @override
  String get commonConfirm => 'OK';

  @override
  String get commonBack => 'Kembali';

  @override
  String get commonDone => 'Selesai';

  @override
  String get commonUnknown => 'Tidak diketahui';

  @override
  String get secUpmix => 'Enjin upmix';

  @override
  String get spatialAudioTitle => 'Audio ruang 360°';

  @override
  String get npNothingPlaying => 'Belum ada apa-apa dimainkan';

  @override
  String get npPickSong => 'Pilih lagu daripada pustaka anda';

  @override
  String get npSpatialSettings => 'Tetapan 360°';

  @override
  String get npLyrics => 'Lirik';

  @override
  String get libSearchHint => 'Cari dalam muzik anda…';

  @override
  String get libClearLibrary => 'Kosongkan pustaka';

  @override
  String get libImportMusic => 'Import muzik';

  @override
  String libError(String error) {
    return 'Ada sesuatu yang tidak kena: $error';
  }

  @override
  String libNoMatch(String query) {
    return 'Tiada yang sepadan dengan \"$query\"';
  }

  @override
  String get libPermissionDenied =>
      'Hana360 memerlukan kebenaran untuk mencari muzik anda\nTiada akses pada peranti ini? Import sebaliknya.';

  @override
  String get libNoSongs =>
      'Tiada lagu ditemui pada peranti ini\nImport muzik daripada fail anda untuk bermula';

  @override
  String get libGrantAccess => 'Beri akses';

  @override
  String get libRescan => 'Imbas semula';

  @override
  String get libAddedToQueue => 'Ditambah ke baris gilir';

  @override
  String get libNoAlbums => 'Belum ada album';

  @override
  String get libNoFolders => 'Belum ada folder';

  @override
  String get libNoPlaylists => 'Belum ada senarai main';

  @override
  String libPlaylistCreated(String name) {
    return 'Senarai main \"$name\" dicipta 🌸';
  }

  @override
  String get libFolderHint =>
      'tekan lama folder untuk menjadikannya senarai main';

  @override
  String libSongCount(int count) {
    return '$count lagu';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count lagu · $path';
  }

  @override
  String get homeGreetingLate => 'Berjaga lewat ♪';

  @override
  String get homeGreetingMorning => 'Selamat pagi ♪';

  @override
  String get homeGreetingAfternoon => 'Selamat tengah hari ♪';

  @override
  String get homeGreetingEvening => 'Selamat petang ♪';

  @override
  String get homeJumpBackIn => 'SAMBUNG SEMULA';

  @override
  String get homeForYou => 'UNTUK ANDA';

  @override
  String get homeForYouSub =>
      'dipilih pada peranti ini, daripada pendengaran anda';

  @override
  String get homeWelcome => 'Selamat datang ke Hana360 🌸';

  @override
  String get homeAllQuiet => 'Semua senyap 🌸';

  @override
  String get homeLibraryHint =>
      'Muzik anda tinggal di tab Pustaka — tambah folder di sana. Semua yang anda mainkan berkumpul di sini.';

  @override
  String get homePlayHint =>
      'Mainkan sesuatu dan ia akan menunggu di sini lain kali.';

  @override
  String get youRescanLibrary => 'Imbas semula pustaka';

  @override
  String get youExcludedFolders => 'Folder dikecualikan';

  @override
  String get youExcludedFoldersSub => 'Sembunyikan folder daripada pustaka';

  @override
  String get youCatMode => 'Mod kucing';

  @override
  String get youAbout => 'Perihal';

  @override
  String get youScanning => 'Mengimbas muzik anda…';

  @override
  String get youOpenSource => 'Sumber Terbuka';

  @override
  String get youOpenSourceSub =>
      'Hana360 ialah terbitan Hanamimi (GPLv3) oleh ShaptakNaskar — diubah suai 2026-08-10';

  @override
  String get youCheckUpdates => 'Semak kemas kini';

  @override
  String get youCheckUpdatesSub => 'Binaan baharu muncul di GitHub Releases';

  @override
  String get youUpToDate => 'Anda terkini 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Dibuat oleh Sappy';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'Teruskan main di latar belakang';

  @override
  String get youKeepPlayingAllowed =>
      'Dibenarkan — sistem tidak akan menjeda muzik anda';

  @override
  String get youKeepPlayingTap =>
      'Ketik untuk menghentikan sistem daripada memberhentikan mainan';

  @override
  String get youExcludedFoldersTitle => 'Folder dikecualikan';

  @override
  String get youExcludedFoldersDesc =>
      'Lagu dalam folder yang dimatikan dikecualikan daripada pustaka';

  @override
  String get youVisSensitivity => 'Kepekaan visualizer';

  @override
  String get youVisSensitivitySub =>
      'Naikkan untuk lagu yang hampir tidak menggerakkannya';

  @override
  String get youNerdMode => 'Mod nerd';

  @override
  String get youNerdModeSub =>
      'Paparkan codec, bitrate dan output audio pada Sedang Dimain';

  @override
  String get youEqualizer => 'Equalizer';

  @override
  String get youComingSoon => 'Akan datang';

  @override
  String get sleepTimer => 'Pemasa tidur';

  @override
  String get sleep15 => '15 minit';

  @override
  String get sleep30 => '30 minit';

  @override
  String get sleep1h => '1 jam';

  @override
  String get sleepEndTrack => 'Akhir lagu';

  @override
  String get sleepFading => 'Semakin pudar… mimpi indah';

  @override
  String sleepIn(String time) {
    return 'Tidur dalam $time';
  }

  @override
  String get sleepEndTrackActive => 'Tidur apabila lagu ini tamat';

  @override
  String get sleepCancel => 'Batalkan pemasa';

  @override
  String get queueUpNext => 'Seterusnya';

  @override
  String get queueEmpty => 'Baris gilir kosong';

  @override
  String get updateAvailable => 'Kemas kini tersedia ✨';

  @override
  String get updateNoNotes => 'Tiada nota keluaran.';

  @override
  String get updateInstalling => 'Membuka pemasangan…';

  @override
  String get updateFailed => 'Tidak dapat mengemas kini — cuba lagi kemudian';

  @override
  String get updateLater => 'Kemudian';

  @override
  String get updateRetry => 'Cuba semula';

  @override
  String get updateNow => 'Kemas kini';

  @override
  String get spatialToggleTitle => 'Audio ruang 360°';

  @override
  String get spatialOn => 'Hidup';

  @override
  String get spatialOff => 'Mati';

  @override
  String get lyricsNoFound => 'Lirik tidak ditemui';

  @override
  String get lyricsJustListening => 'Yang ini hanya untuk didengar';

  @override
  String get lyricsTrySource => 'Cuba sumber lain';

  @override
  String get lyricsSource => 'Sumber lirik';

  @override
  String get lyricsWordSynced => 'Diselaraskan perkataan';

  @override
  String get lyricsLineSynced => 'Diselaraskan baris';

  @override
  String get lyricsUnsynced => 'Tidak diselaraskan';

  @override
  String get plNoPlaylists => 'Belum ada senarai main — buat satu dahulu!';

  @override
  String get plAddToPlaylist => 'Tambah ke senarai main';

  @override
  String plAddedTo(String name) {
    return 'Ditambah ke $name';
  }

  @override
  String get shareLyrics => 'Kongsi lirik';

  @override
  String get shareMaxLines => 'Bilangan baris maksimum dipilih';

  @override
  String sharePickLines(int count) {
    return 'Pilih sehingga $count baris';
  }

  @override
  String get sharePickHint => 'Pilih beberapa baris di bawah…';

  @override
  String get shareButton => 'Kongsi';

  @override
  String get batTitle => 'Teruskan muzik dimainkan 🎵';

  @override
  String get batBody =>
      'Pengoptimuman bateri Android boleh menjeda muzik anda apabila skrin dimatikan. Benarkan Hana360 berjalan tanpa sekatan supaya mainan kekal stabil.\n\nAnda boleh mengubah ini bila-bila masa di Anda → \"Teruskan main di latar belakang\".';

  @override
  String get batNotNow => 'Bukan sekarang';

  @override
  String get batAllow => 'Benarkan';

  @override
  String get algoSwitch => 'Algoritma';

  @override
  String get speakerDistance => 'Jarak pembesar suara';

  @override
  String get channelTrim => 'Trim saluran';

  @override
  String get masterGain => 'Gandaan utama';

  @override
  String get secHrtf => 'Pemperibadian HRTF';

  @override
  String get outputGain => 'Gandaan output';

  @override
  String get secEq => 'EQ ruang';

  @override
  String get secReverb => 'Gema';

  @override
  String get roomSize => 'Bilik';

  @override
  String get reverbGain => 'Gandaan gema';

  @override
  String get secTracking => 'Penjejakan kepala';

  @override
  String get trackOff => 'Mati';

  @override
  String get trackSensor => 'Sensor telefon';

  @override
  String get trackManual => 'XY manual';

  @override
  String get dragHint =>
      'Seret untuk melaras orientasi kepala (medan bunyi mengikuti)';

  @override
  String get customEq => 'Tersuai';

  @override
  String get eqPresetMusic => 'Muzik';

  @override
  String get eqPresetCinema => 'Pawagam';

  @override
  String get eqPresetGame => 'Permainan';

  @override
  String get eqPresetVoice => 'Suara';

  @override
  String get hrtfGroup0 => 'Lelaki / Kecil / Kecil';

  @override
  String get hrtfGroup1 => 'Lelaki / Kecil / Sederhana';

  @override
  String get hrtfGroup2 => 'Lelaki / Kecil / Besar';

  @override
  String get hrtfGroup3 => 'Lelaki / Sederhana / Kecil';

  @override
  String get hrtfGroup4 => 'Lelaki / Sederhana / Sederhana';

  @override
  String get hrtfGroup5 => 'Lelaki / Sederhana / Besar';

  @override
  String get hrtfGroup6 => 'Lelaki / Besar / Kecil';

  @override
  String get hrtfGroup7 => 'Lelaki / Besar / Sederhana';

  @override
  String get hrtfGroup8 => 'Lelaki / Besar / Besar';

  @override
  String get hrtfGroup9 => 'Wanita / Kecil / Kecil';

  @override
  String get hrtfGroup10 => 'Wanita / Kecil / Sederhana';

  @override
  String get hrtfGroup11 => 'Wanita / Kecil / Besar';

  @override
  String get hrtfGroup12 => 'Wanita / Sederhana / Kecil';

  @override
  String get hrtfGroup13 => 'Wanita / Sederhana / Sederhana';

  @override
  String get hrtfGroup14 => 'Wanita / Sederhana / Besar';

  @override
  String get navHome => 'Utama';

  @override
  String get navLibrary => 'Pustaka';

  @override
  String get navPlaying => 'Sedang Dimain';

  @override
  String get navYou => 'Anda';

  @override
  String get tabSongs => 'Lagu';

  @override
  String get tabAlbums => 'Album';

  @override
  String get tabFolders => 'Folder';

  @override
  String get tabPlaylists => 'Senarai Main';

  @override
  String get youMood => 'MOOD';

  @override
  String get youCompanion => 'TEMAN ANDA';

  @override
  String get youBuddies => 'RAKAN';

  @override
  String get youSound => 'BUNYI';

  @override
  String get youMore => 'LAGI';

  @override
  String get themeCherryBlossom => 'Bunga Sakura';

  @override
  String get themeStarryNight => 'Malam Berbintang';

  @override
  String get themeAdaptiveLight => 'Terang adaptif';

  @override
  String get themeAdaptiveDark => 'Gelap adaptif';

  @override
  String youListenedTogether(int h, int m) {
    return '${h}j ${m}m didengar bersama';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'Pengepala dan Sedang Dimain';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'Bertenggek pada tajuk Pustaka';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'Tidur sebentar pada pemain mini';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'Berjalan di atas lagu disukai';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'Bercahaya pada tema gelap';

  @override
  String get accBow => 'Reben merah jambu';

  @override
  String get accHeadphones => 'Fon kepala kecil';

  @override
  String get accFlower => 'Bunga';

  @override
  String get accCrown => 'Mahkota kecil';

  @override
  String accUnlockLabel(int h) {
    return 'Dengar selama $h jam';
  }

  @override
  String get youCrossfade => 'Crossfade';

  @override
  String get youCrossfadeSub => 'Campurkan akhir lagu ke lagu seterusnya';

  @override
  String get youSmartShuffle => 'Kocok pintar';

  @override
  String get youSmartShuffleSub =>
      'Kocok condong kepada kegemaran anda — dikira pada peranti ini';

  @override
  String get libLikedSongs => 'Lagu disukai';

  @override
  String get libTapHeart => 'Ketik hati pada lagu untuk menyimpannya di sini';

  @override
  String get libRemovedFromQueue => 'Dikeluarkan daripada baris gilir';

  @override
  String get libRemovedFromLibrary => 'Dikeluarkan daripada pustaka';

  @override
  String get libRemoveFromLibrary => 'Keluarkan daripada pustaka';

  @override
  String get libNewPlaylist => 'Senarai main baharu';

  @override
  String get libPlaylistName => 'Nama senarai main';

  @override
  String get libCreate => 'Cipta';

  @override
  String get libSwipeHint =>
      'leret ke kiri untuk mengeluarkan · tekan lama untuk menyusun semula';

  @override
  String get libChooseCover => 'Pilih imej kulit';

  @override
  String get libBackToArtCover => 'Kembali ke kulit lagu';

  @override
  String libDeleteConfirm(String name) {
    return 'Padam \"$name\"?';
  }

  @override
  String get libDeleteKeepSongs => 'Lagu itu sendiri kekal pada peranti anda';

  @override
  String get libKeep => 'Simpan';

  @override
  String get libDelete => 'Padam';

  @override
  String get libRemoveKeepFile => 'Fail itu sendiri kekal pada peranti anda';

  @override
  String get libClearConfirm => 'Keluarkan semua fail?';

  @override
  String get libLibraryCleared => 'Pustaka dikosongkan';

  @override
  String get libPickAudioFiles => 'Pilih fail audio…';

  @override
  String get libImportFolder => 'Import folder';

  @override
  String get libScanWholeFolder => 'Imbas keseluruhan folder… (disyorkan)';

  @override
  String libImportFailed(String error) {
    return 'Import gagal: $error';
  }

  @override
  String get libNoAudioFound => 'Tiada fail audio ditemui';

  @override
  String libImportedCount(int count) {
    return 'Diimport $count lagu';
  }

  @override
  String get libNothingHere =>
      'Belum ada apa-apa di sini — leret ke kiri untuk mengeluarkan, tekan lama untuk menyusun semula';

  @override
  String get sidebarYourLibrary => 'PUSTAKA ANDA';

  @override
  String get sidebarPlaylists => 'SENARAI MAIN';

  @override
  String get sidebarFolders => 'FOLDER';

  @override
  String get rowQueue => 'Baris gilir';

  @override
  String get rowRemove => 'Keluarkan';

  @override
  String get rowPlaylist => 'Senarai main';

  @override
  String plTrackCount(int count) {
    return '$count trek';
  }

  @override
  String get lyricsSourceAuto => 'Auto';

  @override
  String get lyricsSourceEmbedded => 'Terbenam';

  @override
  String get lyricsSourceBestQuality => 'Kualiti terbaik tersedia';

  @override
  String get lyricsSourceFileTags => 'Daripada tag fail audio sendiri';

  @override
  String get lyricsSourceWordOnline => 'Diselaraskan perkataan (dalam talian)';

  @override
  String get lyricsSourceLineOnline => 'Diselaraskan baris (dalam talian)';

  @override
  String get lyricsSourceNotFound => 'Tidak ditemui untuk lagu ini';

  @override
  String get npCatModeUnlocked => 'Meow?! Mod kucing dibuka 🐱';

  @override
  String get shellResumePlayback => 'Sambung mainan';

  @override
  String get shellPlay => 'MAIN';

  @override
  String get devSection => 'PEMBANGUN';

  @override
  String get devModeUnlocked => '🛠️ Mod pembangun dibuka';

  @override
  String get devUnlockAll => 'Buka semua aksesori';

  @override
  String get devClearLyricsCache => 'Kosongkan cache lirik';

  @override
  String get devRefetchLyrics => 'Ambil semula semua lirik…';

  @override
  String get devLyricsCleared => 'Cache lirik dikosongkan';

  @override
  String get devHideOptions => 'Sembunyikan pilihan pembangun';

  @override
  String get devModeOff => 'Mod pembangun dimatikan';

  @override
  String get youCantReadFolders => 'Tidak dapat membaca folder muzik anda';

  @override
  String get youNoMusicFolders => 'Tiada folder muzik ditemui';
}
