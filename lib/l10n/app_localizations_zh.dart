// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => '语言';

  @override
  String get languageFollowSystem => '跟随系统';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Baseus × Hanamimi';

  @override
  String get commonCancel => '取消';

  @override
  String get commonConfirm => '确定';

  @override
  String get commonBack => '返回';

  @override
  String get commonDone => '完成';

  @override
  String get commonUnknown => '未知';

  @override
  String get secUpmix => '上混引擎';

  @override
  String get spatialAudioTitle => '360 空间音效';

  @override
  String get npNothingPlaying => '暂无播放';

  @override
  String get npPickSong => '从资料库选择歌曲';

  @override
  String get npSpatialSettings => '360 设置';

  @override
  String get npLyrics => 'Lyrics';

  @override
  String get libSearchHint => '搜索你的音乐…';

  @override
  String get libClearLibrary => '清空列表';

  @override
  String get libImportMusic => '导入音乐';

  @override
  String libError(String error) {
    return '出错了: $error';
  }

  @override
  String libNoMatch(String query) {
    return '没有匹配 \"$query\" 的结果';
  }

  @override
  String get libPermissionDenied => 'Hana360 需要权限来查找你的音乐\n设备无访问权限？改用导入。';

  @override
  String get libNoSongs => '设备上没有找到歌曲\n从文件导入音乐即可开始';

  @override
  String get libGrantAccess => '授予权限';

  @override
  String get libRescan => '重新扫描';

  @override
  String get libAddedToQueue => '已加入队列';

  @override
  String get libNoAlbums => '还没有专辑';

  @override
  String get libNoFolders => '还没有文件夹';

  @override
  String get libNoPlaylists => '还没有播放列表';

  @override
  String libPlaylistCreated(String name) {
    return '播放列表 \"$name\" 已创建 🌸';
  }

  @override
  String get libFolderHint => '长按文件夹可转为播放列表';

  @override
  String libSongCount(int count) {
    return '$count 首歌曲';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count 首歌曲 · $path';
  }

  @override
  String get homeGreetingLate => '夜深了 ♪';

  @override
  String get homeGreetingMorning => '早上好 ♪';

  @override
  String get homeGreetingAfternoon => '下午好 ♪';

  @override
  String get homeGreetingEvening => '晚上好 ♪';

  @override
  String get homeJumpBackIn => '继续收听';

  @override
  String get homeForYou => '为你推荐';

  @override
  String get homeForYouSub => '基于你的收听，在本机为你挑选';

  @override
  String get homeWelcome => '欢迎来到 Hana360 🌸';

  @override
  String get homeAllQuiet => '一切安静 🌸';

  @override
  String get homeLibraryHint => '你的音乐在「资料库」标签页 — 在那里添加文件夹。播放过的音乐都会汇集在这里。';

  @override
  String get homePlayHint => '播放一首歌，下次它会在这里等你。';

  @override
  String get youRescanLibrary => '重新扫描库';

  @override
  String get youExcludedFolders => '排除的文件夹';

  @override
  String get youExcludedFoldersSub => '从资料库中隐藏文件夹';

  @override
  String get youCatMode => '猫咪模式';

  @override
  String get youAbout => '关于';

  @override
  String get youScanning => '正在扫描你的音乐…';

  @override
  String get youOpenSource => '开源声明';

  @override
  String get youOpenSourceSub =>
      'Hana360 是 Hanamimi (GPLv3) by ShaptakNaskar 的衍生作品 — 修改于 2026-08-10';

  @override
  String get youCheckUpdates => '检查更新';

  @override
  String get youCheckUpdatesSub => '新版本发布在 GitHub Releases';

  @override
  String get youUpToDate => '已是最新版本 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Made by Sappy';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => '后台保持播放';

  @override
  String get youKeepPlayingAllowed => '已允许 — 系统不会暂停你的音乐';

  @override
  String get youKeepPlayingTap => '点击停止系统终止播放';

  @override
  String get youExcludedFoldersTitle => '排除的文件夹';

  @override
  String get youExcludedFoldersDesc => '已关闭文件夹中的歌曲将从资料库移除';

  @override
  String get youVisSensitivity => '可视化灵敏度';

  @override
  String get youVisSensitivitySub => '歌曲动感弱时调高';

  @override
  String get youNerdMode => '极客模式';

  @override
  String get youNerdModeSub => '在播放页显示编码、码率与音频输出';

  @override
  String get youEqualizer => '均衡器';

  @override
  String get youComingSoon => '即将推出';

  @override
  String get sleepTimer => '睡眠定时器';

  @override
  String get sleep15 => '15 分钟';

  @override
  String get sleep30 => '30 分钟';

  @override
  String get sleep1h => '1 小时';

  @override
  String get sleepEndTrack => '歌曲结束时';

  @override
  String get sleepFading => '淡出中…好梦';

  @override
  String sleepIn(String time) {
    return '$time 后入睡';
  }

  @override
  String get sleepEndTrackActive => '歌曲结束时入睡';

  @override
  String get sleepCancel => '取消定时';

  @override
  String get queueUpNext => '接下来播放';

  @override
  String get queueEmpty => '队列为空';

  @override
  String get updateAvailable => '发现新版本 ✨';

  @override
  String get updateNoNotes => '没有发布说明。';

  @override
  String get updateInstalling => '正在打开安装器…';

  @override
  String get updateFailed => '更新失败 — 请稍后重试';

  @override
  String get updateLater => '稍后';

  @override
  String get updateRetry => '重试';

  @override
  String get updateNow => '更新';

  @override
  String get spatialToggleTitle => '360 空间音效';

  @override
  String get spatialOn => '已开启';

  @override
  String get spatialOff => '已关闭';

  @override
  String get lyricsNoFound => '未找到歌词';

  @override
  String get lyricsJustListening => '这首歌只适合静静聆听';

  @override
  String get lyricsTrySource => '尝试其他来源';

  @override
  String get lyricsSource => '歌词来源';

  @override
  String get lyricsWordSynced => '逐词同步';

  @override
  String get lyricsLineSynced => '逐行同步';

  @override
  String get lyricsUnsynced => '未同步';

  @override
  String get plNoPlaylists => '还没有播放列表 — 先创建一个吧！';

  @override
  String get plAddToPlaylist => '添加到播放列表';

  @override
  String plAddedTo(String name) {
    return '已添加到 $name';
  }

  @override
  String get shareLyrics => '分享歌词';

  @override
  String get shareMaxLines => '已达最大行数';

  @override
  String sharePickLines(int count) {
    return '最多选择 $count 行';
  }

  @override
  String get sharePickHint => '在下方选择一些歌词…';

  @override
  String get shareButton => '分享';

  @override
  String get batTitle => '让音乐继续播放 🎵';

  @override
  String get batBody =>
      'Android 的电池优化可能会在屏幕关闭时暂停你的音乐。允许 Hana360 不受限制运行，播放才能保持稳定。\n\n你随时可以在「You → 后台保持播放」中更改此设置。';

  @override
  String get batNotNow => '稍后';

  @override
  String get batAllow => '允许';

  @override
  String get algoSwitch => '算法开关';

  @override
  String get speakerDistance => '音箱距离';

  @override
  String get channelTrim => '通道补偿';

  @override
  String get masterGain => '主增益';

  @override
  String get secHrtf => 'HRTF 个性化';

  @override
  String get outputGain => '输出增益';

  @override
  String get secEq => '空间 EQ';

  @override
  String get secReverb => '混响';

  @override
  String get roomSize => '房间';

  @override
  String get reverbGain => '混响增益';

  @override
  String get secTracking => '头部追踪';

  @override
  String get trackOff => '关闭';

  @override
  String get trackSensor => '手机传感器';

  @override
  String get trackManual => '手动 XY';

  @override
  String get dragHint => '拖动调节头部朝向 (声场随之转动)';

  @override
  String get customEq => '自定义';

  @override
  String get eqPresetMusic => '音乐';

  @override
  String get eqPresetCinema => '影院';

  @override
  String get eqPresetGame => '游戏';

  @override
  String get eqPresetVoice => '人声';

  @override
  String get hrtfGroup0 => '男·小头·小耳';

  @override
  String get hrtfGroup1 => '男·小头·中耳';

  @override
  String get hrtfGroup2 => '男·小头·大耳';

  @override
  String get hrtfGroup3 => '男·中头·小耳';

  @override
  String get hrtfGroup4 => '男·中头·中耳';

  @override
  String get hrtfGroup5 => '男·中头·大耳';

  @override
  String get hrtfGroup6 => '男·大头·小耳';

  @override
  String get hrtfGroup7 => '男·大头·中耳';

  @override
  String get hrtfGroup8 => '男·大头·大耳';

  @override
  String get hrtfGroup9 => '女·小头·小耳';

  @override
  String get hrtfGroup10 => '女·小头·中耳';

  @override
  String get hrtfGroup11 => '女·小头·大耳';

  @override
  String get hrtfGroup12 => '女·中头·小耳';

  @override
  String get hrtfGroup13 => '女·中头·中耳';

  @override
  String get hrtfGroup14 => '女·中头·大耳';

  @override
  String get navHome => '首页';

  @override
  String get navLibrary => '资料库';

  @override
  String get navPlaying => '播放';

  @override
  String get navYou => '我的';

  @override
  String get tabSongs => '歌曲';

  @override
  String get tabAlbums => '专辑';

  @override
  String get tabFolders => '文件夹';

  @override
  String get tabPlaylists => '播放列表';

  @override
  String get youMood => '心情';

  @override
  String get youCompanion => '你的陪伴';

  @override
  String get youBuddies => '小伙伴';

  @override
  String get youSound => '声音';

  @override
  String get youMore => '更多';

  @override
  String get themeCherryBlossom => '樱花';

  @override
  String get themeStarryNight => '星夜';

  @override
  String get themeAdaptiveLight => '自适应浅色';

  @override
  String get themeAdaptiveDark => '自适应深色';

  @override
  String youListenedTogether(int h, int m) {
    return '一起听了 $h 小时 $m 分钟';
  }

  @override
  String get buddyHana => 'Hanon 花音';

  @override
  String get buddyHanaHome => '页眉与播放页';

  @override
  String get buddyParrot => 'Qingyu 青羽';

  @override
  String get buddyParrotHome => '停在资料库标题上';

  @override
  String get buddyCat => 'Yuemian 月眠';

  @override
  String get buddyCatHome => '在迷你播放器上打盹';

  @override
  String get buddyDuck => 'Paopao 泡泡';

  @override
  String get buddyDuckHome => '在喜欢歌曲上踱步';

  @override
  String get buddyFireflies => 'Xingchen 星尘';

  @override
  String get buddyFirefliesHome => '在深色主题里发光';

  @override
  String get accBow => '粉色蝴蝶结';

  @override
  String get accHeadphones => '小耳机';

  @override
  String get accFlower => '花朵';

  @override
  String get accCrown => '小皇冠';

  @override
  String accUnlockLabel(int h) {
    return '收听 $h 小时解锁';
  }

  @override
  String get youCrossfade => '交叉淡化';

  @override
  String get youCrossfadeSub => '把歌曲结尾融入下一首';

  @override
  String get youSmartShuffle => '智能随机';

  @override
  String get youSmartShuffleSub => '随机播放偏向你的最爱 — 本机计算';

  @override
  String get libLikedSongs => '喜欢的歌曲';

  @override
  String get libTapHeart => '点击歌曲上的爱心即可保留在这里';

  @override
  String get libRemovedFromQueue => '已从队列移除';

  @override
  String get libRemovedFromLibrary => '已从资料库移除';

  @override
  String get libRemoveFromLibrary => '从资料库移除';

  @override
  String get libNewPlaylist => '新建播放列表';

  @override
  String get libPlaylistName => '播放列表名称';

  @override
  String get libCreate => '创建';

  @override
  String get libSwipeHint => '左滑移除 · 长按排序';

  @override
  String get libChooseCover => '选择封面图片';

  @override
  String get libBackToArtCover => '恢复为歌曲封面';

  @override
  String libDeleteConfirm(String name) {
    return '删除 \"$name\"？';
  }

  @override
  String get libDeleteKeepSongs => '歌曲本身会保留在你的设备上';

  @override
  String get libKeep => '保留';

  @override
  String get libDelete => '删除';

  @override
  String get libRemoveKeepFile => '文件本身会保留在你的设备上';

  @override
  String get libClearConfirm => '移除全部歌曲？';

  @override
  String get libLibraryCleared => '资料库已清空';

  @override
  String get libPickAudioFiles => '选择音频文件…';

  @override
  String get libImportFolder => '导入文件夹';

  @override
  String get libScanWholeFolder => '扫描整个文件夹…（推荐）';

  @override
  String libImportFailed(String error) {
    return '导入失败: $error';
  }

  @override
  String get libNoAudioFound => '未找到音频文件';

  @override
  String libImportedCount(int count) {
    return '已导入 $count 首歌曲';
  }

  @override
  String get libNothingHere => '这里还空着 — 左滑可移除，长按可排序';

  @override
  String get sidebarYourLibrary => '你的资料库';

  @override
  String get sidebarPlaylists => '播放列表';

  @override
  String get sidebarFolders => '文件夹';

  @override
  String get rowQueue => '加入队列';

  @override
  String get rowRemove => '移除';

  @override
  String get rowPlaylist => '播放列表';

  @override
  String plTrackCount(int count) {
    return '$count 首曲目';
  }

  @override
  String get lyricsSourceAuto => '自动';

  @override
  String get lyricsSourceEmbedded => '内嵌';

  @override
  String get lyricsSourceBestQuality => '最佳可用质量';

  @override
  String get lyricsSourceFileTags => '来自音频文件自身的标签';

  @override
  String get lyricsSourceWordOnline => '逐词同步（在线）';

  @override
  String get lyricsSourceLineOnline => '逐行同步（在线）';

  @override
  String get lyricsSourceNotFound => '此歌曲未找到';

  @override
  String get npCatModeUnlocked => '喵？！猫咪模式已解锁 🐱';

  @override
  String get shellResumePlayback => '继续播放';

  @override
  String get shellPlay => '播放';

  @override
  String get devSection => '开发者';

  @override
  String get devModeUnlocked => '🛠️ 开发者模式已解锁';

  @override
  String get devUnlockAll => '解锁全部配件';

  @override
  String get devClearLyricsCache => '清空歌词缓存';

  @override
  String get devRefetchLyrics => '重新拉取全部歌词…';

  @override
  String get devLyricsCleared => '歌词缓存已清空';

  @override
  String get devHideOptions => '隐藏开发者选项';

  @override
  String get devModeOff => '开发者模式已关闭';

  @override
  String get youCantReadFolders => '无法读取你的音乐文件夹';

  @override
  String get youNoMusicFolders => '未找到音乐文件夹';
}

