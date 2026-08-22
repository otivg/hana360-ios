// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => '언어';

  @override
  String get languageFollowSystem => '시스템 설정 따르기';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Baseus × Hanamimi';

  @override
  String get commonCancel => '취소';

  @override
  String get commonConfirm => '확인';

  @override
  String get commonBack => '뒤로';

  @override
  String get commonDone => '완료';

  @override
  String get commonUnknown => '알 수 없음';

  @override
  String get secUpmix => '업믹스 엔진';

  @override
  String get spatialAudioTitle => '360 공간 오디오';

  @override
  String get npNothingPlaying => '재생 중인 음악 없음';

  @override
  String get npPickSong => '보관함에서 노래를 선택하세요';

  @override
  String get npSpatialSettings => '360 설정';

  @override
  String get npLyrics => '가사';

  @override
  String get libSearchHint => '음악 검색…';

  @override
  String get libClearLibrary => '보관함 비우기';

  @override
  String get libImportMusic => '음악 가져오기';

  @override
  String libError(String error) {
    return '문제가 발생했습니다: $error';
  }

  @override
  String libNoMatch(String query) {
    return '\"$query\"와 일치하는 항목 없음';
  }

  @override
  String get libPermissionDenied =>
      'Hana360이 음악을 찾으려면 권한이 필요합니다\n이 기기에서 접근 불가? 대신 가져오세요.';

  @override
  String get libNoSongs => '이 기기에서 노래를 찾을 수 없습니다\n파일에서 음악을 가져와 시작하세요';

  @override
  String get libGrantAccess => '접근 허용';

  @override
  String get libRescan => '다시 검색';

  @override
  String get libAddedToQueue => '재생 목록에 추가됨';

  @override
  String get libNoAlbums => '아직 앨범이 없습니다';

  @override
  String get libNoFolders => '아직 폴더가 없습니다';

  @override
  String get libNoPlaylists => '아직 플레이리스트가 없습니다';

  @override
  String libPlaylistCreated(String name) {
    return '플레이리스트 \"$name\" 생성됨 🌸';
  }

  @override
  String get libFolderHint => '폴더를 길게 눌러 플레이리스트로 전환';

  @override
  String libSongCount(int count) {
    return '$count곡';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count곡 · $path';
  }

  @override
  String get homeGreetingLate => '늦은 밤이네요 ♪';

  @override
  String get homeGreetingMorning => '좋은 아침 ♪';

  @override
  String get homeGreetingAfternoon => '좋은 오후 ♪';

  @override
  String get homeGreetingEvening => '좋은 저녁 ♪';

  @override
  String get homeJumpBackIn => '이어서 듣기';

  @override
  String get homeForYou => '취향에 맞는 음악';

  @override
  String get homeForYouSub => '이 기기에서, 당신의 청취 기록을 바탕으로 선별';

  @override
  String get homeWelcome => 'Hana360에 오신 것을 환영합니다 🌸';

  @override
  String get homeAllQuiet => '조용한 하루 🌸';

  @override
  String get homeLibraryHint =>
      '음악은 보관함 탭에 있습니다 — 거기에 폴더를 추가하세요. 재생한 모든 것이 여기에 모입니다.';

  @override
  String get homePlayHint => '무언가 재생하면 다음에 여기에서 기다릴게요.';

  @override
  String get youRescanLibrary => '보관함 다시 검색';

  @override
  String get youExcludedFolders => '제외된 폴더';

  @override
  String get youExcludedFoldersSub => '보관함에서 폴더 숨기기';

  @override
  String get youCatMode => '고양이 모드';

  @override
  String get youAbout => '정보';

  @override
  String get youScanning => '음악을 검색하는 중…';

  @override
  String get youOpenSource => '오픈소스';

  @override
  String get youOpenSourceSub =>
      'Hana360은 ShaptakNaskar의 Hanamimi (GPLv3) 파생작 — 2026-08-10 수정';

  @override
  String get youCheckUpdates => '업데이트 확인';

  @override
  String get youCheckUpdatesSub => '새 빌드는 GitHub Releases에 공개';

  @override
  String get youUpToDate => '최신 버전입니다 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Sappy가 만듦';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => '백그라운드 재생 유지';

  @override
  String get youKeepPlayingAllowed => '허용됨 — 시스템이 음악을 멈추지 않습니다';

  @override
  String get youKeepPlayingTap => '탭하여 시스템이 재생을 중단하지 못하게 하기';

  @override
  String get youExcludedFoldersTitle => '제외된 폴더';

  @override
  String get youExcludedFoldersDesc => '끈 폴더의 노래는 보관함에서 제외됩니다';

  @override
  String get youVisSensitivity => '시각화 장치 감도';

  @override
  String get youVisSensitivitySub => '반응이 약한 노래는 올려주세요';

  @override
  String get youNerdMode => '너드 모드';

  @override
  String get youNerdModeSub => '재생 화면에 코덱·비트레이트·출력 표시';

  @override
  String get youEqualizer => '이퀄라이저';

  @override
  String get youComingSoon => '곧 출시';

  @override
  String get sleepTimer => '슬립 타이머';

  @override
  String get sleep15 => '15분';

  @override
  String get sleep30 => '30분';

  @override
  String get sleep1h => '1시간';

  @override
  String get sleepEndTrack => '노래 끝나면';

  @override
  String get sleepFading => '페이드아웃… 좋은 꿈 꿔요';

  @override
  String sleepIn(String time) {
    return '$time 후 잠자기';
  }

  @override
  String get sleepEndTrackActive => '이 노래가 끝나면 잠자기';

  @override
  String get sleepCancel => '타이머 취소';

  @override
  String get queueUpNext => '다음 재생';

  @override
  String get queueEmpty => '재생 목록이 비어 있습니다';

  @override
  String get updateAvailable => '업데이트 사용 가능 ✨';

  @override
  String get updateNoNotes => '릴리스 노트가 없습니다.';

  @override
  String get updateInstalling => '설치 프로그램 여는 중…';

  @override
  String get updateFailed => '업데이트 실패 — 나중에 다시 시도하세요';

  @override
  String get updateLater => '나중에';

  @override
  String get updateRetry => '다시 시도';

  @override
  String get updateNow => '업데이트';

  @override
  String get spatialToggleTitle => '360 공간 오디오';

  @override
  String get spatialOn => '켜짐';

  @override
  String get spatialOff => '꺼짐';

  @override
  String get lyricsNoFound => '가사를 찾을 수 없습니다';

  @override
  String get lyricsJustListening => '그냥 듣기만 하는 곡이에요';

  @override
  String get lyricsTrySource => '다른 소스 시도';

  @override
  String get lyricsSource => '가사 소스';

  @override
  String get lyricsWordSynced => '단어 동기화';

  @override
  String get lyricsLineSynced => '줄 동기화';

  @override
  String get lyricsUnsynced => '미동기화';

  @override
  String get plNoPlaylists => '플레이리스트가 없습니다 — 먼저 만들어 주세요!';

  @override
  String get plAddToPlaylist => '플레이리스트에 추가';

  @override
  String plAddedTo(String name) {
    return '$name에 추가됨';
  }

  @override
  String get shareLyrics => '가사 공유';

  @override
  String get shareMaxLines => '최대 줄 수 선택됨';

  @override
  String sharePickLines(int count) {
    return '최대 $count줄 선택';
  }

  @override
  String get sharePickHint => '아래에서 줄을 선택하세요…';

  @override
  String get shareButton => '공유';

  @override
  String get batTitle => '음악을 계속 재생하세요 🎵';

  @override
  String get batBody =>
      'Android 배터리 최적화로 화면이 꺼지면 음악이 멈출 수 있습니다. Hana360이 제한 없이 실행되도록 허용하세요.\n\nYou → \"백그라운드 재생 유지\"에서 언제든 변경할 수 있습니다.';

  @override
  String get batNotNow => '나중에';

  @override
  String get batAllow => '허용';

  @override
  String get algoSwitch => '알고리즘';

  @override
  String get speakerDistance => '스피커 거리';

  @override
  String get channelTrim => '채널 보정';

  @override
  String get masterGain => '마스터 게인';

  @override
  String get secHrtf => 'HRTF 맞춤 설정';

  @override
  String get outputGain => '출력 게인';

  @override
  String get secEq => '공간 EQ';

  @override
  String get secReverb => '리버브';

  @override
  String get roomSize => '공간';

  @override
  String get reverbGain => '리버브 게인';

  @override
  String get secTracking => '헤드 트래킹';

  @override
  String get trackOff => '끄기';

  @override
  String get trackSensor => '폰 센서';

  @override
  String get trackManual => '수동 XY';

  @override
  String get dragHint => '드래그하여 머리 방향 조정 (음장이 함께 움직임)';

  @override
  String get customEq => '사용자 지정';

  @override
  String get eqPresetMusic => '음악';

  @override
  String get eqPresetCinema => '시네마';

  @override
  String get eqPresetGame => '게임';

  @override
  String get eqPresetVoice => '보이스';

  @override
  String get hrtfGroup0 => '남성 / 작음 / 작음';

  @override
  String get hrtfGroup1 => '남성 / 작음 / 중간';

  @override
  String get hrtfGroup2 => '남성 / 작음 / 큼';

  @override
  String get hrtfGroup3 => '남성 / 중간 / 작음';

  @override
  String get hrtfGroup4 => '남성 / 중간 / 중간';

  @override
  String get hrtfGroup5 => '남성 / 중간 / 큼';

  @override
  String get hrtfGroup6 => '남성 / 큼 / 작음';

  @override
  String get hrtfGroup7 => '남성 / 큼 / 중간';

  @override
  String get hrtfGroup8 => '남성 / 큼 / 큼';

  @override
  String get hrtfGroup9 => '여성 / 작음 / 작음';

  @override
  String get hrtfGroup10 => '여성 / 작음 / 중간';

  @override
  String get hrtfGroup11 => '여성 / 작음 / 큼';

  @override
  String get hrtfGroup12 => '여성 / 중간 / 작음';

  @override
  String get hrtfGroup13 => '여성 / 중간 / 중간';

  @override
  String get hrtfGroup14 => '여성 / 중간 / 큼';

  @override
  String get navHome => '홈';

  @override
  String get navLibrary => '보관함';

  @override
  String get navPlaying => '재생 중';

  @override
  String get navYou => '나';

  @override
  String get tabSongs => '노래';

  @override
  String get tabAlbums => '앨범';

  @override
  String get tabFolders => '폴더';

  @override
  String get tabPlaylists => '플레이리스트';

  @override
  String get youMood => '기분';

  @override
  String get youCompanion => '나의 친구';

  @override
  String get youBuddies => '친구들';

  @override
  String get youSound => '사운드';

  @override
  String get youMore => '더보기';

  @override
  String get themeCherryBlossom => '벚꽃';

  @override
  String get themeStarryNight => '별이 빛나는 밤';

  @override
  String get themeAdaptiveLight => '적응형 라이트';

  @override
  String get themeAdaptiveDark => '적응형 다크';

  @override
  String youListenedTogether(int h, int m) {
    return '함께 $h시간 $m분 들었어요';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => '헤더와 재생 화면';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => '보관함 제목에 앉아요';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => '미니 플레이어에서 낮잠';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => '좋아요 위를 걸어요';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => '다크 테마에서 빛나요';

  @override
  String get accBow => '분홍 리본';

  @override
  String get accHeadphones => '작은 헤드폰';

  @override
  String get accFlower => '꽃';

  @override
  String get accCrown => '작은 왕관';

  @override
  String accUnlockLabel(int h) {
    return '$h시간 듣기';
  }

  @override
  String get youCrossfade => '크로스페이드';

  @override
  String get youCrossfadeSub => '노래 끝을 다음 곡에 자연스럽게 섞기';

  @override
  String get youSmartShuffle => '스마트 셔플';

  @override
  String get youSmartShuffleSub => '즐겨찾기를 더 많이 섞어 재생 — 기기에서 계산';

  @override
  String get libLikedSongs => '좋아하는 노래';

  @override
  String get libTapHeart => '노래의 하트를 눌러 여기에 보관하세요';

  @override
  String get libRemovedFromQueue => '재생 목록에서 제거됨';

  @override
  String get libRemovedFromLibrary => '보관함에서 제거됨';

  @override
  String get libRemoveFromLibrary => '보관함에서 제거';

  @override
  String get libNewPlaylist => '새 플레이리스트';

  @override
  String get libPlaylistName => '플레이리스트 이름';

  @override
  String get libCreate => '만들기';

  @override
  String get libSwipeHint => '왼쪽으로 밀어 제거 · 길게 눌러 정렬';

  @override
  String get libChooseCover => '표지 이미지 선택';

  @override
  String get libBackToArtCover => '앨범 아트로 되돌리기';

  @override
  String libDeleteConfirm(String name) {
    return '\"$name\" 삭제?';
  }

  @override
  String get libDeleteKeepSongs => '노래 자체는 기기에 남습니다';

  @override
  String get libKeep => '유지';

  @override
  String get libDelete => '삭제';

  @override
  String get libRemoveKeepFile => '파일 자체는 기기에 남습니다';

  @override
  String get libClearConfirm => '모든 파일을 제거할까요?';

  @override
  String get libLibraryCleared => '보관함 비움';

  @override
  String get libPickAudioFiles => '오디오 파일 선택…';

  @override
  String get libImportFolder => '폴더 가져오기';

  @override
  String get libScanWholeFolder => '전체 폴더 검색… (권장)';

  @override
  String libImportFailed(String error) {
    return '가져오기 실패: $error';
  }

  @override
  String get libNoAudioFound => '오디오 파일을 찾지 못함';

  @override
  String libImportedCount(int count) {
    return '$count곡 가져옴';
  }

  @override
  String get libNothingHere => '아직 비어 있음 — 왼쪽으로 밀어 제거, 길게 눌러 정렬';

  @override
  String get sidebarYourLibrary => '내 보관함';

  @override
  String get sidebarPlaylists => '플레이리스트';

  @override
  String get sidebarFolders => '폴더';

  @override
  String get rowQueue => '재생 목록';

  @override
  String get rowRemove => '제거';

  @override
  String get rowPlaylist => '플레이리스트';

  @override
  String plTrackCount(int count) {
    return '$count트랙';
  }

  @override
  String get lyricsSourceAuto => '자동';

  @override
  String get lyricsSourceEmbedded => '내장';

  @override
  String get lyricsSourceBestQuality => '가장 좋은 사용 가능 품질';

  @override
  String get lyricsSourceFileTags => '오디오 파일 자체 태그에서';

  @override
  String get lyricsSourceWordOnline => '단어 동기화 (온라인)';

  @override
  String get lyricsSourceLineOnline => '줄 동기화 (온라인)';

  @override
  String get lyricsSourceNotFound => '이 노래에서는 찾을 수 없음';

  @override
  String get npCatModeUnlocked => '냐옹?! 고양이 모드 해제 🐱';

  @override
  String get shellResumePlayback => '재생 재개';

  @override
  String get shellPlay => '재생';

  @override
  String get devSection => '개발자';

  @override
  String get devModeUnlocked => '🛠️ 개발자 모드 해제됨';

  @override
  String get devUnlockAll => '모든 액세서리 해제';

  @override
  String get devClearLyricsCache => '가사 캐시 지우기';

  @override
  String get devRefetchLyrics => '모든 가사 다시 불러오기…';

  @override
  String get devLyricsCleared => '가사 캐시 지움';

  @override
  String get devHideOptions => '개발자 옵션 숨기기';

  @override
  String get devModeOff => '개발자 모드 꺼짐';

  @override
  String get youCantReadFolders => '음악 폴더를 읽을 수 없습니다';

  @override
  String get youNoMusicFolders => '음악 폴더를 찾지 못함';
}
