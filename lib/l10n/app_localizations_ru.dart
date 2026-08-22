// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'Язык';

  @override
  String get languageFollowSystem => 'Как в системе';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Baseus × Hanamimi';

  @override
  String get commonCancel => 'Отмена';

  @override
  String get commonConfirm => 'ОК';

  @override
  String get commonBack => 'Назад';

  @override
  String get commonDone => 'Готово';

  @override
  String get commonUnknown => 'Неизвестно';

  @override
  String get secUpmix => 'Движок Upmix';

  @override
  String get spatialAudioTitle => 'Пространственный звук 360';

  @override
  String get npNothingPlaying => 'Ничего не играет';

  @override
  String get npPickSong => 'Выберите песню из вашей библиотеки';

  @override
  String get npSpatialSettings => 'Настройки 360';

  @override
  String get npLyrics => 'Текст';

  @override
  String get libSearchHint => 'Поиск музыки…';

  @override
  String get libClearLibrary => 'Очистить библиотеку';

  @override
  String get libImportMusic => 'Импортировать музыку';

  @override
  String libError(String error) {
    return 'Что-то пошло не так: $error';
  }

  @override
  String libNoMatch(String query) {
    return 'Ничего не найдено по запросу \"$query\"';
  }

  @override
  String get libPermissionDenied =>
      'Hana360 нужен доступ, чтобы найти вашу музыку\nНет доступа на этом устройстве? Импортируйте.';

  @override
  String get libNoSongs =>
      'На этом устройстве не найдено песен\nИмпортируйте музыку из файлов';

  @override
  String get libGrantAccess => 'Разрешить доступ';

  @override
  String get libRescan => 'Пересканировать';

  @override
  String get libAddedToQueue => 'Добавлено в очередь';

  @override
  String get libNoAlbums => 'Пока нет альбомов';

  @override
  String get libNoFolders => 'Пока нет папок';

  @override
  String get libNoPlaylists => 'Пока нет плейлистов';

  @override
  String libPlaylistCreated(String name) {
    return 'Плейлист \"$name\" создан 🌸';
  }

  @override
  String get libFolderHint =>
      'долгое нажатие на папку превращает её в плейлист';

  @override
  String libSongCount(int count) {
    return '$count песен';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count песен · $path';
  }

  @override
  String get homeGreetingLate => 'Не спите? ♪';

  @override
  String get homeGreetingMorning => 'Доброе утро ♪';

  @override
  String get homeGreetingAfternoon => 'Добрый день ♪';

  @override
  String get homeGreetingEvening => 'Добрый вечер ♪';

  @override
  String get homeJumpBackIn => 'ПРОДОЛЖИТЬ';

  @override
  String get homeForYou => 'ДЛЯ ВАС';

  @override
  String get homeForYouSub =>
      'выбрано на этом устройстве, по вашему прослушиванию';

  @override
  String get homeWelcome => 'Добро пожаловать в Hana360 🌸';

  @override
  String get homeAllQuiet => 'Всё тихо 🌸';

  @override
  String get homeLibraryHint =>
      'Ваша музыка во вкладке «Библиотека» — добавьте туда папки. Всё, что вы слушаете, собирается здесь.';

  @override
  String get homePlayHint =>
      'Включите что-нибудь — и оно будет ждать вас здесь в следующий раз.';

  @override
  String get youRescanLibrary => 'Пересканировать библиотеку';

  @override
  String get youExcludedFolders => 'Исключённые папки';

  @override
  String get youExcludedFoldersSub => 'Скрыть папки из библиотеки';

  @override
  String get youCatMode => 'Кошачий режим';

  @override
  String get youAbout => 'О приложении';

  @override
  String get youScanning => 'Сканирование музыки…';

  @override
  String get youOpenSource => 'Открытый код';

  @override
  String get youOpenSourceSub =>
      'Hana360 — производная от Hanamimi (GPLv3) от ShaptakNaskar — изменено 2026-08-10';

  @override
  String get youCheckUpdates => 'Проверить обновления';

  @override
  String get youCheckUpdatesSub => 'Новые сборки выходят на GitHub Releases';

  @override
  String get youUpToDate => 'У вас последняя версия 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Создано Sappy';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'Продолжать фоновое воспроизведение';

  @override
  String get youKeepPlayingAllowed => 'Разрешено — система не остановит музыку';

  @override
  String get youKeepPlayingTap =>
      'Нажмите, чтобы система не останавливала воспроизведение';

  @override
  String get youExcludedFoldersTitle => 'Исключённые папки';

  @override
  String get youExcludedFoldersDesc =>
      'Песни из отключённых папок исключаются из библиотеки';

  @override
  String get youVisSensitivity => 'Чувствительность визуализатора';

  @override
  String get youVisSensitivitySub =>
      'Увеличьте для песен, которые почти его не двигают';

  @override
  String get youNerdMode => 'Режим гика';

  @override
  String get youNerdModeSub =>
      'Показывать кодек, битрейт и выход на экране воспроизведения';

  @override
  String get youEqualizer => 'Эквалайзер';

  @override
  String get youComingSoon => 'Скоро';

  @override
  String get sleepTimer => 'Таймер сна';

  @override
  String get sleep15 => '15 минут';

  @override
  String get sleep30 => '30 минут';

  @override
  String get sleep1h => '1 час';

  @override
  String get sleepEndTrack => 'Конец песни';

  @override
  String get sleepFading => 'Затухание… приятных снов';

  @override
  String sleepIn(String time) {
    return 'Сон через $time';
  }

  @override
  String get sleepEndTrackActive => 'Сон, когда эта песня закончится';

  @override
  String get sleepCancel => 'Отменить таймер';

  @override
  String get queueUpNext => 'Далее';

  @override
  String get queueEmpty => 'Очередь пуста';

  @override
  String get updateAvailable => 'Доступно обновление ✨';

  @override
  String get updateNoNotes => 'Нет примечаний к выпуску.';

  @override
  String get updateInstalling => 'Открытие установщика…';

  @override
  String get updateFailed => 'Не удалось обновить — попробуйте позже';

  @override
  String get updateLater => 'Позже';

  @override
  String get updateRetry => 'Повторить';

  @override
  String get updateNow => 'Обновить';

  @override
  String get spatialToggleTitle => 'Пространственный звук 360';

  @override
  String get spatialOn => 'Вкл';

  @override
  String get spatialOff => 'Выкл';

  @override
  String get lyricsNoFound => 'Текст не найден';

  @override
  String get lyricsJustListening => 'Эту песню просто слушают';

  @override
  String get lyricsTrySource => 'Попробовать другой источник';

  @override
  String get lyricsSource => 'Источник текста';

  @override
  String get lyricsWordSynced => 'Синхронизация по словам';

  @override
  String get lyricsLineSynced => 'Синхронизация по строкам';

  @override
  String get lyricsUnsynced => 'Без синхронизации';

  @override
  String get plNoPlaylists => 'Пока нет плейлистов — сначала создайте!';

  @override
  String get plAddToPlaylist => 'Добавить в плейлист';

  @override
  String plAddedTo(String name) {
    return 'Добавлено в $name';
  }

  @override
  String get shareLyrics => 'Поделиться текстом';

  @override
  String get shareMaxLines => 'Выбрано максимальное число строк';

  @override
  String sharePickLines(int count) {
    return 'Выберите до $count строк';
  }

  @override
  String get sharePickHint => 'Выберите несколько строк ниже…';

  @override
  String get shareButton => 'Поделиться';

  @override
  String get batTitle => 'Пусть музыка играет 🎵';

  @override
  String get batBody =>
      'Оптимизация батареи Android может останавливать музыку при выключенном экране. Разрешите Hana360 работать без ограничений.\n\nЭто можно изменить в You → «Продолжать фоновое воспроизведение».';

  @override
  String get batNotNow => 'Не сейчас';

  @override
  String get batAllow => 'Разрешить';

  @override
  String get algoSwitch => 'Алгоритм';

  @override
  String get speakerDistance => 'Расстояние до колонок';

  @override
  String get channelTrim => 'Баланс каналов';

  @override
  String get masterGain => 'Основное усиление';

  @override
  String get secHrtf => 'Персонализация HRTF';

  @override
  String get outputGain => 'Выходное усиление';

  @override
  String get secEq => 'Пространственный EQ';

  @override
  String get secReverb => 'Реверберация';

  @override
  String get roomSize => 'Комната';

  @override
  String get reverbGain => 'Усиление реверберации';

  @override
  String get secTracking => 'Отслеживание головы';

  @override
  String get trackOff => 'Выкл';

  @override
  String get trackSensor => 'Датчик телефона';

  @override
  String get trackManual => 'Ручной XY';

  @override
  String get dragHint =>
      'Потяните, чтобы настроить ориентацию головы (поле следует)';

  @override
  String get customEq => 'Свой';

  @override
  String get eqPresetMusic => 'Музыка';

  @override
  String get eqPresetCinema => 'Кино';

  @override
  String get eqPresetGame => 'Игры';

  @override
  String get eqPresetVoice => 'Голос';

  @override
  String get hrtfGroup0 => 'Муж. / Малая / Малая';

  @override
  String get hrtfGroup1 => 'Муж. / Малая / Средняя';

  @override
  String get hrtfGroup2 => 'Муж. / Малая / Большая';

  @override
  String get hrtfGroup3 => 'Муж. / Средняя / Малая';

  @override
  String get hrtfGroup4 => 'Муж. / Средняя / Средняя';

  @override
  String get hrtfGroup5 => 'Муж. / Средняя / Большая';

  @override
  String get hrtfGroup6 => 'Муж. / Большая / Малая';

  @override
  String get hrtfGroup7 => 'Муж. / Большая / Средняя';

  @override
  String get hrtfGroup8 => 'Муж. / Большая / Большая';

  @override
  String get hrtfGroup9 => 'Жен. / Малая / Малая';

  @override
  String get hrtfGroup10 => 'Жен. / Малая / Средняя';

  @override
  String get hrtfGroup11 => 'Жен. / Малая / Большая';

  @override
  String get hrtfGroup12 => 'Жен. / Средняя / Малая';

  @override
  String get hrtfGroup13 => 'Жен. / Средняя / Средняя';

  @override
  String get hrtfGroup14 => 'Жен. / Средняя / Большая';

  @override
  String get navHome => 'Главная';

  @override
  String get navLibrary => 'Библиотека';

  @override
  String get navPlaying => 'Воспроизведение';

  @override
  String get navYou => 'Вы';

  @override
  String get tabSongs => 'Песни';

  @override
  String get tabAlbums => 'Альбомы';

  @override
  String get tabFolders => 'Папки';

  @override
  String get tabPlaylists => 'Плейлисты';

  @override
  String get youMood => 'НАСТРОЕНИЕ';

  @override
  String get youCompanion => 'ВАША СПУТНИЦА';

  @override
  String get youBuddies => 'ДРУЗЬЯ';

  @override
  String get youSound => 'ЗВУК';

  @override
  String get youMore => 'ЕЩЁ';

  @override
  String get themeCherryBlossom => 'Цветение сакуры';

  @override
  String get themeStarryNight => 'Звёздная ночь';

  @override
  String get themeAdaptiveLight => 'Адаптивная светлая';

  @override
  String get themeAdaptiveDark => 'Адаптивная тёмная';

  @override
  String youListenedTogether(int h, int m) {
    return '$h ч $m мин слушали вместе';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'Шапка и экран воспроизведения';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'Сидит на заголовке библиотеки';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'Дремлет на мини-плеере';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'Расхаживает по любимым';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'Светятся на тёмных темах';

  @override
  String get accBow => 'Розовый бант';

  @override
  String get accHeadphones => 'Крошечные наушники';

  @override
  String get accFlower => 'Цветок';

  @override
  String get accCrown => 'Крошечная корона';

  @override
  String accUnlockLabel(int h) {
    return 'Слушайте $h часов';
  }

  @override
  String get youCrossfade => 'Кроссфейд';

  @override
  String get youCrossfadeSub => 'Плавно смешать конец песни со следующей';

  @override
  String get youSmartShuffle => 'Умное перемешивание';

  @override
  String get youSmartShuffleSub =>
      'Перемешивание отдаёт предпочтение любимому — вычисляется на устройстве';

  @override
  String get libLikedSongs => 'Любимые песни';

  @override
  String get libTapHeart =>
      'Нажмите на сердечко песни, чтобы оставить её здесь';

  @override
  String get libRemovedFromQueue => 'Удалено из очереди';

  @override
  String get libRemovedFromLibrary => 'Удалено из библиотеки';

  @override
  String get libRemoveFromLibrary => 'Убрать из библиотеки';

  @override
  String get libNewPlaylist => 'Новый плейлист';

  @override
  String get libPlaylistName => 'Название плейлиста';

  @override
  String get libCreate => 'Создать';

  @override
  String get libSwipeHint =>
      'смахните влево, чтобы убрать · удерживайте для сортировки';

  @override
  String get libChooseCover => 'Выбрать изображение обложки';

  @override
  String get libBackToArtCover => 'Вернуться к обложке альбома';

  @override
  String libDeleteConfirm(String name) {
    return 'Удалить \"$name\"?';
  }

  @override
  String get libDeleteKeepSongs => 'Сами песни останутся на устройстве';

  @override
  String get libKeep => 'Оставить';

  @override
  String get libDelete => 'Удалить';

  @override
  String get libRemoveKeepFile => 'Сам файл останется на устройстве';

  @override
  String get libClearConfirm => 'Убрать все файлы?';

  @override
  String get libLibraryCleared => 'Библиотека очищена';

  @override
  String get libPickAudioFiles => 'Выбрать аудиофайлы…';

  @override
  String get libImportFolder => 'Импортировать папку';

  @override
  String get libScanWholeFolder => 'Сканировать всю папку… (рекомендуется)';

  @override
  String libImportFailed(String error) {
    return 'Не удалось импортировать: $error';
  }

  @override
  String get libNoAudioFound => 'Аудиофайлы не найдены';

  @override
  String libImportedCount(int count) {
    return 'Импортировано $count песен';
  }

  @override
  String get libNothingHere =>
      'Пока пусто — смахните влево, чтобы убрать, удерживайте для сортировки';

  @override
  String get sidebarYourLibrary => 'ВАША БИБЛИОТЕКА';

  @override
  String get sidebarPlaylists => 'ПЛЕЙЛИСТЫ';

  @override
  String get sidebarFolders => 'ПАПКИ';

  @override
  String get rowQueue => 'Очередь';

  @override
  String get rowRemove => 'Убрать';

  @override
  String get rowPlaylist => 'Плейлист';

  @override
  String plTrackCount(int count) {
    return '$count треков';
  }

  @override
  String get lyricsSourceAuto => 'Авто';

  @override
  String get lyricsSourceEmbedded => 'Встроенный';

  @override
  String get lyricsSourceBestQuality => 'Лучшее доступное качество';

  @override
  String get lyricsSourceFileTags => 'Из тегов самого аудиофайла';

  @override
  String get lyricsSourceWordOnline => 'Синхронизация по словам (онлайн)';

  @override
  String get lyricsSourceLineOnline => 'Синхронизация по строкам (онлайн)';

  @override
  String get lyricsSourceNotFound => 'Для этой песни не найдено';

  @override
  String get npCatModeUnlocked => 'Мяу?! Кошачий режим разблокирован 🐱';

  @override
  String get shellResumePlayback => 'Продолжить воспроизведение';

  @override
  String get shellPlay => 'ИГРАТЬ';

  @override
  String get devSection => 'РАЗРАБОТЧИК';

  @override
  String get devModeUnlocked => '🛠️ Режим разработчика разблокирован';

  @override
  String get devUnlockAll => 'Разблокировать все аксессуары';

  @override
  String get devClearLyricsCache => 'Очистить кэш текстов';

  @override
  String get devRefetchLyrics => 'Перезагрузить все тексты…';

  @override
  String get devLyricsCleared => 'Кэш текстов очищен';

  @override
  String get devHideOptions => 'Скрыть параметры разработчика';

  @override
  String get devModeOff => 'Режим разработчика выключен';

  @override
  String get youCantReadFolders =>
      'Не удалось прочитать ваши музыкальные папки';

  @override
  String get youNoMusicFolders => 'Музыкальные папки не найдены';
}
