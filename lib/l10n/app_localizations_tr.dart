// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'Dil';

  @override
  String get languageFollowSystem => 'Sistemi izle';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Baseus × Hanamimi';

  @override
  String get commonCancel => 'İptal';

  @override
  String get commonConfirm => 'Tamam';

  @override
  String get commonBack => 'Geri';

  @override
  String get commonDone => 'Bitti';

  @override
  String get commonUnknown => 'Bilinmiyor';

  @override
  String get secUpmix => 'Upmix Motoru';

  @override
  String get spatialAudioTitle => '360 Uzamsal Ses';

  @override
  String get npNothingPlaying => 'Çalan bir şey yok';

  @override
  String get npPickSong => 'Kitaplığınızdan bir şarkı seçin';

  @override
  String get npSpatialSettings => '360 Ayarları';

  @override
  String get npLyrics => 'Sözler';

  @override
  String get libSearchHint => 'Müziğinizi arayın…';

  @override
  String get libClearLibrary => 'Kitaplığı temizle';

  @override
  String get libImportMusic => 'Müzik içe aktar';

  @override
  String libError(String error) {
    return 'Bir şeyler ters gitti: $error';
  }

  @override
  String libNoMatch(String query) {
    return '\"$query\" ile eşleşen bir şey yok';
  }

  @override
  String get libPermissionDenied =>
      'Hana360 müziğinizi bulmak için izin istiyor\nBu cihazda erişim yok mu? İçe aktarın.';

  @override
  String get libNoSongs =>
      'Bu cihazda şarkı bulunamadı\nDosyalarınızdan müzik içe aktarın';

  @override
  String get libGrantAccess => 'Erişim ver';

  @override
  String get libRescan => 'Yeniden tara';

  @override
  String get libAddedToQueue => 'Kuyruğa eklendi';

  @override
  String get libNoAlbums => 'Henüz albüm yok';

  @override
  String get libNoFolders => 'Henüz klasör yok';

  @override
  String get libNoPlaylists => 'Henüz çalma listesi yok';

  @override
  String libPlaylistCreated(String name) {
    return '\"$name\" çalma listesi oluşturuldu 🌸';
  }

  @override
  String get libFolderHint =>
      'klasörü çalma listesine dönüştürmek için uzun basın';

  @override
  String libSongCount(int count) {
    return '$count şarkı';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count şarkı · $path';
  }

  @override
  String get homeGreetingLate => 'Geç saate kadar ayaktasınız ♪';

  @override
  String get homeGreetingMorning => 'Günaydın ♪';

  @override
  String get homeGreetingAfternoon => 'İyi günler ♪';

  @override
  String get homeGreetingEvening => 'İyi akşamlar ♪';

  @override
  String get homeJumpBackIn => 'DEVAM ET';

  @override
  String get homeForYou => 'SİZİN İÇİN';

  @override
  String get homeForYouSub => 'bu cihazda, dinleme geçmişinizden seçildi';

  @override
  String get homeWelcome => 'Hana360\'a hoş geldiniz 🌸';

  @override
  String get homeAllQuiet => 'Her şey sakin 🌸';

  @override
  String get homeLibraryHint =>
      'Müziğiniz Kitaplık sekmesinde — oraya klasör ekleyin. Çaldığınız her şey burada toplanır.';

  @override
  String get homePlayHint =>
      'Bir şey çalın, bir dahaki sefere burada sizi beklesin.';

  @override
  String get youRescanLibrary => 'Kitaplığı yeniden tara';

  @override
  String get youExcludedFolders => 'Hariç tutulan klasörler';

  @override
  String get youExcludedFoldersSub => 'Klasörleri kitaplığınızdan gizle';

  @override
  String get youCatMode => 'Kedi Modu';

  @override
  String get youAbout => 'Hakkında';

  @override
  String get youScanning => 'Müziğiniz taranıyor…';

  @override
  String get youOpenSource => 'Açık Kaynak';

  @override
  String get youOpenSourceSub =>
      'Hana360, ShaptakNaskar\'ın Hanamimi (GPLv3) uygulamasının türevidir — 2026-08-10 tarihinde değiştirildi';

  @override
  String get youCheckUpdates => 'Güncellemeleri kontrol et';

  @override
  String get youCheckUpdatesSub =>
      'Yeni sürümler GitHub Releases\'ta yayınlanır';

  @override
  String get youUpToDate => 'Güncelsiniz 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Sappy tarafından yapıldı';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'Arka planda çalmaya devam et';

  @override
  String get youKeepPlayingAllowed =>
      'İzin verildi — sistem müziğinizi duraklatmaz';

  @override
  String get youKeepPlayingTap =>
      'Sistemin çalmayı durdurmasını önlemek için dokunun';

  @override
  String get youExcludedFoldersTitle => 'Hariç tutulan klasörler';

  @override
  String get youExcludedFoldersDesc =>
      'Kapatılan klasörlerdeki şarkılar kitaplığınızdan çıkarılır';

  @override
  String get youVisSensitivity => 'Görselleştirici hassasiyeti';

  @override
  String get youVisSensitivitySub => 'Zor hareket eden şarkılar için yükseltin';

  @override
  String get youNerdMode => 'İnek modu';

  @override
  String get youNerdModeSub => 'Oynatıcıda codec, bit hızı ve çıkışı göster';

  @override
  String get youEqualizer => 'Ekolayzer';

  @override
  String get youComingSoon => 'Yakında';

  @override
  String get sleepTimer => 'Uyku zamanlayıcısı';

  @override
  String get sleep15 => '15 dakika';

  @override
  String get sleep30 => '30 dakika';

  @override
  String get sleep1h => '1 saat';

  @override
  String get sleepEndTrack => 'Şarkının sonu';

  @override
  String get sleepFading => 'Sönümleniyor… tatlı rüyalar';

  @override
  String sleepIn(String time) {
    return '$time içinde uyu';
  }

  @override
  String get sleepEndTrackActive => 'Bu şarkı bitince uyu';

  @override
  String get sleepCancel => 'Zamanlayıcıyı iptal et';

  @override
  String get queueUpNext => 'Sıradaki';

  @override
  String get queueEmpty => 'Kuyruk boş';

  @override
  String get updateAvailable => 'Güncelleme mevcut ✨';

  @override
  String get updateNoNotes => 'Sürüm notu yok.';

  @override
  String get updateInstalling => 'Yükleyici açılıyor…';

  @override
  String get updateFailed => 'Güncellenemedi — daha sonra tekrar deneyin';

  @override
  String get updateLater => 'Sonra';

  @override
  String get updateRetry => 'Tekrar dene';

  @override
  String get updateNow => 'Güncelle';

  @override
  String get spatialToggleTitle => '360 Uzamsal Ses';

  @override
  String get spatialOn => 'Açık';

  @override
  String get spatialOff => 'Kapalı';

  @override
  String get lyricsNoFound => 'Söz bulunamadı';

  @override
  String get lyricsJustListening => 'Bu sadece dinlemek için';

  @override
  String get lyricsTrySource => 'Başka bir kaynak dene';

  @override
  String get lyricsSource => 'Söz kaynağı';

  @override
  String get lyricsWordSynced => 'Kelime senkronlu';

  @override
  String get lyricsLineSynced => 'Satır senkronlu';

  @override
  String get lyricsUnsynced => 'Senkronsuz';

  @override
  String get plNoPlaylists =>
      'Henüz çalma listesi yok — önce bir tane oluşturun!';

  @override
  String get plAddToPlaylist => 'Çalma listesine ekle';

  @override
  String plAddedTo(String name) {
    return '$name eklendi';
  }

  @override
  String get shareLyrics => 'Sözleri paylaş';

  @override
  String get shareMaxLines => 'Maksimum satır seçildi';

  @override
  String sharePickLines(int count) {
    return 'En fazla $count satır seçin';
  }

  @override
  String get sharePickHint => 'Aşağıdan birkaç satır seçin…';

  @override
  String get shareButton => 'Paylaş';

  @override
  String get batTitle => 'Müzik çalmaya devam etsin 🎵';

  @override
  String get batBody =>
      'Android\'in pil optimizasyonu ekran kapalıyken müziğinizi duraklatabilir. Hana360\'ın kısıtlamasız çalışmasına izin verin.\n\nBunu You → \"Arka planda çalmaya devam et\" bölümünden değiştirebilirsiniz.';

  @override
  String get batNotNow => 'Şimdi değil';

  @override
  String get batAllow => 'İzin ver';

  @override
  String get algoSwitch => 'Algoritma';

  @override
  String get speakerDistance => 'Hoparlör mesafesi';

  @override
  String get channelTrim => 'Kanal ayarı';

  @override
  String get masterGain => 'Ana kazanç';

  @override
  String get secHrtf => 'HRTF Kişiselleştirme';

  @override
  String get outputGain => 'Çıkış kazancı';

  @override
  String get secEq => 'Uzamsal EQ';

  @override
  String get secReverb => 'Yankı';

  @override
  String get roomSize => 'Oda';

  @override
  String get reverbGain => 'Yankı kazancı';

  @override
  String get secTracking => 'Kafa takibi';

  @override
  String get trackOff => 'Kapalı';

  @override
  String get trackSensor => 'Telefon sensörü';

  @override
  String get trackManual => 'Manuel XY';

  @override
  String get dragHint =>
      'Kafa yönünü ayarlamak için sürükleyin (ses alanı takip eder)';

  @override
  String get customEq => 'Özel';

  @override
  String get eqPresetMusic => 'Müzik';

  @override
  String get eqPresetCinema => 'Sinema';

  @override
  String get eqPresetGame => 'Oyun';

  @override
  String get eqPresetVoice => 'Ses';

  @override
  String get hrtfGroup0 => 'Erkek / Küçük / Küçük';

  @override
  String get hrtfGroup1 => 'Erkek / Küçük / Orta';

  @override
  String get hrtfGroup2 => 'Erkek / Küçük / Büyük';

  @override
  String get hrtfGroup3 => 'Erkek / Orta / Küçük';

  @override
  String get hrtfGroup4 => 'Erkek / Orta / Orta';

  @override
  String get hrtfGroup5 => 'Erkek / Orta / Büyük';

  @override
  String get hrtfGroup6 => 'Erkek / Büyük / Küçük';

  @override
  String get hrtfGroup7 => 'Erkek / Büyük / Orta';

  @override
  String get hrtfGroup8 => 'Erkek / Büyük / Büyük';

  @override
  String get hrtfGroup9 => 'Kadın / Küçük / Küçük';

  @override
  String get hrtfGroup10 => 'Kadın / Küçük / Orta';

  @override
  String get hrtfGroup11 => 'Kadın / Küçük / Büyük';

  @override
  String get hrtfGroup12 => 'Kadın / Orta / Küçük';

  @override
  String get hrtfGroup13 => 'Kadın / Orta / Orta';

  @override
  String get hrtfGroup14 => 'Kadın / Orta / Büyük';

  @override
  String get navHome => 'Ana Sayfa';

  @override
  String get navLibrary => 'Kitaplık';

  @override
  String get navPlaying => 'Çalıyor';

  @override
  String get navYou => 'Siz';

  @override
  String get tabSongs => 'Şarkılar';

  @override
  String get tabAlbums => 'Albümler';

  @override
  String get tabFolders => 'Klasörler';

  @override
  String get tabPlaylists => 'Çalma listeleri';

  @override
  String get youMood => 'Ruh hali';

  @override
  String get youCompanion => 'Arkadaşınız';

  @override
  String get youBuddies => 'Dostlar';

  @override
  String get youSound => 'Ses';

  @override
  String get youMore => 'Daha fazla';

  @override
  String get themeCherryBlossom => 'Kiraz çiçeği';

  @override
  String get themeStarryNight => 'Yıldızlı gece';

  @override
  String get themeAdaptiveLight => 'Uyarlanabilir açık';

  @override
  String get themeAdaptiveDark => 'Uyarlanabilir koyu';

  @override
  String youListenedTogether(int h, int m) {
    return 'Birlikte $h saat $m dakika dinlendi';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'Başlık ve Oynatıcı';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'Kitaplık başlığına tüner';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'Mini oynatıcıda kestirir';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'Beğenilen şarkıların üzerinde yürür';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'Koyu temalarda parlar';

  @override
  String get accBow => 'Pembe fiyonk';

  @override
  String get accHeadphones => 'Küçük kulaklık';

  @override
  String get accFlower => 'Çiçek';

  @override
  String get accCrown => 'Küçük taç';

  @override
  String accUnlockLabel(int h) {
    return '$h saat dinleyin';
  }

  @override
  String get youCrossfade => 'Çapraz geçiş';

  @override
  String get youCrossfadeSub => 'Şarkının sonunu bir sonrakine karıştır';

  @override
  String get youSmartShuffle => 'Akıllı karıştırma';

  @override
  String get youSmartShuffleSub =>
      'Karıştırma favorilerinize yönelir — bu cihazda hesaplanır';

  @override
  String get libLikedSongs => 'Beğenilen şarkılar';

  @override
  String get libTapHeart => 'Bir şarkının kalbine dokunarak onu burada tutun';

  @override
  String get libRemovedFromQueue => 'Kuyruktan kaldırıldı';

  @override
  String get libRemovedFromLibrary => 'Kitaplıktan kaldırıldı';

  @override
  String get libRemoveFromLibrary => 'Kitaplıktan kaldır';

  @override
  String get libNewPlaylist => 'Yeni çalma listesi';

  @override
  String get libPlaylistName => 'Çalma listesi adı';

  @override
  String get libCreate => 'Oluştur';

  @override
  String get libSwipeHint =>
      'kaldırmak için sola kaydır · sıralamak için basılı tut';

  @override
  String get libChooseCover => 'Kapak görseli seç';

  @override
  String get libBackToArtCover => 'Şarkı kapağına geri dön';

  @override
  String libDeleteConfirm(String name) {
    return '\"$name\" silinsin mi?';
  }

  @override
  String get libDeleteKeepSongs => 'Şarkılar cihazınızda kalır';

  @override
  String get libKeep => 'Sakla';

  @override
  String get libDelete => 'Sil';

  @override
  String get libRemoveKeepFile => 'Dosyanın kendisi cihazınızda kalır';

  @override
  String get libClearConfirm => 'Tüm dosyalar kaldırılsın mı?';

  @override
  String get libLibraryCleared => 'Kitaplık temizlendi';

  @override
  String get libPickAudioFiles => 'Ses dosyalarını seç…';

  @override
  String get libImportFolder => 'Klasör içe aktar';

  @override
  String get libScanWholeFolder => 'Tüm klasörü tara… (önerilir)';

  @override
  String libImportFailed(String error) {
    return 'İçe aktarma başarısız: $error';
  }

  @override
  String get libNoAudioFound => 'Ses dosyası bulunamadı';

  @override
  String libImportedCount(int count) {
    return '$count şarkı içe aktarıldı';
  }

  @override
  String get libNothingHere =>
      'Henüz bir şey yok — kaldırmak için sola kaydır, sıralamak için basılı tut';

  @override
  String get sidebarYourLibrary => 'KİTAPLIĞINIZ';

  @override
  String get sidebarPlaylists => 'ÇALMA LİSTELERİ';

  @override
  String get sidebarFolders => 'KLASÖRLER';

  @override
  String get rowQueue => 'Kuyruk';

  @override
  String get rowRemove => 'Kaldır';

  @override
  String get rowPlaylist => 'Çalma listesi';

  @override
  String plTrackCount(int count) {
    return '$count parça';
  }

  @override
  String get lyricsSourceAuto => 'Otomatik';

  @override
  String get lyricsSourceEmbedded => 'Gömülü';

  @override
  String get lyricsSourceBestQuality => 'En iyi mevcut kalite';

  @override
  String get lyricsSourceFileTags => 'Ses dosyasının kendi etiketlerinden';

  @override
  String get lyricsSourceWordOnline => 'Kelime senkronlu (çevrimiçi)';

  @override
  String get lyricsSourceLineOnline => 'Satır senkronlu (çevrimiçi)';

  @override
  String get lyricsSourceNotFound => 'Bu şarkı için bulunamadı';

  @override
  String get npCatModeUnlocked => 'Miyav?! Kedi Modu açıldı 🐱';

  @override
  String get shellResumePlayback => 'Çalmayı sürdür';

  @override
  String get shellPlay => 'OYNAT';

  @override
  String get devSection => 'GELİŞTİRİCİ';

  @override
  String get devModeUnlocked => '🛠️ Geliştirici modu açıldı';

  @override
  String get devUnlockAll => 'Tüm aksesuarları aç';

  @override
  String get devClearLyricsCache => 'Söz önbelleğini temizle';

  @override
  String get devRefetchLyrics => 'Tüm sözleri yeniden getir…';

  @override
  String get devLyricsCleared => 'Söz önbelleği temizlendi';

  @override
  String get devHideOptions => 'Geliştirici seçeneklerini gizle';

  @override
  String get devModeOff => 'Geliştirici modu kapalı';

  @override
  String get youCantReadFolders => 'Müzik klasörleriniz okunamadı';

  @override
  String get youNoMusicFolders => 'Müzik klasörü bulunamadı';
}