/// The translations for Chinese, using the Han script (`zh_Hant`).
class AppLocalizationsZhHant extends AppLocalizationsZh {
  AppLocalizationsZhHant() : super('zh_Hant');

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => '語言';

  @override
  String get languageFollowSystem => '跟隨系統';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Hana360';

  @override
  String get commonCancel => '取消';

  @override
  String get commonConfirm => '確定';

  @override
  String get commonBack => '返回';

  @override
  String get commonDone => '完成';

  @override
  String get commonUnknown => '未知';

  @override
  String get secUpmix => 'Upmix 引擎';

  @override
  String get spatialAudioTitle => '360 空間音效';

  @override
  String get npNothingPlaying => '沒有在播放';

  @override
  String get npPickSong => '從你的音樂庫選擇一首歌';

  @override
  String get npSpatialSettings => '360 設定';

  @override
  String get npLyrics => '歌詞';

  @override
  String get libSearchHint => '搜尋你的音樂…';

  @override
  String get libClearLibrary => '清空音樂庫';

  @override
  String get libImportMusic => '匯入音樂';

  @override
  String libError(String error) {
    return '發生錯誤：$error';
  }

  @override
  String libNoMatch(String query) {
    return '找不到與「$query」相符的內容';
  }

  @override
  String get libPermissionDenied => 'Hana360 需要權限才能找到你的音樂\n這部裝置無法存取？直接匯入即可。';

