// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Mongolian (`mn`).
class AppLocalizationsMn extends AppLocalizations {
  AppLocalizationsMn([String locale = 'mn']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'Хэл';

  @override
  String get languageFollowSystem => 'Системийг дагах';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Baseus × Hanamimi';

  @override
  String get commonCancel => 'Цуцлах';

  @override
  String get commonConfirm => 'За';

  @override
  String get commonBack => 'Буцах';

  @override
  String get commonDone => 'Дууслаа';

  @override
  String get commonUnknown => 'Тодорхойгүй';

  @override
  String get secUpmix => 'Upmix хөдөлгүүр';

  @override
  String get spatialAudioTitle => '360 орон зайн дуу';

  @override
  String get npNothingPlaying => 'Тоглож байгаа зүйл алга';

  @override
  String get npPickSong => 'Сангаасаа дуу сонгоно уу';

  @override
  String get npSpatialSettings => '360 тохиргоо';

  @override
  String get npLyrics => 'Дууны үг';

  @override
  String get libSearchHint => 'Хөгжмөө хайх…';

  @override
  String get libClearLibrary => 'Санг хоослох';

  @override
  String get libImportMusic => 'Хөгжим импортлох';

  @override
  String libError(String error) {
    return 'Алдаа гарлаа: $error';
  }

  @override
  String libNoMatch(String query) {
    return '«$query»-тай тохирох зүйл олдсонгүй';
  }

  @override
  String get libPermissionDenied =>
      'Hana360 таны хөгжмийг олохын тулд зөвшөөрөл хэрэгтэй\nЭнэ төхөөрөмжид нэвтрэх эрхгүй юу? Импортлоорой.';

  @override
  String get libNoSongs =>
      'Энэ төхөөрөмж дээр дуу олдсонгүй\nФайлуудаасаа хөгжим импортлоно уу';

  @override
  String get libGrantAccess => 'Нэвтрэх эрх өгөх';

  @override
  String get libRescan => 'Дахин скан хийх';

  @override
  String get libAddedToQueue => 'Дараалалд нэмэгдлээ';

  @override
  String get libNoAlbums => 'Цомог хараахан алга';

  @override
  String get libNoFolders => 'Хавтас хараахан алга';

  @override
  String get libNoPlaylists => 'Тоглуулах жагсаалт хараахан алга';

  @override
  String libPlaylistCreated(String name) {
    return '«$name» тоглуулах жагсаалт үүслээ 🌸';
  }

  @override
  String get libFolderHint => 'хавтасыг удаан дарж тоглуулах жагсаалт болгоно';

  @override
  String libSongCount(int count) {
    return '$count дуу';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count дуу · $path';
  }

  @override
  String get homeGreetingLate => 'Шөнө орой хүртэл сэрүүн ♪';

  @override
  String get homeGreetingMorning => 'Өглөөний мэнд ♪';

  @override
  String get homeGreetingAfternoon => 'Өдрийн мэнд ♪';

  @override
  String get homeGreetingEvening => 'Оройн мэнд ♪';

  @override
  String get homeJumpBackIn => 'СОНСОЖ ҮРГЭЛЖЛҮҮЛЭХ';

  @override
  String get homeForYou => 'ТАНД ЗОРИУЛСАН';

  @override
  String get homeForYouSub =>
      'сонсох түүхээс үндэслэн энэ төхөөрөмж дээр сонгогдлоо';

  @override
  String get homeWelcome => 'Hana360-д тавтай морил 🌸';

  @override
  String get homeAllQuiet => 'Бүх зүйл нам гүм 🌸';

  @override
  String get homeLibraryHint =>
      'Таны хөгжим Сан таб дотор — тэнд хавтас нэмнэ үү. Тоглосон бүх зүйл энд цуглана.';

  @override
  String get homePlayHint =>
      'Ямар нэг зүйл тоглуулаарай, дараагийн удаа энд таныг хүлээнэ.';

  @override
  String get youRescanLibrary => 'Санг дахин скан хийх';

  @override
  String get youExcludedFolders => 'Хасан хаясан хавтаснууд';

  @override
  String get youExcludedFoldersSub => 'Сангаасаа хавтас нуух';

  @override
  String get youCatMode => 'Муурны горим';

  @override
  String get youAbout => 'Тухай';

  @override
  String get youScanning => 'Таны хөгжим скан хийгдэж байна…';

  @override
  String get youOpenSource => 'Нээлттэй эх код';

  @override
  String get youOpenSourceSub =>
      'Hana360 нь ShaptakNaskar-ийн Hanamimi (GPLv3)-ийн салбар хувилбар — 2026-08-10 өөрчлөгдсөн';

  @override
  String get youCheckUpdates => 'Шинэчлэлт шалгах';

  @override
  String get youCheckUpdatesSub => 'Шинэ хувилбарууд GitHub Releases-д гарна';

  @override
  String get youUpToDate => 'Та хамгийн сүүлийн хувилбар дээр байна 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Sappy бүтээсэн';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'Арын хэсэгт үргэлжлүүлэн тоглуулах';

  @override
  String get youKeepPlayingAllowed =>
      'Зөвшөөрөгдсөн — систем таны хөгжмийг зогсоохгүй';

  @override
  String get youKeepPlayingTap =>
      'Системийг тоглуулалтыг зогсоохоос урьдчилан сэргийлэхийн тулд товшино уу';

  @override
  String get youExcludedFoldersTitle => 'Хасан хаясан хавтаснууд';

  @override
  String get youExcludedFoldersDesc =>
      'унтраасан хавтасны дуунууд таны сангаас хасагдана';

  @override
  String get youVisSensitivity => 'Дүрслэгчийн мэдрэг';

  @override
  String get youVisSensitivitySub => 'бараг хөдөлдөггүй дуунуудад нэмэгдүүлэх';

  @override
  String get youNerdMode => 'Nerd горим';

  @override
  String get youNerdModeSub =>
      'Тоглуулагч дээр codec, bitrate ба гаралтыг харуулах';

  @override
  String get youEqualizer => 'Эквалайзер';

  @override
  String get youComingSoon => 'Удахгүй гарна';

  @override
  String get sleepTimer => 'Унтах таймер';

  @override
  String get sleep15 => '15 минут';

  @override
  String get sleep30 => '30 минут';

  @override
  String get sleep1h => '1 цаг';

  @override
  String get sleepEndTrack => 'Дууны төгсгөлд';

  @override
  String get sleepFading => 'Аажмаар чимээгүй болж байна… сайхан зүүд';

  @override
  String sleepIn(String time) {
    return '$time дотор унтах';
  }

  @override
  String get sleepEndTrackActive => 'Энэ дуу дуусахад унтах';

  @override
  String get sleepCancel => 'Таймер цуцлах';

  @override
  String get queueUpNext => 'Дараагийн';

  @override
  String get queueEmpty => 'Дараалал хоосон';

  @override
  String get updateAvailable => 'Шинэчлэлт байна ✨';

  @override
  String get updateNoNotes => 'Хувилбарын тэмдэглэл байхгүй.';

  @override
  String get updateInstalling => 'Суулгагч нээгдэж байна…';

  @override
  String get updateFailed => 'Шинэчлэлт амжилтгүй — дараа дахин оролдоно уу';

  @override
  String get updateLater => 'Дараа';

  @override
  String get updateRetry => 'Дахин оролдох';

  @override
  String get updateNow => 'Шинэчлэх';

  @override
  String get spatialToggleTitle => '360 орон зайн дуу';

  @override
  String get spatialOn => 'Асаах';

  @override
  String get spatialOff => 'Унтраах';

  @override
  String get lyricsNoFound => 'Дууны үг олдсонгүй';

  @override
  String get lyricsJustListening => 'Энэ нь зөвхөн сонсоход зориулагдсан';

  @override
  String get lyricsTrySource => 'Өөр эх сурвалж туршиж үзэх';

  @override
  String get lyricsSource => 'Дууны үгний эх сурвалж';

  @override
  String get lyricsWordSynced => 'Үг үгээр синхрон';

  @override
  String get lyricsLineSynced => 'Мөр мөрөөр синхрон';

  @override
  String get lyricsUnsynced => 'Синхрон биш';

  @override
  String get plNoPlaylists =>
      'Тоглуулах жагсаалт хараахан алга — эхлээд нэгийг үүсгэнэ үү!';

  @override
  String get plAddToPlaylist => 'Тоглуулах жагсаалтад нэмэх';

  @override
  String plAddedTo(String name) {
    return '$name дээр нэмэгдлээ';
  }

  @override
  String get shareLyrics => 'Дууны үг хуваалцах';

  @override
  String get shareMaxLines => 'Хамгийн их мөрийн тоо сонгогдлоо';

  @override
  String sharePickLines(int count) {
    return 'Хамгийн ихдээ $count мөр сонгоно уу';
  }

  @override
  String get sharePickHint => 'Доор хэдэн мөр сонгоно уу…';

  @override
  String get shareButton => 'Хуваалцах';

  @override
  String get batTitle => 'Хөгжим үргэлжлүүлэн тоглогдоосой 🎵';

  @override
  String get batBody =>
      'Android-ийн батерей оновчлол нь дэлгэц унтарсны дараа таны хөгжмийг зогсоож болзошгүй. Hana360-д хязгаарлалтгүй ажиллахыг зөвшөөрнө үү.\n\nҮүнийг You → «Арын хэсэгт үргэлжлүүлэн тоглуулах»-аас өөрчилж болно.';

  @override
  String get batNotNow => 'Одоо биш';

  @override
  String get batAllow => 'Зөвшөөрөх';

  @override
  String get algoSwitch => 'Алгоритм';

  @override
  String get speakerDistance => 'Чанга яригчийн зай';

  @override
  String get channelTrim => 'Сувгийн тохируулга';

  @override
  String get masterGain => 'Гол түвшин';

  @override
  String get secHrtf => 'HRTF хувийн тохируулга';

  @override
  String get outputGain => 'Гаралтын түвшин';

  @override
  String get secEq => 'Орон зайн EQ';

  @override
  String get secReverb => 'Цуурай';

  @override
  String get roomSize => 'Өрөө';

  @override
  String get reverbGain => 'Цуурайн түвшин';

  @override
  String get secTracking => 'Толгой хянах';

  @override
  String get trackOff => 'Унтраах';

  @override
  String get trackSensor => 'Утасны мэдрэг';

  @override
  String get trackManual => 'Гарын XY';

  @override
  String get dragHint =>
      'Толгойн чиглэлийг тохируулахын тулд чирнэ үү (дууны талбар дагана)';

  @override
  String get customEq => 'Өөрчлөх';

  @override
  String get eqPresetMusic => 'Хөгжим';

  @override
  String get eqPresetCinema => 'Кино';

  @override
  String get eqPresetGame => 'Тоглоом';

  @override
  String get eqPresetVoice => 'Дуу хоолой';

  @override
  String get hrtfGroup0 => 'Эрэгтэй / Жижиг толгой / Жижиг чих';

  @override
  String get hrtfGroup1 => 'Эрэгтэй / Жижиг толгой / Дунд чих';

  @override
  String get hrtfGroup2 => 'Эрэгтэй / Жижиг толгой / Том чих';

  @override
  String get hrtfGroup3 => 'Эрэгтэй / Дунд толгой / Жижиг чих';

  @override
  String get hrtfGroup4 => 'Эрэгтэй / Дунд толгой / Дунд чих';

  @override
  String get hrtfGroup5 => 'Эрэгтэй / Дунд толгой / Том чих';

  @override
  String get hrtfGroup6 => 'Эрэгтэй / Том толгой / Жижиг чих';

  @override
  String get hrtfGroup7 => 'Эрэгтэй / Том толгой / Дунд чих';

  @override
  String get hrtfGroup8 => 'Эрэгтэй / Том толгой / Том чих';

  @override
  String get hrtfGroup9 => 'Эмэгтэй / Жижиг толгой / Жижиг чих';

  @override
  String get hrtfGroup10 => 'Эмэгтэй / Жижиг толгой / Дунд чих';

  @override
  String get hrtfGroup11 => 'Эмэгтэй / Жижиг толгой / Том чих';

  @override
  String get hrtfGroup12 => 'Эмэгтэй / Дунд толгой / Жижиг чих';

  @override
  String get hrtfGroup13 => 'Эмэгтэй / Дунд толгой / Дунд чих';

  @override
  String get hrtfGroup14 => 'Эмэгтэй / Дунд толгой / Том чих';

  @override
  String get navHome => 'Нүүр';

  @override
  String get navLibrary => 'Сан';

  @override
  String get navPlaying => 'Тоглож байна';

  @override
  String get navYou => 'Та';

  @override
  String get tabSongs => 'Дуунууд';

  @override
  String get tabAlbums => 'Цомгууд';

  @override
  String get tabFolders => 'Хавтаснууд';

  @override
  String get tabPlaylists => 'Тоглуулах жагсаалтууд';

  @override
  String get youMood => 'Сэтгэл хөдлөл';

  @override
  String get youCompanion => 'Таны хамтрагч';

  @override
  String get youBuddies => 'Найзууд';

  @override
  String get youSound => 'Дуу';

  @override
  String get youMore => 'Дэлгэрэнгүй';

  @override
  String get themeCherryBlossom => 'Интоорын цэцэг';

  @override
  String get themeStarryNight => 'Одтой шөнө';

  @override
  String get themeAdaptiveLight => 'Дажзатай гэрэл';

  @override
  String get themeAdaptiveDark => 'Дажзатай харанхуй';

  @override
  String youListenedTogether(int h, int m) {
    return 'Хамтдаа $h цаг $m минут сонслоо';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'Толгой хэсэг ба тоглуулагч';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'Сангийн гарчиг дээр суудаг';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'Жижиг тоглуулагч дээр унтдаг';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'Дуртай дуунууд дээгүүр алхдаг';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'Харанхуй сэдвүүд дээр гэрэлтдэг';

  @override
  String get accBow => 'Ягаан нум';

  @override
  String get accHeadphones => 'Жижиг чихэвч';

  @override
  String get accFlower => 'Цэцэг';

  @override
  String get accCrown => 'Жижиг титэм';

  @override
  String accUnlockLabel(int h) {
    return '$h цаг сонсоод нээх';
  }

  @override
  String get youCrossfade => 'Кроссфейд';

  @override
  String get youCrossfadeSub => 'Дууны төгсгөлийг дараагийнхтай нэгтгэх';

  @override
  String get youSmartShuffle => 'Ухаалаг холих';

  @override
  String get youSmartShuffleSub =>
      'Холилт таны дуртай зүйлд ханддаг — энэ төхөөрөмж дээр тооцогдоно';

  @override
  String get libLikedSongs => 'Дуртай дуунууд';

  @override
  String get libTapHeart => 'Дууны зүрхэн дээр дарж энд хадгална уу';

  @override
  String get libRemovedFromQueue => 'Дарааллаас хасагдлаа';

  @override
  String get libRemovedFromLibrary => 'Сангаас хасагдлаа';

  @override
  String get libRemoveFromLibrary => 'Сангаас хасах';

  @override
  String get libNewPlaylist => 'Шинэ тоглуулах жагсаалт';

  @override
  String get libPlaylistName => 'Тоглуулах жагсаалтын нэр';

  @override
  String get libCreate => 'Үүсгэх';

  @override
  String get libSwipeHint => 'зүүн тийш шуурч хасах · удаан дарж эрэмбэлэх';

  @override
  String get libChooseCover => 'Хавтасны зураг сонгох';

  @override
  String get libBackToArtCover => 'Дууны хавтас руу буцах';

  @override
  String libDeleteConfirm(String name) {
    return '«$name»-ыг устгах уу?';
  }

  @override
  String get libDeleteKeepSongs => 'Дуунууд өөрсдөө таны төхөөрөмж дээр үлдэнэ';

  @override
  String get libKeep => 'Хадгалах';

  @override
  String get libDelete => 'Устгах';

  @override
  String get libRemoveKeepFile => 'Файл өөрөө таны төхөөрөмж дээр үлдэнэ';

  @override
  String get libClearConfirm => 'Бүх файлыг хасах уу?';

  @override
  String get libLibraryCleared => 'Сан хоослолоо';

  @override
  String get libPickAudioFiles => 'Аудио файлууд сонгох…';

  @override
  String get libImportFolder => 'Хавтас импортлох';

  @override
  String get libScanWholeFolder => 'Бүх хавтасыг скан хийх… (зөвлөдөг)';

  @override
  String libImportFailed(String error) {
    return 'Импорт амжилтгүй: $error';
  }

  @override
  String get libNoAudioFound => 'Аудио файл олдсонгүй';

  @override
  String libImportedCount(int count) {
    return '$count дуу импортлогдлоо';
  }

  @override
  String get libNothingHere =>
      'Одоохондоо юу ч алга — зүүн шуурч хасах, удаан дарж эрэмбэлэх';

  @override
  String get sidebarYourLibrary => 'ТАНЫ САН';

  @override
  String get sidebarPlaylists => 'ТОГЛУУЛАХ ЖАГСААЛТУУД';

  @override
  String get sidebarFolders => 'ХАВТАСНУУД';

  @override
  String get rowQueue => 'Дараалал';

  @override
  String get rowRemove => 'Хасах';

  @override
  String get rowPlaylist => 'Тоглуулах жагсаалт';

  @override
  String plTrackCount(int count) {
    return '$count зам';
  }

  @override
  String get lyricsSourceAuto => 'Авто';

  @override
  String get lyricsSourceEmbedded => 'Суллагдсан';

  @override
  String get lyricsSourceBestQuality => 'Боломжит хамгийн сайн чанар';

  @override
  String get lyricsSourceFileTags => 'Аудио файлын өөрийн тагуудаас';

  @override
  String get lyricsSourceWordOnline => 'Үг үгээр синхрон (онлайн)';

  @override
  String get lyricsSourceLineOnline => 'Мөр мөрөөр синхрон (онлайн)';

  @override
  String get lyricsSourceNotFound => 'Энэ дуунд олдсонгүй';

  @override
  String get npCatModeUnlocked => 'Мяав?! Муурны горим нээгдлээ 🐱';

  @override
  String get shellResumePlayback => 'Тоглуулалтыг үргэлжлүүлэх';

  @override
  String get shellPlay => 'ТОГЛУУЛАХ';

  @override
  String get devSection => 'ХӨГЖҮҮЛЭГЧ';

  @override
  String get devModeUnlocked => '🛠️ Хөгжүүлэгчийн горим нээгдлээ';

  @override
  String get devUnlockAll => 'Бүх дагалдах хэрэгслийг нээх';

  @override
  String get devClearLyricsCache => 'Дууны үгний кэш цэвэрлэх';

  @override
  String get devRefetchLyrics => 'Бүх дууны үгийг дахин татах…';

  @override
  String get devLyricsCleared => 'Дууны үгний кэш цэвэрлэгдлээ';

  @override
  String get devHideOptions => 'Хөгжүүлэгчийн сонголтыг нуух';

  @override
  String get devModeOff => 'Хөгжүүлэгчийн горим унтарлаа';

  @override
  String get youCantReadFolders => 'Таны хөгжмийн хавтасуудыг уншиж чадсангүй';

  @override
  String get youNoMusicFolders => 'Хөгжмийн хавтас олдсонгүй';
}
