// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'Bahasa';

  @override
  String get languageFollowSystem => 'Ikuti sistem';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Baseus × Hanamimi';

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
  String get secUpmix => 'Mesin Upmix';

  @override
  String get spatialAudioTitle => 'Audio Spasial 360';

  @override
  String get npNothingPlaying => 'Tidak ada yang diputar';

  @override
  String get npPickSong => 'Pilih lagu dari pustaka Anda';

  @override
  String get npSpatialSettings => 'Pengaturan 360';

  @override
  String get npLyrics => 'Lirik';

  @override
  String get libSearchHint => 'Cari musik Anda…';

  @override
  String get libClearLibrary => 'Kosongkan pustaka';

  @override
  String get libImportMusic => 'Impor musik';

  @override
  String libError(String error) {
    return 'Terjadi kesalahan: $error';
  }

  @override
  String libNoMatch(String query) {
    return 'Tidak ada yang cocok dengan \"$query\"';
  }

  @override
  String get libPermissionDenied =>
      'Hana360 butuh izin untuk menemukan musik Anda\nTidak ada akses di perangkat ini? Impor saja.';

  @override
  String get libNoSongs =>
      'Tidak ada lagu ditemukan di perangkat ini\nImpor musik dari file Anda';

  @override
  String get libGrantAccess => 'Berikan akses';

  @override
  String get libRescan => 'Pindai ulang';

  @override
  String get libAddedToQueue => 'Ditambahkan ke antrean';

  @override
  String get libNoAlbums => 'Belum ada album';

  @override
  String get libNoFolders => 'Belum ada folder';

  @override
  String get libNoPlaylists => 'Belum ada daftar putar';

  @override
  String libPlaylistCreated(String name) {
    return 'Daftar putar \"$name\" dibuat 🌸';
  }

  @override
  String get libFolderHint =>
      'tekan lama folder untuk mengubahnya menjadi daftar putar';

  @override
  String libSongCount(int count) {
    return '$count lagu';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count lagu · $path';
  }

  @override
  String get homeGreetingLate => 'Begadang ♪';

  @override
  String get homeGreetingMorning => 'Selamat pagi ♪';

  @override
  String get homeGreetingAfternoon => 'Selamat siang ♪';

  @override
  String get homeGreetingEvening => 'Selamat malam ♪';

  @override
  String get homeJumpBackIn => 'LANJUTKAN';

  @override
  String get homeForYou => 'UNTUK ANDA';

  @override
  String get homeForYouSub =>
      'dipilih di perangkat ini, dari riwayat dengarkan Anda';

  @override
  String get homeWelcome => 'Selamat datang di Hana360 🌸';

  @override
  String get homeAllQuiet => 'Semua tenang 🌸';

  @override
  String get homeLibraryHint =>
      'Musik Anda ada di tab Pustaka — tambahkan folder di sana. Semua yang Anda putar berkumpul di sini.';

  @override
  String get homePlayHint =>
      'Putar sesuatu dan itu akan menunggu Anda di sini lain kali.';

  @override
  String get youRescanLibrary => 'Pindai ulang pustaka';

  @override
  String get youExcludedFolders => 'Folder dikecualikan';

  @override
  String get youExcludedFoldersSub => 'Sembunyikan folder dari pustaka Anda';

  @override
  String get youCatMode => 'Mode Kucing';

  @override
  String get youAbout => 'Tentang';

  @override
  String get youScanning => 'Memindai musik Anda…';

  @override
  String get youOpenSource => 'Sumber terbuka';

  @override
  String get youOpenSourceSub =>
      'Hana360 adalah turunan dari Hanamimi (GPLv3) oleh ShaptakNaskar — dimodifikasi 2026-08-10';

  @override
  String get youCheckUpdates => 'Periksa pembaruan';

  @override
  String get youCheckUpdatesSub => 'Versi baru di GitHub Releases';

  @override
  String get youUpToDate => 'Anda sudah terbaru 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Dibuat oleh Sappy';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'Terus putar di latar belakang';

  @override
  String get youKeepPlayingAllowed =>
      'Diizinkan — sistem tidak akan menjeda musik Anda';

  @override
  String get youKeepPlayingTap =>
      'Ketuk untuk menghentikan sistem menghentikan pemutaran';

  @override
  String get youExcludedFoldersTitle => 'Folder dikecualikan';

  @override
  String get youExcludedFoldersDesc =>
      'Lagu di folder yang dimatikan dikecualikan dari pustaka Anda';

  @override
  String get youVisSensitivity => 'Sensitivitas visualizer';

  @override
  String get youVisSensitivitySub =>
      'Naikkan untuk lagu yang nyaris tidak bergerak';

  @override
  String get youNerdMode => 'Mode kutu buku';

  @override
  String get youNerdModeSub =>
      'Tampilkan codec, bitrate & output di layar putar';

  @override
  String get youEqualizer => 'Ekualiser';

  @override
  String get youComingSoon => 'Segera hadir';

  @override
  String get sleepTimer => 'Timer tidur';

  @override
  String get sleep15 => '15 menit';

  @override
  String get sleep30 => '30 menit';

  @override
  String get sleep1h => '1 jam';

  @override
  String get sleepEndTrack => 'Akhir lagu';

  @override
  String get sleepFading => 'Memudar… mimpi indah';

  @override
  String sleepIn(String time) {
    return 'Tidur dalam $time';
  }

  @override
  String get sleepEndTrackActive => 'Tidur saat lagu ini selesai';

  @override
  String get sleepCancel => 'Batalkan timer';

  @override
  String get queueUpNext => 'Berikutnya';

  @override
  String get queueEmpty => 'Antrean kosong';

  @override
  String get updateAvailable => 'Pembaruan tersedia ✨';

  @override
  String get updateNoNotes => 'Tidak ada catatan rilis.';

  @override
  String get updateInstalling => 'Membuka penginstal…';

  @override
  String get updateFailed => 'Gagal memperbarui — coba lagi nanti';

  @override
  String get updateLater => 'Nanti';

  @override
  String get updateRetry => 'Coba lagi';

  @override
  String get updateNow => 'Perbarui';

  @override
  String get spatialToggleTitle => 'Audio Spasial 360';

  @override
  String get spatialOn => 'Aktif';

  @override
  String get spatialOff => 'Nonaktif';

  @override
  String get lyricsNoFound => 'Lirik tidak ditemukan';

  @override
  String get lyricsJustListening => 'Lagu ini hanya untuk didengar';

  @override
  String get lyricsTrySource => 'Coba sumber lain';

  @override
  String get lyricsSource => 'Sumber lirik';

  @override
  String get lyricsWordSynced => 'Tersinkron per kata';

  @override
  String get lyricsLineSynced => 'Tersinkron per baris';

  @override
  String get lyricsUnsynced => 'Tidak tersinkron';

  @override
  String get plNoPlaylists => 'Belum ada daftar putar — buat dulu!';

  @override
  String get plAddToPlaylist => 'Tambah ke daftar putar';

  @override
  String plAddedTo(String name) {
    return 'Ditambahkan ke $name';
  }

  @override
  String get shareLyrics => 'Bagikan lirik';

  @override
  String get shareMaxLines => 'Baris maksimum dipilih';

  @override
  String sharePickLines(int count) {
    return 'Pilih hingga $count baris';
  }

  @override
  String get sharePickHint => 'Pilih beberapa baris di bawah…';

  @override
  String get shareButton => 'Bagikan';

  @override
  String get batTitle => 'Biarkan musik terus diputar 🎵';

  @override
  String get batBody =>
      'Optimasi baterai Android dapat menjeda musik saat layar mati. Izinkan Hana360 berjalan tanpa batasan.\n\nAnda bisa mengubahnya di You → \"Terus putar di latar belakang\".';

  @override
  String get batNotNow => 'Nanti';

  @override
  String get batAllow => 'Izinkan';

  @override
  String get algoSwitch => 'Algoritme';

  @override
  String get speakerDistance => 'Jarak speaker';

  @override
  String get channelTrim => 'Penyesuaian kanal';

  @override
  String get masterGain => 'Penguatan utama';

  @override
  String get secHrtf => 'Personalisasi HRTF';

  @override
  String get outputGain => 'Penguatan output';

  @override
  String get secEq => 'EQ Spasial';

  @override
  String get secReverb => 'Gema';

  @override
  String get roomSize => 'Ruangan';

  @override
  String get reverbGain => 'Penguatan gema';

  @override
  String get secTracking => 'Pelacakan kepala';

  @override
  String get trackOff => 'Mati';

  @override
  String get trackSensor => 'Sensor ponsel';

  @override
  String get trackManual => 'XY manual';

  @override
  String get dragHint =>
      'Seret untuk menyesuaikan arah kepala (medan suara mengikuti)';

  @override
  String get customEq => 'Kustom';

  @override
  String get eqPresetMusic => 'Musik';

  @override
  String get eqPresetCinema => 'Bioskop';

  @override
  String get eqPresetGame => 'Game';

  @override
  String get eqPresetVoice => 'Vokal';

  @override
  String get hrtfGroup0 => 'Pria / Kecil / Kecil';

  @override
  String get hrtfGroup1 => 'Pria / Kecil / Sedang';

  @override
  String get hrtfGroup2 => 'Pria / Kecil / Besar';

  @override
  String get hrtfGroup3 => 'Pria / Sedang / Kecil';

  @override
  String get hrtfGroup4 => 'Pria / Sedang / Sedang';

  @override
  String get hrtfGroup5 => 'Pria / Sedang / Besar';

  @override
  String get hrtfGroup6 => 'Pria / Besar / Kecil';

  @override
  String get hrtfGroup7 => 'Pria / Besar / Sedang';

  @override
  String get hrtfGroup8 => 'Pria / Besar / Besar';

  @override
  String get hrtfGroup9 => 'Wanita / Kecil / Kecil';

  @override
  String get hrtfGroup10 => 'Wanita / Kecil / Sedang';

  @override
  String get hrtfGroup11 => 'Wanita / Kecil / Besar';

  @override
  String get hrtfGroup12 => 'Wanita / Sedang / Kecil';

  @override
  String get hrtfGroup13 => 'Wanita / Sedang / Sedang';

  @override
  String get hrtfGroup14 => 'Wanita / Sedang / Besar';

  @override
  String get navHome => 'Beranda';

  @override
  String get navLibrary => 'Pustaka';

  @override
  String get navPlaying => 'Memutar';

  @override
  String get navYou => 'Anda';

  @override
  String get tabSongs => 'Lagu';

  @override
  String get tabAlbums => 'Album';

  @override
  String get tabFolders => 'Folder';

  @override
  String get tabPlaylists => 'Daftar putar';

  @override
  String get youMood => 'SUASANA';

  @override
  String get youCompanion => 'TEMAN ANDA';

  @override
  String get youBuddies => 'TEMAN';

  @override
  String get youSound => 'SUARA';

  @override
  String get youMore => 'LAINNYA';

  @override
  String get themeCherryBlossom => 'Bunga sakura';

  @override
  String get themeStarryNight => 'Malam berbintang';

  @override
  String get themeAdaptiveLight => 'Cahaya adaptif';

  @override
  String get themeAdaptiveDark => 'Gelap adaptif';

  @override
  String youListenedTogether(int h, int m) {
    return '${h}j ${m}m mendengarkan bersama';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'Header & layar putar';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'Bertengger di judul Pustaka';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'Tidur siang di pemutar mini';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'Berjalan di atas lagu favorit';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'Bersinar di tema gelap';

  @override
  String get accBow => 'Pita merah muda';

  @override
  String get accHeadphones => 'Headphone kecil';

  @override
  String get accFlower => 'Bunga';

  @override
  String get accCrown => 'Mahkota kecil';

  @override
  String accUnlockLabel(int h) {
    return 'Dengarkan $h jam';
  }

  @override
  String get youCrossfade => 'Crossfade';

  @override
  String get youCrossfadeSub => 'Padukan akhir lagu ke lagu berikutnya';

  @override
  String get youSmartShuffle => 'Acak cerdas';

  @override
  String get youSmartShuffleSub =>
      'Acak condong ke favorit Anda — dihitung di perangkat ini';

  @override
  String get libLikedSongs => 'Lagu disukai';

  @override
  String get libTapHeart => 'Ketuk hati pada lagu untuk menyimpannya di sini';

  @override
  String get libRemovedFromQueue => 'Dihapus dari antrean';

  @override
  String get libRemovedFromLibrary => 'Dihapus dari pustaka';

  @override
  String get libRemoveFromLibrary => 'Hapus dari pustaka';

  @override
  String get libNewPlaylist => 'Daftar putar baru';

  @override
  String get libPlaylistName => 'Nama daftar putar';

  @override
  String get libCreate => 'Buat';

  @override
  String get libSwipeHint => 'geser kiri untuk menghapus · tahan untuk urutkan';

  @override
  String get libChooseCover => 'Pilih gambar sampul';

  @override
  String get libBackToArtCover => 'Kembali ke sampul lagu';

  @override
  String libDeleteConfirm(String name) {
    return 'Hapus \"$name\"?';
  }

  @override
  String get libDeleteKeepSongs =>
      'Lagunya sendiri tetap ada di perangkat Anda';

  @override
  String get libKeep => 'Simpan';

  @override
  String get libDelete => 'Hapus';

  @override
  String get libRemoveKeepFile => 'Filanya sendiri tetap ada di perangkat Anda';

  @override
  String get libClearConfirm => 'Hapus semua file?';

  @override
  String get libLibraryCleared => 'Pustaka dikosongkan';

  @override
  String get libPickAudioFiles => 'Pilih file audio…';

  @override
  String get libImportFolder => 'Impor folder';

  @override
  String get libScanWholeFolder => 'Pindai seluruh folder… (disarankan)';

  @override
  String libImportFailed(String error) {
    return 'Impor gagal: $error';
  }

  @override
  String get libNoAudioFound => 'Tidak ada file audio ditemukan';

  @override
  String libImportedCount(int count) {
    return '$count lagu diimpor';
  }

  @override
  String get libNothingHere =>
      'Masih kosong — geser kiri untuk menghapus, tahan untuk urutkan';

  @override
  String get sidebarYourLibrary => 'PUSTAKA ANDA';

  @override
  String get sidebarPlaylists => 'DAFTAR PUTAR';

  @override
  String get sidebarFolders => 'FOLDER';

  @override
  String get rowQueue => 'Antrean';

  @override
  String get rowRemove => 'Hapus';

  @override
  String get rowPlaylist => 'Daftar putar';

  @override
  String plTrackCount(int count) {
    return '$count trek';
  }

  @override
  String get lyricsSourceAuto => 'Otomatis';

  @override
  String get lyricsSourceEmbedded => 'Tertanam';

  @override
  String get lyricsSourceBestQuality => 'Kualitas terbaik yang tersedia';

  @override
  String get lyricsSourceFileTags => 'Dari tag file audio itu sendiri';

  @override
  String get lyricsSourceWordOnline => 'Tersinkron per kata (online)';

  @override
  String get lyricsSourceLineOnline => 'Tersinkron per baris (online)';

  @override
  String get lyricsSourceNotFound => 'Tidak ditemukan untuk lagu ini';

  @override
  String get npCatModeUnlocked => 'Meong?! Mode Kucing terbuka 🐱';

  @override
  String get shellResumePlayback => 'Lanjutkan pemutaran';

  @override
  String get shellPlay => 'PUTAR';

  @override
  String get devSection => 'PENGEMBANG';

  @override
  String get devModeUnlocked => '🛠️ Mode pengembang terbuka';

  @override
  String get devUnlockAll => 'Buka semua aksesori';

  @override
  String get devClearLyricsCache => 'Bersihkan cache lirik';

  @override
  String get devRefetchLyrics => 'Ambil ulang semua lirik…';

  @override
  String get devLyricsCleared => 'Cache lirik dibersihkan';

  @override
  String get devHideOptions => 'Sembunyikan opsi pengembang';

  @override
  String get devModeOff => 'Mode pengembang nonaktif';

  @override
  String get youCantReadFolders => 'Tidak bisa membaca folder musik Anda';

  @override
  String get youNoMusicFolders => 'Tidak ada folder musik ditemukan';
}