  @override
  String get libNoSongs => '這部裝置上找不到歌曲\n從你的檔案匯入音樂';

  @override
  String get libGrantAccess => '允許存取';

  @override
  String get libRescan => '重新掃描';

  @override
  String get libAddedToQueue => '已加入播放佇列';

  @override
  String get libNoAlbums => '還沒有專輯';

  @override
  String get libNoFolders => '還沒有資料夾';

  @override
  String get libNoPlaylists => '還沒有播放清單';

  @override
  String libPlaylistCreated(String name) {
    return '播放清單「$name」已建立 🌸';
  }

  @override
  String get libFolderHint => '長按資料夾可轉為播放清單';

  @override
  String libSongCount(int count) {
    return '$count 首歌曲';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count 首歌曲 · $path';
  }

  @override
  String get homeGreetingLate => '深夜還沒睡 ♪';

  @override
  String get homeGreetingMorning => '早安 ♪';

  @override
  String get homeGreetingAfternoon => '午安 ♪';

  @override
  String get homeGreetingEvening => '晚安 ♪';

  @override
  String get homeJumpBackIn => '繼續聆聽';

  @override
  String get homeForYou => '為你推薦';

  @override
  String get homeForYouSub => '根據你的聆聽紀錄，在本裝置挑選';

  @override
  String get homeWelcome => '歡迎來到 Hana360 🌸';

