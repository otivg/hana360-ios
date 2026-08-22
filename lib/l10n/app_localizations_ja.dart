// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => '言語';

  @override
  String get languageFollowSystem => 'システムに従う';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Baseus × Hanamimi';

  @override
  String get commonCancel => 'キャンセル';

  @override
  String get commonConfirm => 'OK';

  @override
  String get commonBack => '戻る';

  @override
  String get commonDone => '完了';

  @override
  String get commonUnknown => '不明';

  @override
  String get secUpmix => 'アップミックスエンジン';

  @override
  String get spatialAudioTitle => '360 空間オーディオ';

  @override
  String get npNothingPlaying => '再生中の曲はありません';

  @override
  String get npPickSong => 'ライブラリから曲を選んでください';

  @override
  String get npSpatialSettings => '360 設定';

  @override
  String get npLyrics => '歌詞';

  @override
  String get libSearchHint => '音楽を検索…';

  @override
  String get libClearLibrary => 'ライブラリを空にする';

  @override
  String get libImportMusic => '音楽をインポート';

  @override
  String libError(String error) {
    return 'エラーが発生しました: $error';
  }

  @override
  String libNoMatch(String query) {
    return '\"$query\" に一致するものはありません';
  }

  @override
  String get libPermissionDenied =>
      'Hana360 が音楽を見つけるには権限が必要です\nこの端末でアクセス不可？代わりにインポート。';

  @override
  String get libNoSongs => 'この端末に曲が見つかりません\nファイルから音楽をインポートして始めましょう';

  @override
  String get libGrantAccess => 'アクセスを許可';

  @override
  String get libRescan => '再スキャン';

  @override
  String get libAddedToQueue => 'キューに追加しました';

  @override
  String get libNoAlbums => 'アルバムがまだありません';

  @override
  String get libNoFolders => 'フォルダがまだありません';

  @override
  String get libNoPlaylists => 'プレイリストがまだありません';

  @override
  String libPlaylistCreated(String name) {
    return 'プレイリスト \"$name\" を作成しました 🌸';
  }

  @override
  String get libFolderHint => 'フォルダを長押しするとプレイリストになります';

  @override
  String libSongCount(int count) {
    return '$count 曲';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count 曲 · $path';
  }

  @override
  String get homeGreetingLate => '夜更かし中 ♪';

  @override
  String get homeGreetingMorning => 'おはようございます ♪';

  @override
  String get homeGreetingAfternoon => 'こんにちは ♪';

  @override
  String get homeGreetingEvening => 'こんばんは ♪';

  @override
  String get homeJumpBackIn => '続きから';

  @override
  String get homeForYou => 'あなたへのおすすめ';

  @override
  String get homeForYouSub => 'この端末で、あなたの視聴履歴から選びました';

  @override
  String get homeWelcome => 'Hana360 へようこそ 🌸';

  @override
  String get homeAllQuiet => '静かなひととき 🌸';

  @override
  String get homeLibraryHint =>
      '音楽はライブラリタブにあります — フォルダを追加してください。再生した曲はここに集まります。';

  @override
  String get homePlayHint => '何か再生すると、次回ここで待っています。';

  @override
  String get youRescanLibrary => 'ライブラリを再スキャン';

  @override
  String get youExcludedFolders => '除外したフォルダ';

  @override
  String get youExcludedFoldersSub => 'ライブラリからフォルダを隠す';

  @override
  String get youCatMode => 'キャットモード';

  @override
  String get youAbout => 'このアプリについて';

  @override
  String get youScanning => '音楽をスキャン中…';

  @override
  String get youOpenSource => 'オープンソース';

  @override
  String get youOpenSourceSub =>
      'Hana360 は ShaptakNaskar の Hanamimi (GPLv3) の派生作品 — 2026-08-10 変更';

  @override
  String get youCheckUpdates => 'アップデートを確認';

  @override
  String get youCheckUpdatesSub => '新ビルドは GitHub Releases に公開';

  @override
  String get youUpToDate => '最新版です 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Made by Sappy';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'バックグラウンドで再生を続ける';

  @override
  String get youKeepPlayingAllowed => '許可済み — システムは音楽を一時停止しません';

  @override
  String get youKeepPlayingTap => 'タップしてシステムによる再生停止を防ぐ';

  @override
  String get youExcludedFoldersTitle => '除外したフォルダ';

  @override
  String get youExcludedFoldersDesc => 'オフにしたフォルダ内の曲はライブラリから除外されます';

  @override
  String get youVisSensitivity => 'ビジュアライザ感度';

  @override
  String get youVisSensitivitySub => '動きが弱い曲では上げる';

  @override
  String get youNerdMode => 'オタクモード';

  @override
  String get youNerdModeSub => '再生中画面にコーデック・ビットレート・出力を表示';

  @override
  String get youEqualizer => 'イコライザ';

  @override
  String get youComingSoon => '近日公開';

  @override
  String get sleepTimer => 'スリープタイマー';

  @override
  String get sleep15 => '15 分';

  @override
  String get sleep30 => '30 分';

  @override
  String get sleep1h => '1 時間';

  @override
  String get sleepEndTrack => '曲の終わりで';

  @override
  String get sleepFading => 'フェードアウト中…おやすみなさい';

  @override
  String sleepIn(String time) {
    return '$time 後にスリープ';
  }

  @override
  String get sleepEndTrackActive => 'この曲が終わったらスリープ';

  @override
  String get sleepCancel => 'タイマーをキャンセル';

  @override
  String get queueUpNext => '次に再生';

  @override
  String get queueEmpty => 'キューは空です';

  @override
  String get updateAvailable => 'アップデートがあります ✨';

  @override
  String get updateNoNotes => 'リリースノートはありません。';

  @override
  String get updateInstalling => 'インストーラを開いています…';

  @override
  String get updateFailed => '更新できませんでした — 後でもう一度お試しください';

  @override
  String get updateLater => '後で';

  @override
  String get updateRetry => '再試行';

  @override
  String get updateNow => '更新';

  @override
  String get spatialToggleTitle => '360 空間オーディオ';

  @override
  String get spatialOn => 'オン';

  @override
  String get spatialOff => 'オフ';

  @override
  String get lyricsNoFound => '歌詞が見つかりません';

  @override
  String get lyricsJustListening => 'この曲はただ聴くためのものです';

  @override
  String get lyricsTrySource => '別のソースを試す';

  @override
  String get lyricsSource => '歌詞ソース';

  @override
  String get lyricsWordSynced => '単語同期';

  @override
  String get lyricsLineSynced => '行同期';

  @override
  String get lyricsUnsynced => '未同期';

  @override
  String get plNoPlaylists => 'プレイリストがまだありません — 先に作成してください！';

  @override
  String get plAddToPlaylist => 'プレイリストに追加';

  @override
  String plAddedTo(String name) {
    return '$name に追加しました';
  }

  @override
  String get shareLyrics => '歌詞を共有';

  @override
  String get shareMaxLines => '最大行数を選択しました';

  @override
  String sharePickLines(int count) {
    return '最大 $count 行を選択';
  }

  @override
  String get sharePickHint => '下から行を選択…';

  @override
  String get shareButton => '共有';

  @override
  String get batTitle => '音楽を流し続けよう 🎵';

  @override
  String get batBody =>
      'Android のバッテリー最適化により、画面オフ時に音楽が一時停止する場合があります。Hana360 を無制限で実行できるようにしてください。\n\n「You → バックグラウンドで再生を続ける」からいつでも変更できます。';

  @override
  String get batNotNow => '後で';

  @override
  String get batAllow => '許可';

  @override
  String get algoSwitch => 'アルゴリズム';

  @override
  String get speakerDistance => 'スピーカー距離';

  @override
  String get channelTrim => 'チャンネル調整';

  @override
  String get masterGain => 'マスターゲイン';

  @override
  String get secHrtf => 'HRTF カスタマイズ';

  @override
  String get outputGain => '出力ゲイン';

  @override
  String get secEq => '空間 EQ';

  @override
  String get secReverb => 'リバーブ';

  @override
  String get roomSize => '部屋';

  @override
  String get reverbGain => 'リバーブゲイン';

  @override
  String get secTracking => 'ヘッドトラッキング';

  @override
  String get trackOff => 'オフ';

  @override
  String get trackSensor => '端末センサー';

  @override
  String get trackManual => '手動 XY';

  @override
  String get dragHint => 'ドラッグして頭の向きを調整 (音場も連動)';

  @override
  String get customEq => 'カスタム';

  @override
  String get eqPresetMusic => '音楽';

  @override
  String get eqPresetCinema => 'シネマ';

  @override
  String get eqPresetGame => 'ゲーム';

  @override
  String get eqPresetVoice => 'ボイス';

  @override
  String get hrtfGroup0 => '男性 / 小 / 小';

  @override
  String get hrtfGroup1 => '男性 / 小 / 中';

  @override
  String get hrtfGroup2 => '男性 / 小 / 大';

  @override
  String get hrtfGroup3 => '男性 / 中 / 小';

  @override
  String get hrtfGroup4 => '男性 / 中 / 中';

  @override
  String get hrtfGroup5 => '男性 / 中 / 大';

  @override
  String get hrtfGroup6 => '男性 / 大 / 小';

  @override
  String get hrtfGroup7 => '男性 / 大 / 中';

  @override
  String get hrtfGroup8 => '男性 / 大 / 大';

  @override
  String get hrtfGroup9 => '女性 / 小 / 小';

  @override
  String get hrtfGroup10 => '女性 / 小 / 中';

  @override
  String get hrtfGroup11 => '女性 / 小 / 大';

  @override
  String get hrtfGroup12 => '女性 / 中 / 小';

  @override
  String get hrtfGroup13 => '女性 / 中 / 中';

  @override
  String get hrtfGroup14 => '女性 / 中 / 大';

  @override
  String get navHome => 'ホーム';

  @override
  String get navLibrary => 'ライブラリ';

  @override
  String get navPlaying => '再生中';

  @override
  String get navYou => 'あなた';

  @override
  String get tabSongs => '曲';

  @override
  String get tabAlbums => 'アルバム';

  @override
  String get tabFolders => 'フォルダ';

  @override
  String get tabPlaylists => 'プレイリスト';

  @override
  String get youMood => '気分';

  @override
  String get youCompanion => 'あなたの相棒';

  @override
  String get youBuddies => '仲間たち';

  @override
  String get youSound => 'サウンド';

  @override
  String get youMore => 'その他';

  @override
  String get themeCherryBlossom => '桜';

  @override
  String get themeStarryNight => '星空の夜';

  @override
  String get themeAdaptiveLight => 'アダプティブライト';

  @override
  String get themeAdaptiveDark => 'アダプティブダーク';

  @override
  String youListenedTogether(int h, int m) {
    return '一緒に $h時間 $m分 聴きました';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'ヘッダーと再生中画面';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'ライブラリのタイトルにとまる';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'ミニプレイヤーでお昼寝';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'お気に入りの上を歩く';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'ダークテーマで光る';

  @override
  String get accBow => 'ピンクのリボン';

  @override
  String get accHeadphones => '小さなヘッドホン';

  @override
  String get accFlower => 'お花';

  @override
  String get accCrown => '小さな王冠';

  @override
  String accUnlockLabel(int h) {
    return '$h時間聴くと解放';
  }

  @override
  String get youCrossfade => 'クロスフェード';

  @override
  String get youCrossfadeSub => '曲の終わりを次へなめらかにつなぐ';

  @override
  String get youSmartShuffle => 'スマートシャッフル';

  @override
  String get youSmartShuffleSub => 'お気に入りを多めにシャッフル — 端末内で計算';

  @override
  String get libLikedSongs => 'お気に入りの曲';

  @override
  String get libTapHeart => '曲のハートをタップするとここに残せます';

  @override
  String get libRemovedFromQueue => 'キューから削除しました';

  @override
  String get libRemovedFromLibrary => 'ライブラリから削除しました';

  @override
  String get libRemoveFromLibrary => 'ライブラリから削除';

  @override
  String get libNewPlaylist => '新しいプレイリスト';

  @override
  String get libPlaylistName => 'プレイリスト名';

  @override
  String get libCreate => '作成';

  @override
  String get libSwipeHint => '左スワイプで削除 · 長押しで並べ替え';

  @override
  String get libChooseCover => 'カバー画像を選択';

  @override
  String get libBackToArtCover => 'アルバムアートに戻す';

  @override
  String libDeleteConfirm(String name) {
    return '\"$name\" を削除しますか？';
  }

  @override
  String get libDeleteKeepSongs => '曲自体は端末に残ります';

  @override
  String get libKeep => '残す';

  @override
  String get libDelete => '削除';

  @override
  String get libRemoveKeepFile => 'ファイル自体は端末に残ります';

  @override
  String get libClearConfirm => 'すべてのファイルを削除しますか？';

  @override
  String get libLibraryCleared => 'ライブラリを空にしました';

  @override
  String get libPickAudioFiles => '音声ファイルを選択…';

  @override
  String get libImportFolder => 'フォルダをインポート';

  @override
  String get libScanWholeFolder => 'フォルダ全体をスキャン…（推奨）';

  @override
  String libImportFailed(String error) {
    return 'インポート失敗: $error';
  }

  @override
  String get libNoAudioFound => '音声ファイルが見つかりません';

  @override
  String libImportedCount(int count) {
    return '$count 曲をインポートしました';
  }

  @override
  String get libNothingHere => 'まだ何もありません — 左スワイプで削除、長押しで並べ替え';

  @override
  String get sidebarYourLibrary => 'あなたのライブラリ';

  @override
  String get sidebarPlaylists => 'プレイリスト';

  @override
  String get sidebarFolders => 'フォルダ';

  @override
  String get rowQueue => 'キュー';

  @override
  String get rowRemove => '削除';

  @override
  String get rowPlaylist => 'プレイリスト';

  @override
  String plTrackCount(int count) {
    return '$count トラック';
  }

  @override
  String get lyricsSourceAuto => '自動';

  @override
  String get lyricsSourceEmbedded => '埋め込み';

  @override
  String get lyricsSourceBestQuality => '利用可能な最高品質';

  @override
  String get lyricsSourceFileTags => '音声ファイル自身のタグから';

  @override
  String get lyricsSourceWordOnline => '単語同期（オンライン）';

  @override
  String get lyricsSourceLineOnline => '行同期（オンライン）';

  @override
  String get lyricsSourceNotFound => 'この曲では見つかりません';

  @override
  String get npCatModeUnlocked => 'ニャッ！キャットモード解除 🐱';

  @override
  String get shellResumePlayback => '再生を再開';

  @override
  String get shellPlay => '再生';

  @override
  String get devSection => '開発者';

  @override
  String get devModeUnlocked => '🛠️ 開発者モードを解除しました';

  @override
  String get devUnlockAll => 'すべてのアクセサリーを解除';

  @override
  String get devClearLyricsCache => '歌詞キャッシュをクリア';

  @override
  String get devRefetchLyrics => 'すべての歌詞を再取得…';

  @override
  String get devLyricsCleared => '歌詞キャッシュをクリアしました';

  @override
  String get devHideOptions => '開発者オプションを隠す';

  @override
  String get devModeOff => '開発者モードをオフにしました';

  @override
  String get youCantReadFolders => '音楽フォルダを読み取れません';

  @override
  String get youNoMusicFolders => '音楽フォルダが見つかりません';
}
