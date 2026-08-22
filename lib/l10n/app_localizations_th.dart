// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'ภาษา';

  @override
  String get languageFollowSystem => 'ตามระบบ';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Baseus × Hanamimi';

  @override
  String get commonCancel => 'ยกเลิก';

  @override
  String get commonConfirm => 'ตกลง';

  @override
  String get commonBack => 'กลับ';

  @override
  String get commonDone => 'เสร็จสิ้น';

  @override
  String get commonUnknown => 'ไม่ทราบ';

  @override
  String get secUpmix => 'เอนจินอัปมิกซ์';

  @override
  String get spatialAudioTitle => 'เสียงรอบทิศทาง 360';

  @override
  String get npNothingPlaying => 'ยังไม่มีเพลงเล่น';

  @override
  String get npPickSong => 'เลือกเพลงจากคลังของคุณ';

  @override
  String get npSpatialSettings => 'การตั้งค่า 360';

  @override
  String get npLyrics => 'เนื้อเพลง';

  @override
  String get libSearchHint => 'ค้นหาเพลงของคุณ…';

  @override
  String get libClearLibrary => 'ล้างคลัง';

  @override
  String get libImportMusic => 'นำเข้าเพลง';

  @override
  String libError(String error) {
    return 'เกิดข้อผิดพลาด: $error';
  }

  @override
  String libNoMatch(String query) {
    return 'ไม่พบผลลัพธ์สำหรับ \"$query\"';
  }

  @override
  String get libPermissionDenied =>
      'Hana360 ต้องได้รับอนุญาตเพื่อค้นหาเพลงของคุณ\nไม่มีสิทธิ์เข้าถึงบนอุปกรณ์นี้? นำเข้าเลย';

  @override
  String get libNoSongs => 'ไม่พบเพลงบนอุปกรณ์นี้\nนำเข้าเพลงจากไฟล์ของคุณ';

  @override
  String get libGrantAccess => 'ให้สิทธิ์เข้าถึง';

  @override
  String get libRescan => 'สแกนใหม่';

  @override
  String get libAddedToQueue => 'เพิ่มลงคิวแล้ว';

  @override
  String get libNoAlbums => 'ยังไม่มีอัลบั้ม';

  @override
  String get libNoFolders => 'ยังไม่มีโฟลเดอร์';

  @override
  String get libNoPlaylists => 'ยังไม่มีเพลย์ลิสต์';

  @override
  String libPlaylistCreated(String name) {
    return 'สร้างเพลย์ลิสต์ \"$name\" แล้ว 🌸';
  }

  @override
  String get libFolderHint => 'กดค้างโฟลเดอร์เพื่อเปลี่ยนเป็นเพลย์ลิสต์';

  @override
  String libSongCount(int count) {
    return '$count เพลง';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count เพลง · $path';
  }

  @override
  String get homeGreetingLate => 'ยังตื่นอยู่ดึกดื่น ♪';

  @override
  String get homeGreetingMorning => 'สวัสดีตอนเช้า ♪';

  @override
  String get homeGreetingAfternoon => 'สวัสดี ♪';

  @override
  String get homeGreetingEvening => 'สวัสดีตอนเย็น ♪';

  @override
  String get homeJumpBackIn => 'ฟังต่อ';

  @override
  String get homeForYou => 'สำหรับคุณ';

  @override
  String get homeForYouSub => 'เลือกบนอุปกรณ์นี้จากประวัติการฟังของคุณ';

  @override
  String get homeWelcome => 'ยินดีต้อนรับสู่ Hana360 🌸';

  @override
  String get homeAllQuiet => 'ทุกอย่างเงียบสงบ 🌸';

  @override
  String get homeLibraryHint =>
      'เพลงของคุณอยู่ในแท็บคลัง — เพิ่มโฟลเดอร์ที่นั่น สิ่งที่คุณเล่นจะมารวมกันที่นี่';

  @override
  String get homePlayHint =>
      'เล่นอะไรสักอย่าง แล้วครั้งหน้ามันจะรอคุณอยู่ที่นี่';

  @override
  String get youRescanLibrary => 'สแกนคลังใหม่';

  @override
  String get youExcludedFolders => 'โฟลเดอร์ที่ยกเว้น';

  @override
  String get youExcludedFoldersSub => 'ซ่อนโฟลเดอร์จากคลังของคุณ';

  @override
  String get youCatMode => 'โหมดแมว';

  @override
  String get youAbout => 'เกี่ยวกับ';

  @override
  String get youScanning => 'กำลังสแกนเพลงของคุณ…';

  @override
  String get youOpenSource => 'โอเพนซอร์ส';

  @override
  String get youOpenSourceSub =>
      'Hana360 เป็นผลงานดัดแปลงจาก Hanamimi (GPLv3) ของ ShaptakNaskar — แก้ไขเมื่อ 2026-08-10';

  @override
  String get youCheckUpdates => 'ตรวจสอบอัปเดต';

  @override
  String get youCheckUpdatesSub => 'เวอร์ชันใหม่มาใน GitHub Releases';

  @override
  String get youUpToDate => 'คุณใช้เวอร์ชันล่าสุดแล้ว 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'สร้างโดย Sappy';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'เล่นต่อในเบื้องหลัง';

  @override
  String get youKeepPlayingAllowed => 'อนุญาตแล้ว — ระบบจะไม่หยุดเพลงของคุณ';

  @override
  String get youKeepPlayingTap => 'แตะเพื่อป้องกันไม่ให้ระบบหยุดการเล่น';

  @override
  String get youExcludedFoldersTitle => 'โฟลเดอร์ที่ยกเว้น';

  @override
  String get youExcludedFoldersDesc =>
      'เพลงในโฟลเดอร์ที่ปิดจะถูกแยกออกจากคลังของคุณ';

  @override
  String get youVisSensitivity => 'ความไวของวิซัวไลเซอร์';

  @override
  String get youVisSensitivitySub => 'เพิ่มขึ้นสำหรับเพลงที่แทบไม่ขยับ';

  @override
  String get youNerdMode => 'โหมดเนิร์ด';

  @override
  String get youNerdModeSub => 'แสดง codec, bitrate และเอาต์พุตบนเครื่องเล่น';

  @override
  String get youEqualizer => 'อีควอไลเซอร์';

  @override
  String get youComingSoon => 'เร็วๆ นี้';

  @override
  String get sleepTimer => 'ตัวจับเวลานอน';

  @override
  String get sleep15 => '15 นาที';

  @override
  String get sleep30 => '30 นาที';

  @override
  String get sleep1h => '1 ชั่วโมง';

  @override
  String get sleepEndTrack => 'จบเพลงนี้';

  @override
  String get sleepFading => 'กำลังลดเสียง… ฝันดี';

  @override
  String sleepIn(String time) {
    return 'นอนใน $time';
  }

  @override
  String get sleepEndTrackActive => 'นอนเมื่อเพลงนี้จบ';

  @override
  String get sleepCancel => 'ยกเลิกตัวจับเวลา';

  @override
  String get queueUpNext => 'ถัดไป';

  @override
  String get queueEmpty => 'คิวว่าง';

  @override
  String get updateAvailable => 'มีอัปเดต ✨';

  @override
  String get updateNoNotes => 'ไม่มีบันทึกการเผยแพร่';

  @override
  String get updateInstalling => 'กำลังเปิดตัวติดตั้ง…';

  @override
  String get updateFailed => 'อัปเดตไม่สำเร็จ — ลองใหม่ภายหลัง';

  @override
  String get updateLater => 'ภายหลัง';

  @override
  String get updateRetry => 'ลองใหม่';

  @override
  String get updateNow => 'อัปเดต';

  @override
  String get spatialToggleTitle => 'เสียงรอบทิศทาง 360';

  @override
  String get spatialOn => 'เปิด';

  @override
  String get spatialOff => 'ปิด';

  @override
  String get lyricsNoFound => 'ไม่พบเนื้อเพลง';

  @override
  String get lyricsJustListening => 'เพลงนี้ใช้ฟังอย่างเดียว';

  @override
  String get lyricsTrySource => 'ลองแหล่งอื่น';

  @override
  String get lyricsSource => 'แหล่งเนื้อเพลง';

  @override
  String get lyricsWordSynced => 'ซิงค์แบบคำต่อคำ';

  @override
  String get lyricsLineSynced => 'ซิงค์แบบบรรทัด';

  @override
  String get lyricsUnsynced => 'ไม่ซิงค์';

  @override
  String get plNoPlaylists => 'ยังไม่มีเพลย์ลิสต์ — สร้างก่อน!';

  @override
  String get plAddToPlaylist => 'เพิ่มลงเพลย์ลิสต์';

  @override
  String plAddedTo(String name) {
    return 'เพิ่มลง $name แล้ว';
  }

  @override
  String get shareLyrics => 'แชร์เนื้อเพลง';

  @override
  String get shareMaxLines => 'เลือกจำนวนบรรทัดสูงสุดแล้ว';

  @override
  String sharePickLines(int count) {
    return 'เลือกสูงสุด $count บรรทัด';
  }

  @override
  String get sharePickHint => 'เลือกสองสามบรรทัดด้านล่าง…';

  @override
  String get shareButton => 'แชร์';

  @override
  String get batTitle => 'ให้เพลงเล่นต่อไป 🎵';

  @override
  String get batBody =>
      'การประหยัดแบตเตอรี่ของ Android อาจหยุดเพลงเมื่อปิดหน้าจอ อนุญาตให้ Hana360 ทำงานได้ไม่จำกัด\n\nคุณเปลี่ยนได้ที่ You → \"เล่นต่อในเบื้องหลัง\"';

  @override
  String get batNotNow => 'ไม่ใช่ตอนนี้';

  @override
  String get batAllow => 'อนุญาต';

  @override
  String get algoSwitch => 'อัลกอริทึม';

  @override
  String get speakerDistance => 'ระยะลำโพง';

  @override
  String get channelTrim => 'ปรับช่องเสียง';

  @override
  String get masterGain => 'เกนหลัก';

  @override
  String get secHrtf => 'ปรับแต่ง HRTF';

  @override
  String get outputGain => 'เกนเอาต์พุต';

  @override
  String get secEq => 'EQ เชิงพื้นที่';

  @override
  String get secReverb => 'เสียงก้อง';

  @override
  String get roomSize => 'ห้อง';

  @override
  String get reverbGain => 'เกนเสียงก้อง';

  @override
  String get secTracking => 'ติดตามศีรษะ';

  @override
  String get trackOff => 'ปิด';

  @override
  String get trackSensor => 'เซนเซอร์โทรศัพท์';

  @override
  String get trackManual => 'XY แบบแมนนวล';

  @override
  String get dragHint => 'ลากเพื่อปรับทิศทางศีรษะ (สนามเสียงตามไป)';

  @override
  String get customEq => 'กำหนดเอง';

  @override
  String get eqPresetMusic => 'เพลง';

  @override
  String get eqPresetCinema => 'ภาพยนตร์';

  @override
  String get eqPresetGame => 'เกม';

  @override
  String get eqPresetVoice => 'เสียงพูด';

  @override
  String get hrtfGroup0 => 'ชาย / หัวเล็ก / หูเล็ก';

  @override
  String get hrtfGroup1 => 'ชาย / หัวเล็ก / หูปานกลาง';

  @override
  String get hrtfGroup2 => 'ชาย / หัวเล็ก / หูใหญ่';

  @override
  String get hrtfGroup3 => 'ชาย / หัวปานกลาง / หูเล็ก';

  @override
  String get hrtfGroup4 => 'ชาย / หัวปานกลาง / หูปานกลาง';

  @override
  String get hrtfGroup5 => 'ชาย / หัวปานกลาง / หูใหญ่';

  @override
  String get hrtfGroup6 => 'ชาย / หัวใหญ่ / หูเล็ก';

  @override
  String get hrtfGroup7 => 'ชาย / หัวใหญ่ / หูปานกลาง';

  @override
  String get hrtfGroup8 => 'ชาย / หัวใหญ่ / หูใหญ่';

  @override
  String get hrtfGroup9 => 'หญิง / หัวเล็ก / หูเล็ก';

  @override
  String get hrtfGroup10 => 'หญิง / หัวเล็ก / หูปานกลาง';

  @override
  String get hrtfGroup11 => 'หญิง / หัวเล็ก / หูใหญ่';

  @override
  String get hrtfGroup12 => 'หญิง / หัวปานกลาง / หูเล็ก';

  @override
  String get hrtfGroup13 => 'หญิง / หัวปานกลาง / หูปานกลาง';

  @override
  String get hrtfGroup14 => 'หญิง / หัวปานกลาง / หูใหญ่';

  @override
  String get navHome => 'หน้าหลัก';

  @override
  String get navLibrary => 'คลังเพลง';

  @override
  String get navPlaying => 'กำลังเล่น';

  @override
  String get navYou => 'คุณ';

  @override
  String get tabSongs => 'เพลง';

  @override
  String get tabAlbums => 'อัลบั้ม';

  @override
  String get tabFolders => 'โฟลเดอร์';

  @override
  String get tabPlaylists => 'เพลย์ลิสต์';

  @override
  String get youMood => 'อารมณ์';

  @override
  String get youCompanion => 'เพื่อนของคุณ';

  @override
  String get youBuddies => 'เพื่อน';

  @override
  String get youSound => 'เสียง';

  @override
  String get youMore => 'เพิ่มเติม';

  @override
  String get themeCherryBlossom => 'ซากุระ';

  @override
  String get themeStarryNight => 'คืนดาวเต็มฟ้า';

  @override
  String get themeAdaptiveLight => 'สว่างอัตโนมัติ';

  @override
  String get themeAdaptiveDark => 'มืดอัตโนมัติ';

  @override
  String youListenedTogether(int h, int m) {
    return 'ฟังด้วยกัน $h ชั่วโมง $m นาที';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'ส่วนหัวและหน้าจอเล่น';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'เกาะบนชื่อคลังเพลง';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'งีบบนเครื่องเล่นขนาดเล็ก';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'เดินบนเพลงที่ชอบ';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'เรืองแสงบนธีมมืด';

  @override
  String get accBow => 'โบว์สีชมพู';

  @override
  String get accHeadphones => 'หูฟังเล็ก';

  @override
  String get accFlower => 'ดอกไม้';

  @override
  String get accCrown => 'มงกุฎเล็ก';

  @override
  String accUnlockLabel(int h) {
    return 'ฟัง $h ชั่วโมงเพื่อปลดล็อก';
  }

  @override
  String get youCrossfade => 'ครอสเฟด';

  @override
  String get youCrossfadeSub => 'ผสมท้ายเพลงเข้ากับเพลงถัดไป';

  @override
  String get youSmartShuffle => 'สุ่มอัจฉริยะ';

  @override
  String get youSmartShuffleSub =>
      'การสุ่มเอียงไปทางเพลงโปรดของคุณ — คำนวณบนอุปกรณ์นี้';

  @override
  String get libLikedSongs => 'เพลงที่ชอบ';

  @override
  String get libTapHeart => 'แตะหัวใจบนเพลงเพื่อเก็บไว้ที่นี่';

  @override
  String get libRemovedFromQueue => 'นำออกจากคิวแล้ว';

  @override
  String get libRemovedFromLibrary => 'นำออกจากคลังแล้ว';

  @override
  String get libRemoveFromLibrary => 'นำออกจากคลัง';

  @override
  String get libNewPlaylist => 'เพลย์ลิสต์ใหม่';

  @override
  String get libPlaylistName => 'ชื่อเพลย์ลิสต์';

  @override
  String get libCreate => 'สร้าง';

  @override
  String get libSwipeHint => 'ปัดซ้ายเพื่อนำออก · กดค้างเพื่อจัดเรียง';

  @override
  String get libChooseCover => 'เลือกภาพปก';

  @override
  String get libBackToArtCover => 'กลับไปใช้ปกเพลง';

  @override
  String libDeleteConfirm(String name) {
    return 'ลบ \"$name\"?';
  }

  @override
  String get libDeleteKeepSongs => 'ตัวเพลงเองยังอยู่บนอุปกรณ์ของคุณ';

  @override
  String get libKeep => 'เก็บไว้';

  @override
  String get libDelete => 'ลบ';

  @override
  String get libRemoveKeepFile => 'ตัวไฟล์เองยังอยู่บนอุปกรณ์ของคุณ';

  @override
  String get libClearConfirm => 'นำไฟล์ทั้งหมดออก?';

  @override
  String get libLibraryCleared => 'ล้างคลังแล้ว';

  @override
  String get libPickAudioFiles => 'เลือกไฟล์เสียง…';

  @override
  String get libImportFolder => 'นำเข้าโฟลเดอร์';

  @override
  String get libScanWholeFolder => 'สแกนทั้งโฟลเดอร์… (แนะนำ)';

  @override
  String libImportFailed(String error) {
    return 'นำเข้าไม่สำเร็จ: $error';
  }

  @override
  String get libNoAudioFound => 'ไม่พบไฟล์เสียง';

  @override
  String libImportedCount(int count) {
    return 'นำเข้า $count เพลงแล้ว';
  }

  @override
  String get libNothingHere =>
      'ยังไม่มีอะไร — ปัดซ้ายเพื่อนำออก กดค้างเพื่อจัดเรียง';

  @override
  String get sidebarYourLibrary => 'คลังของคุณ';

  @override
  String get sidebarPlaylists => 'เพลย์ลิสต์';

  @override
  String get sidebarFolders => 'โฟลเดอร์';

  @override
  String get rowQueue => 'คิว';

  @override
  String get rowRemove => 'นำออก';

  @override
  String get rowPlaylist => 'เพลย์ลิสต์';

  @override
  String plTrackCount(int count) {
    return '$count แทร็ก';
  }

  @override
  String get lyricsSourceAuto => 'อัตโนมัติ';

  @override
  String get lyricsSourceEmbedded => 'ฝังในไฟล์';

  @override
  String get lyricsSourceBestQuality => 'คุณภาพดีที่สุดเท่าที่มี';

  @override
  String get lyricsSourceFileTags => 'จากแท็กของไฟล์เสียงเอง';

  @override
  String get lyricsSourceWordOnline => 'ซิงค์คำต่อคำ (ออนไลน์)';

  @override
  String get lyricsSourceLineOnline => 'ซิงค์บรรทัด (ออนไลน์)';

  @override
  String get lyricsSourceNotFound => 'ไม่พบสำหรับเพลงนี้';

  @override
  String get npCatModeUnlocked => 'เหมียว?! ปลดล็อกโหมดแมวแล้ว 🐱';

  @override
  String get shellResumePlayback => 'เล่นต่อ';

  @override
  String get shellPlay => 'เล่น';

  @override
  String get devSection => 'นักพัฒนา';

  @override
  String get devModeUnlocked => '🛠️ ปลดล็อกโหมดนักพัฒนาแล้ว';

  @override
  String get devUnlockAll => 'ปลดล็อกอุปกรณ์เสริมทั้งหมด';

  @override
  String get devClearLyricsCache => 'ล้างแคชเนื้อเพลง';

  @override
  String get devRefetchLyrics => 'ดึงเนื้อเพลงทั้งหมดใหม่…';

  @override
  String get devLyricsCleared => 'ล้างแคชเนื้อเพลงแล้ว';

  @override
  String get devHideOptions => 'ซ่อนตัวเลือกนักพัฒนา';

  @override
  String get devModeOff => 'ปิดโหมดนักพัฒนาแล้ว';

  @override
  String get youCantReadFolders => 'อ่านโฟลเดอร์เพลงของคุณไม่ได้';

  @override
  String get youNoMusicFolders => 'ไม่พบโฟลเดอร์เพลง';
}