  @override
  String get homeAllQuiet => '一切安靜 🌸';

  @override
  String get homeLibraryHint => '你的音樂在音樂庫分頁 — 在那裡新增資料夾。你播放過的內容都會彙集於此。';

  @override
  String get homePlayHint => '播放點什麼，下次它就會在這裡等你。';

  @override
  String get youRescanLibrary => '重新掃描音樂庫';

  @override
  String get youExcludedFolders => '已排除的資料夾';

  @override
  String get youExcludedFoldersSub => '從音樂庫隱藏資料夾';

  @override
  String get youCatMode => '貓咪模式';

  @override
  String get youAbout => '關於';

  @override
  String get youScanning => '正在掃描你的音樂…';

  @override
  String get youOpenSource => '開放原始碼';

  @override
  String get youOpenSourceSub =>
      'Hana360 為 ShaptakNaskar 的 Hanamimi (GPLv3) 衍生版本 — 2026-08-10 修改';

  @override
  String get youCheckUpdates => '檢查更新';

  @override
  String get youCheckUpdatesSub => '新版本於 GitHub Releases 發布';

  @override
  String get youUpToDate => '你已是最新版本 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Sappy 製作';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => '在背景繼續播放';

  @override
  String get youKeepPlayingAllowed => '已允許 — 系統不會中斷你的音樂';

