// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'Ngôn ngữ';

  @override
  String get languageFollowSystem => 'Theo hệ thống';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Baseus × Hanamimi';

  @override
  String get commonCancel => 'Hủy';

  @override
  String get commonConfirm => 'OK';

  @override
  String get commonBack => 'Quay lại';

  @override
  String get commonDone => 'Xong';

  @override
  String get commonUnknown => 'Không rõ';

  @override
  String get secUpmix => 'Công cụ Upmix';

  @override
  String get spatialAudioTitle => 'Âm thanh không gian 360';

  @override
  String get npNothingPlaying => 'Chưa có gì phát';

  @override
  String get npPickSong => 'Chọn bài hát từ thư viện của bạn';

  @override
  String get npSpatialSettings => 'Cài đặt 360';

  @override
  String get npLyrics => 'Lời bài hát';

  @override
  String get libSearchHint => 'Tìm nhạc của bạn…';

  @override
  String get libClearLibrary => 'Dọn thư viện';

  @override
  String get libImportMusic => 'Nhập nhạc';

  @override
  String libError(String error) {
    return 'Đã xảy ra lỗi: $error';
  }

  @override
  String libNoMatch(String query) {
    return 'Không có gì khớp với \"$query\"';
  }

  @override
  String get libPermissionDenied =>
      'Hana360 cần quyền để tìm nhạc của bạn\nKhông có quyền truy cập trên thiết bị này? Hãy nhập.';

  @override
  String get libNoSongs =>
      'Không tìm thấy bài hát nào trên thiết bị này\nNhập nhạc từ các tệp của bạn';

  @override
  String get libGrantAccess => 'Cấp quyền truy cập';

  @override
  String get libRescan => 'Quét lại';

  @override
  String get libAddedToQueue => 'Đã thêm vào hàng đợi';

  @override
  String get libNoAlbums => 'Chưa có album nào';

  @override
  String get libNoFolders => 'Chưa có thư mục nào';

  @override
  String get libNoPlaylists => 'Chưa có danh sách phát nào';

  @override
  String libPlaylistCreated(String name) {
    return 'Đã tạo danh sách phát \"$name\" 🌸';
  }

  @override
  String get libFolderHint => 'nhấn giữ thư mục để chuyển thành danh sách phát';

  @override
  String libSongCount(int count) {
    return '$count bài hát';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count bài hát · $path';
  }

  @override
  String get homeGreetingLate => 'Thức khuya ♪';

  @override
  String get homeGreetingMorning => 'Chào buổi sáng ♪';

  @override
  String get homeGreetingAfternoon => 'Chào buổi chiều ♪';

  @override
  String get homeGreetingEvening => 'Chào buổi tối ♪';

  @override
  String get homeJumpBackIn => 'NGHE TIẾP';

  @override
  String get homeForYou => 'DÀNH CHO BẠN';

  @override
  String get homeForYouSub => 'chọn trên thiết bị này, từ lịch sử nghe của bạn';

  @override
  String get homeWelcome => 'Chào mừng đến Hana360 🌸';

  @override
  String get homeAllQuiet => 'Tất cả yên lặng 🌸';

  @override
  String get homeLibraryHint =>
      'Nhạc của bạn nằm ở tab Thư viện — thêm thư mục ở đó. Mọi thứ bạn phát đều gom về đây.';

  @override
  String get homePlayHint => 'Phát gì đó và lần sau nó sẽ chờ bạn ở đây.';

  @override
  String get youRescanLibrary => 'Quét lại thư viện';

  @override
  String get youExcludedFolders => 'Thư mục bị loại trừ';

  @override
  String get youExcludedFoldersSub => 'Ẩn thư mục khỏi thư viện của bạn';

  @override
  String get youCatMode => 'Chế độ Mèo';

  @override
  String get youAbout => 'Giới thiệu';

  @override
  String get youScanning => 'Đang quét nhạc của bạn…';

  @override
  String get youOpenSource => 'Mã nguồn mở';

  @override
  String get youOpenSourceSub =>
      'Hana360 là phiên bản phái sinh của Hanamimi (GPLv3) của ShaptakNaskar — sửa đổi 2026-08-10';

  @override
  String get youCheckUpdates => 'Kiểm tra cập nhật';

  @override
  String get youCheckUpdatesSub => 'Bản mới trên GitHub Releases';

  @override
  String get youUpToDate => 'Bạn đã ở phiên bản mới nhất 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Thực hiện bởi Sappy';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'Tiếp tục phát ở nền';

  @override
  String get youKeepPlayingAllowed =>
      'Đã cho phép — hệ thống sẽ không tạm dừng nhạc của bạn';

  @override
  String get youKeepPlayingTap => 'Chạm để ngăn hệ thống dừng phát';

  @override
  String get youExcludedFoldersTitle => 'Thư mục bị loại trừ';

  @override
  String get youExcludedFoldersDesc =>
      'Bài hát trong thư mục đã tắt bị loại khỏi thư viện của bạn';

  @override
  String get youVisSensitivity => 'Độ nhạy trình hiển thị';

  @override
  String get youVisSensitivitySub =>
      'Tăng lên cho bài hát gần như không chuyển động';

  @override
  String get youNerdMode => 'Chế độ mọt sách';

  @override
  String get youNerdModeSub =>
      'Hiện codec, bitrate và đầu ra trên màn hình phát';

  @override
  String get youEqualizer => 'Bộ cân chỉnh';

  @override
  String get youComingSoon => 'Sắp ra mắt';

  @override
  String get sleepTimer => 'Hẹn giờ ngủ';

  @override
  String get sleep15 => '15 phút';

  @override
  String get sleep30 => '30 phút';

  @override
  String get sleep1h => '1 giờ';

  @override
  String get sleepEndTrack => 'Hết bài hát';

  @override
  String get sleepFading => 'Đang giảm dần… ngủ ngon';

  @override
  String sleepIn(String time) {
    return 'Ngủ sau $time';
  }

  @override
  String get sleepEndTrackActive => 'Ngủ khi bài hát này kết thúc';

  @override
  String get sleepCancel => 'Hủy hẹn giờ';

  @override
  String get queueUpNext => 'Tiếp theo';

  @override
  String get queueEmpty => 'Hàng đợi trống';

  @override
  String get updateAvailable => 'Có bản cập nhật ✨';

  @override
  String get updateNoNotes => 'Không có ghi chú phát hành.';

  @override
  String get updateInstalling => 'Đang mở trình cài đặt…';

  @override
  String get updateFailed => 'Không thể cập nhật — thử lại sau';

  @override
  String get updateLater => 'Để sau';

  @override
  String get updateRetry => 'Thử lại';

  @override
  String get updateNow => 'Cập nhật';

  @override
  String get spatialToggleTitle => 'Âm thanh không gian 360';

  @override
  String get spatialOn => 'Bật';

  @override
  String get spatialOff => 'Tắt';

  @override
  String get lyricsNoFound => 'Không tìm thấy lời bài hát';

  @override
  String get lyricsJustListening => 'Bài này chỉ để nghe thôi';

  @override
  String get lyricsTrySource => 'Thử nguồn khác';

  @override
  String get lyricsSource => 'Nguồn lời bài hát';

  @override
  String get lyricsWordSynced => 'Đồng bộ theo từ';

  @override
  String get lyricsLineSynced => 'Đồng bộ theo dòng';

  @override
  String get lyricsUnsynced => 'Chưa đồng bộ';

  @override
  String get plNoPlaylists => 'Chưa có danh sách phát — hãy tạo một cái trước!';

  @override
  String get plAddToPlaylist => 'Thêm vào danh sách phát';

  @override
  String plAddedTo(String name) {
    return 'Đã thêm vào $name';
  }

  @override
  String get shareLyrics => 'Chia sẻ lời bài hát';

  @override
  String get shareMaxLines => 'Đã chọn số dòng tối đa';

  @override
  String sharePickLines(int count) {
    return 'Chọn tối đa $count dòng';
  }

  @override
  String get sharePickHint => 'Chọn vài dòng bên dưới…';

  @override
  String get shareButton => 'Chia sẻ';

  @override
  String get batTitle => 'Để nhạc tiếp tục phát 🎵';

  @override
  String get batBody =>
      'Tối ưu pin của Android có thể tạm dừng nhạc khi tắt màn hình. Hãy cho phép Hana360 chạy không giới hạn.\n\nBạn có thể đổi trong You → \"Tiếp tục phát ở nền\".';

  @override
  String get batNotNow => 'Lúc khác';

  @override
  String get batAllow => 'Cho phép';

  @override
  String get algoSwitch => 'Thuật toán';

  @override
  String get speakerDistance => 'Khoảng cách loa';

  @override
  String get channelTrim => 'Chỉnh kênh';

  @override
  String get masterGain => 'Tăng ích chính';

  @override
  String get secHrtf => 'Cá nhân hóa HRTF';

  @override
  String get outputGain => 'Tăng ích đầu ra';

  @override
  String get secEq => 'EQ không gian';

  @override
  String get secReverb => 'Vang';

  @override
  String get roomSize => 'Phòng';

  @override
  String get reverbGain => 'Tăng ích vang';

  @override
  String get secTracking => 'Theo dõi đầu';

  @override
  String get trackOff => 'Tắt';

  @override
  String get trackSensor => 'Cảm biến điện thoại';

  @override
  String get trackManual => 'XY thủ công';

  @override
  String get dragHint =>
      'Kéo để điều chỉnh hướng đầu (trường âm thanh đi theo)';

  @override
  String get customEq => 'Tùy chỉnh';

  @override
  String get eqPresetMusic => 'Nhạc';

  @override
  String get eqPresetCinema => 'Phim';

  @override
  String get eqPresetGame => 'Trò chơi';

  @override
  String get eqPresetVoice => 'Giọng nói';

  @override
  String get hrtfGroup0 => 'Nam / Nhỏ / Nhỏ';

  @override
  String get hrtfGroup1 => 'Nam / Nhỏ / Vừa';

  @override
  String get hrtfGroup2 => 'Nam / Nhỏ / Lớn';

  @override
  String get hrtfGroup3 => 'Nam / Vừa / Nhỏ';

  @override
  String get hrtfGroup4 => 'Nam / Vừa / Vừa';

  @override
  String get hrtfGroup5 => 'Nam / Vừa / Lớn';

  @override
  String get hrtfGroup6 => 'Nam / Lớn / Nhỏ';

  @override
  String get hrtfGroup7 => 'Nam / Lớn / Vừa';

  @override
  String get hrtfGroup8 => 'Nam / Lớn / Lớn';

  @override
  String get hrtfGroup9 => 'Nữ / Nhỏ / Nhỏ';

  @override
  String get hrtfGroup10 => 'Nữ / Nhỏ / Vừa';

  @override
  String get hrtfGroup11 => 'Nữ / Nhỏ / Lớn';

  @override
  String get hrtfGroup12 => 'Nữ / Vừa / Nhỏ';

  @override
  String get hrtfGroup13 => 'Nữ / Vừa / Vừa';

  @override
  String get hrtfGroup14 => 'Nữ / Vừa / Lớn';

  @override
  String get navHome => 'Trang chủ';

  @override
  String get navLibrary => 'Thư viện';

  @override
  String get navPlaying => 'Đang phát';

  @override
  String get navYou => 'Bạn';

  @override
  String get tabSongs => 'Bài hát';

  @override
  String get tabAlbums => 'Album';

  @override
  String get tabFolders => 'Thư mục';

  @override
  String get tabPlaylists => 'Danh sách phát';

  @override
  String get youMood => 'Tâm trạng';

  @override
  String get youCompanion => 'Người bạn đồng hành';

  @override
  String get youBuddies => 'Bạn bè';

  @override
  String get youSound => 'Âm thanh';

  @override
  String get youMore => 'Thêm';

  @override
  String get themeCherryBlossom => 'Hoa anh đào';

  @override
  String get themeStarryNight => 'Đêm đầy sao';

  @override
  String get themeAdaptiveLight => 'Ánh sáng thích ứng';

  @override
  String get themeAdaptiveDark => 'Bóng tối thích ứng';

  @override
  String youListenedTogether(int h, int m) {
    return 'Đã nghe cùng nhau $h giờ $m phút';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'Đầu trang và màn hình phát';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'Đậu trên tiêu đề Thư viện';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'Ngủ trưa trên trình phát mini';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'Đi trên các bài đã thích';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'Phát sáng trên giao diện tối';

  @override
  String get accBow => 'Nơ hồng';

  @override
  String get accHeadphones => 'Tai nghe nhỏ';

  @override
  String get accFlower => 'Hoa';

  @override
  String get accCrown => 'Vương miện nhỏ';

  @override
  String accUnlockLabel(int h) {
    return 'Nghe $h giờ';
  }

  @override
  String get youCrossfade => 'Chuyển tiếp mượt';

  @override
  String get youCrossfadeSub => 'Hòa phần cuối bài hát vào bài tiếp theo';

  @override
  String get youSmartShuffle => 'Trộn thông minh';

  @override
  String get youSmartShuffleSub =>
      'Trộn nghiêng về bài yêu thích — tính trên thiết bị này';

  @override
  String get libLikedSongs => 'Bài hát đã thích';

  @override
  String get libTapHeart => 'Chạm vào trái tim của bài hát để giữ nó ở đây';

  @override
  String get libRemovedFromQueue => 'Đã xóa khỏi hàng đợi';

  @override
  String get libRemovedFromLibrary => 'Đã xóa khỏi thư viện';

  @override
  String get libRemoveFromLibrary => 'Xóa khỏi thư viện';

  @override
  String get libNewPlaylist => 'Danh sách phát mới';

  @override
  String get libPlaylistName => 'Tên danh sách phát';

  @override
  String get libCreate => 'Tạo';

  @override
  String get libSwipeHint => 'vuốt trái để xóa · giữ để sắp xếp lại';

  @override
  String get libChooseCover => 'Chọn ảnh bìa';

  @override
  String get libBackToArtCover => 'Quay lại bìa bài hát';

  @override
  String libDeleteConfirm(String name) {
    return 'Xóa \"$name\"?';
  }

  @override
  String get libDeleteKeepSongs => 'Các bài hát vẫn ở trên thiết bị của bạn';

  @override
  String get libKeep => 'Giữ';

  @override
  String get libDelete => 'Xóa';

  @override
  String get libRemoveKeepFile => 'Tệp vẫn ở trên thiết bị của bạn';

  @override
  String get libClearConfirm => 'Xóa tất cả tệp?';

  @override
  String get libLibraryCleared => 'Đã dọn thư viện';

  @override
  String get libPickAudioFiles => 'Chọn tệp âm thanh…';

  @override
  String get libImportFolder => 'Nhập thư mục';

  @override
  String get libScanWholeFolder => 'Quét toàn bộ thư mục… (khuyến nghị)';

  @override
  String libImportFailed(String error) {
    return 'Nhập thất bại: $error';
  }

  @override
  String get libNoAudioFound => 'Không tìm thấy tệp âm thanh';

  @override
  String libImportedCount(int count) {
    return 'Đã nhập $count bài hát';
  }

  @override
  String get libNothingHere =>
      'Chưa có gì — vuốt trái để xóa, giữ để sắp xếp lại';

  @override
  String get sidebarYourLibrary => 'THƯ VIỆN CỦA BẠN';

  @override
  String get sidebarPlaylists => 'DANH SÁCH PHÁT';

  @override
  String get sidebarFolders => 'THƯ MỤC';

  @override
  String get rowQueue => 'Hàng đợi';

  @override
  String get rowRemove => 'Xóa';

  @override
  String get rowPlaylist => 'Danh sách phát';

  @override
  String plTrackCount(int count) {
    return '$count bài';
  }

  @override
  String get lyricsSourceAuto => 'Tự động';

  @override
  String get lyricsSourceEmbedded => 'Nhúng sẵn';

  @override
  String get lyricsSourceBestQuality => 'Chất lượng tốt nhất có sẵn';

  @override
  String get lyricsSourceFileTags => 'Từ thẻ của chính tệp âm thanh';

  @override
  String get lyricsSourceWordOnline => 'Đồng bộ theo từ (trực tuyến)';

  @override
  String get lyricsSourceLineOnline => 'Đồng bộ theo dòng (trực tuyến)';

  @override
  String get lyricsSourceNotFound => 'Không tìm thấy cho bài hát này';

  @override
  String get npCatModeUnlocked => 'Meo?! Đã mở Chế độ Mèo 🐱';

  @override
  String get shellResumePlayback => 'Tiếp tục phát';

  @override
  String get shellPlay => 'PHÁT';

  @override
  String get devSection => 'NHÀ PHÁT TRIỂN';

  @override
  String get devModeUnlocked => '🛠️ Đã mở chế độ nhà phát triển';

  @override
  String get devUnlockAll => 'Mở tất cả phụ kiện';

  @override
  String get devClearLyricsCache => 'Xóa bộ nhớ đệm lời bài hát';

  @override
  String get devRefetchLyrics => 'Tải lại tất cả lời bài hát…';

  @override
  String get devLyricsCleared => 'Đã xóa bộ nhớ đệm lời bài hát';

  @override
  String get devHideOptions => 'Ẩn tùy chọn nhà phát triển';

  @override
  String get devModeOff => 'Đã tắt chế độ nhà phát triển';

  @override
  String get youCantReadFolders => 'Không thể đọc các thư mục nhạc của bạn';

  @override
  String get youNoMusicFolders => 'Không tìm thấy thư mục nhạc';
}