  @override
  String get youKeepPlayingTap => '點按以防止系統停止播放';

  @override
  String get youExcludedFoldersTitle => '已排除的資料夾';

  @override
  String get youExcludedFoldersDesc => '已關閉資料夾中的歌曲會從你的音樂庫排除';

  @override
  String get youVisSensitivity => '視覺化器敏感度';

  @override
  String get youVisSensitivitySub => '歌曲幾乎不移動時調高';

  @override
  String get youNerdMode => 'Nerd 模式';

  @override
  String get youNerdModeSub => '在播放器顯示 codec、bitrate 與輸出';

  @override
  String get youEqualizer => '等化器';

  @override
  String get youComingSoon => '即將推出';

  @override
  String get sleepTimer => '睡眠計時器';

  @override
  String get sleep15 => '15 分鐘';

  @override
  String get sleep30 => '30 分鐘';

  @override
  String get sleep1h => '1 小時';

  @override
  String get sleepEndTrack => '歌曲結束時';

  @override
  String get sleepFading => '淡出中…祝好夢';

  @override
  String sleepIn(String time) {
    return '$time 後入睡';
  }

  @override
  String get sleepEndTrackActive => '這首歌播完後入睡';

  @override
  String get sleepCancel => '取消計時器';

  @override
  String get queueUpNext => '下一首';

  @override
  String get queueEmpty => '佇列為空';

  @override
  String get updateAvailable => '有更新可用 ✨';

  @override
  String get updateNoNotes => '沒有版本說明。';

  @override
  String get updateInstalling => '正在開啟安裝程式…';

  @override
  String get updateFailed => '更新失敗 — 稍後再試';

  @override
  String get updateLater => '稍後';

  @override
  String get updateRetry => '重試';

  @override
  String get updateNow => '更新';

  @override
  String get spatialToggleTitle => '360 空間音效';

  @override
  String get spatialOn => '開啟';

  @override
  String get spatialOff => '關閉';

  @override
  String get lyricsNoFound => '找不到歌詞';

  @override
  String get lyricsJustListening => '這首歌只適合聆聽';

  @override
  String get lyricsTrySource => '嘗試其他來源';

  @override
  String get lyricsSource => '歌詞來源';

  @override
  String get lyricsWordSynced => '逐字同步';

  @override
  String get lyricsLineSynced => '逐行同步';

  @override
  String get lyricsUnsynced => '未同步';

  @override
  String get plNoPlaylists => '還沒有播放清單 — 先建立一個！';

  @override
  String get plAddToPlaylist => '加入播放清單';

  @override
  String plAddedTo(String name) {
    return '已加入 $name';
  }

  @override
  String get shareLyrics => '分享歌詞';

  @override
  String get shareMaxLines => '已選擇最大行數';

  @override
  String sharePickLines(int count) {
    return '最多選擇 $count 行';
  }

  @override
  String get sharePickHint => '在下方選擇幾行…';

  @override
  String get shareButton => '分享';

  @override
  String get batTitle => '讓音樂持續播放 🎵';

  @override
  String get batBody =>
      'Android 的電池最佳化可能在螢幕關閉時中斷你的音樂。允許 Hana360 不受限制地執行。\n\n你可以隨時在 You →「在背景繼續播放」修改。';

  @override
  String get batNotNow => '暫時不要';

  @override
  String get batAllow => '允許';

  @override
  String get algoSwitch => '演算法';

  @override
  String get speakerDistance => '喇叭距離';

  @override
  String get channelTrim => '聲道調整';

  @override
  String get masterGain => '主音量';

  @override
  String get secHrtf => 'HRTF 個人化';

  @override
  String get outputGain => '輸出增益';

  @override
  String get secEq => '空間 EQ';

  @override
  String get secReverb => '迴響';

  @override
  String get roomSize => '房間';

  @override
  String get reverbGain => '迴響增益';

  @override
  String get secTracking => '頭部追蹤';

  @override
  String get trackOff => '關閉';

  @override
  String get trackSensor => '手機感應器';

  @override
  String get trackManual => '手動 XY';

  @override
  String get dragHint => '拖曳以調整頭部方向（聲場會跟隨）';

  @override
  String get customEq => '自訂';

  @override
  String get eqPresetMusic => '音樂';

  @override
  String get eqPresetCinema => '電影';

  @override
  String get eqPresetGame => '遊戲';

  @override
  String get eqPresetVoice => '人聲';

  @override
  String get hrtfGroup0 => '男 / 小頭 / 小耳';

  @override
  String get hrtfGroup1 => '男 / 小頭 / 中耳';

  @override
  String get hrtfGroup2 => '男 / 小頭 / 大耳';

  @override
  String get hrtfGroup3 => '男 / 中頭 / 小耳';

  @override
  String get hrtfGroup4 => '男 / 中頭 / 中耳';

  @override
  String get hrtfGroup5 => '男 / 中頭 / 大耳';

  @override
  String get hrtfGroup6 => '男 / 大頭 / 小耳';

  @override
  String get hrtfGroup7 => '男 / 大頭 / 中耳';

  @override
  String get hrtfGroup8 => '男 / 大頭 / 大耳';

  @override
  String get hrtfGroup9 => '女 / 小頭 / 小耳';

  @override
  String get hrtfGroup10 => '女 / 小頭 / 中耳';

  @override
  String get hrtfGroup11 => '女 / 小頭 / 大耳';

  @override
  String get hrtfGroup12 => '女 / 中頭 / 小耳';

  @override
  String get hrtfGroup13 => '女 / 中頭 / 中耳';

  @override
  String get hrtfGroup14 => '女 / 中頭 / 大耳';

  @override
  String get navHome => '首頁';

  @override
  String get navLibrary => '音樂庫';

  @override
  String get navPlaying => '播放中';

  @override
  String get navYou => '你';

  @override
  String get tabSongs => '歌曲';

  @override
  String get tabAlbums => '專輯';

  @override
  String get tabFolders => '資料夾';

  @override
  String get tabPlaylists => '播放清單';

  @override
  String get youMood => '心情';

  @override
  String get youCompanion => '你的夥伴';

  @override
  String get youBuddies => '夥伴';

  @override
  String get youSound => '音效';

  @override
  String get youMore => '更多';

  @override
  String get themeCherryBlossom => '櫻花';

  @override
  String get themeStarryNight => '星空';

  @override
  String get themeAdaptiveLight => '自適應淺色';

  @override
  String get themeAdaptiveDark => '自適應深色';

  @override
  String youListenedTogether(int h, int m) {
    return '一起聆聽 $h 小時 $m 分鐘';
  }

  @override
  String get buddyHana => 'Hanon 花音';

  @override
  String get buddyHanaHome => '頁首與播放頁';

  @override
  String get buddyParrot => 'Qingyu 青羽';

  @override
  String get buddyParrotHome => '棲息於音樂庫標題';

  @override
  String get buddyCat => 'Yuemian 月眠';

  @override
  String get buddyCatHome => '在迷你播放器小憩';

  @override
  String get buddyDuck => 'Paopao 泡泡';

  @override
  String get buddyDuckHome => '在喜歡的歌曲上踱步';

  @override
  String get buddyFireflies => 'Xingchen 星塵';

  @override
  String get buddyFirefliesHome => '在深色主題中發光';

  @override
  String get accBow => '粉紅蝴蝶結';

  @override
  String get accHeadphones => '小耳機';

  @override
  String get accFlower => '花朵';

  @override
  String get accCrown => '小皇冠';

  @override
  String accUnlockLabel(int h) {
    return '聆聽 $h 小時解鎖';
  }

  @override
  String get youCrossfade => '交叉淡化';

  @override
  String get youCrossfadeSub => '將歌曲結尾融入下一首';

  @override
  String get youSmartShuffle => '智慧隨機播放';

  @override
  String get youSmartShuffleSub => '隨機播放偏向你的最愛 — 於本裝置計算';

  @override
  String get libLikedSongs => '喜歡的歌曲';

  @override
  String get libTapHeart => '點按歌曲上的愛心即可保留於此';

  @override
  String get libRemovedFromQueue => '已從佇列移除';

  @override
  String get libRemovedFromLibrary => '已從音樂庫移除';

  @override
  String get libRemoveFromLibrary => '從音樂庫移除';

  @override
  String get libNewPlaylist => '新增播放清單';

  @override
  String get libPlaylistName => '播放清單名稱';

  @override
  String get libCreate => '建立';

  @override
  String get libSwipeHint => '向左滑動移除 · 長按排序';

  @override
  String get libChooseCover => '選擇封面圖片';

  @override
  String get libBackToArtCover => '返回歌曲封面';

  @override
  String libDeleteConfirm(String name) {
    return '刪除「$name」？';
  }

  @override
  String get libDeleteKeepSongs => '歌曲本身會保留在你的裝置上';

  @override
  String get libKeep => '保留';

  @override
  String get libDelete => '刪除';

  @override
  String get libRemoveKeepFile => '檔案本身會保留在你的裝置上';

  @override
  String get libClearConfirm => '移除所有檔案？';

  @override
  String get libLibraryCleared => '音樂庫已清空';

  @override
  String get libPickAudioFiles => '選擇音訊檔案…';

  @override
  String get libImportFolder => '匯入資料夾';

  @override
  String get libScanWholeFolder => '掃描整個資料夾…（建議）';

  @override
  String libImportFailed(String error) {
    return '匯入失敗：$error';
  }

  @override
  String get libNoAudioFound => '找不到音訊檔案';

  @override
  String libImportedCount(int count) {
    return '已匯入 $count 首歌曲';
  }

  @override
  String get libNothingHere => '還沒有內容 — 向左滑動移除，長按排序';

  @override
  String get sidebarYourLibrary => '你的音樂庫';

  @override
  String get sidebarPlaylists => '播放清單';

  @override
  String get sidebarFolders => '資料夾';

  @override
  String get rowQueue => '加入佇列';

  @override
  String get rowRemove => '移除';

  @override
  String get rowPlaylist => '播放清單';

  @override
  String plTrackCount(int count) {
    return '$count 首曲目';
  }

  @override
  String get lyricsSourceAuto => '自動';

  @override
  String get lyricsSourceEmbedded => '內嵌';

  @override
  String get lyricsSourceBestQuality => '最佳可用品質';

  @override
  String get lyricsSourceFileTags => '來自音訊檔案自身的標籤';

  @override
  String get lyricsSourceWordOnline => '逐字同步（線上）';

  @override
  String get lyricsSourceLineOnline => '逐行同步（線上）';

  @override
  String get lyricsSourceNotFound => '這首歌找不到';

  @override
  String get npCatModeUnlocked => '喵？！貓咪模式已解鎖 🐱';

  @override
  String get shellResumePlayback => '繼續播放';

  @override
  String get shellPlay => '播放';

  @override
  String get devSection => '開發者';

  @override
  String get devModeUnlocked => '🛠️ 開發者模式已解鎖';

  @override
  String get devUnlockAll => '解鎖全部配件';

  @override
  String get devClearLyricsCache => '清除歌詞快取';

  @override
  String get devRefetchLyrics => '重新取得全部歌詞…';

  @override
  String get devLyricsCleared => '歌詞快取已清除';

  @override
  String get devHideOptions => '隱藏開發者選項';

  @override
  String get devModeOff => '開發者模式已關閉';

  @override
  String get youCantReadFolders => '無法讀取你的音樂資料夾';

  @override
  String get youNoMusicFolders => '找不到音樂資料夾';
}
