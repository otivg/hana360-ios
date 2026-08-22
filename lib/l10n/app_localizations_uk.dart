// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'Мова';

  @override
  String get languageFollowSystem => 'Слідувати за системою';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Hana360';

  @override
  String get commonCancel => 'Скасувати';

  @override
  String get commonConfirm => 'OK';

  @override
  String get commonBack => 'Назад';

  @override
  String get commonDone => 'Готово';

  @override
  String get commonUnknown => 'Невідомо';

  @override
  String get secUpmix => 'Двигун upmix';

  @override
  String get spatialAudioTitle => 'Просторовий звук 360°';

  @override
  String get npNothingPlaying => 'Поки нічого не відтворюється';

  @override
  String get npPickSong => 'Виберіть пісню зі своєї бібліотеки';

  @override
  String get npSpatialSettings => 'Налаштування 360°';

  @override
  String get npLyrics => 'Тексти';

  @override
  String get libSearchHint => 'Пошук у вашій музиці…';

  @override
  String get libClearLibrary => 'Очистити бібліотеку';

  @override
  String get libImportMusic => 'Імпортувати музику';

  @override
  String libError(String error) {
    return 'Щось пішло не так: $error';
  }

  @override
  String libNoMatch(String query) {
    return 'Нічого не відповідає \"$query\"';
  }

  @override
  String get libPermissionDenied =>
      'Hana360 потрібен дозвіл, щоб знайти вашу музику\nНемає доступу на цьому пристрої? Імпортуйте натомість.';

  @override
  String get libNoSongs =>
      'На цьому пристрої не знайдено пісень\nІмпортуйте музику зі своїх файлів, щоб почати';

  @override
  String get libGrantAccess => 'Надати доступ';

  @override
  String get libRescan => 'Сканувати знову';

  @override
  String get libAddedToQueue => 'Додано до черги';

  @override
  String get libNoAlbums => 'Поки немає альбомів';

  @override
  String get libNoFolders => 'Поки немає папок';

  @override
  String get libNoPlaylists => 'Поки немає списків відтворення';

  @override
  String libPlaylistCreated(String name) {
    return 'Список відтворення \"$name\" створено 🌸';
  }

  @override
  String get libFolderHint =>
      'довго натисніть папку, щоб перетворити її на список відтворення';

  @override
  String libSongCount(int count) {
    return '$count пісень';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count пісень · $path';
  }

  @override
  String get homeGreetingLate => 'Не спите допізна ♪';

  @override
  String get homeGreetingMorning => 'Доброго ранку ♪';

  @override
  String get homeGreetingAfternoon => 'Доброго дня ♪';

  @override
  String get homeGreetingEvening => 'Доброго вечора ♪';

  @override
  String get homeJumpBackIn => 'ПРОДОВЖИТИ';

  @override
  String get homeForYou => 'ДЛЯ ВАС';

  @override
  String get homeForYouSub =>
      'вибрано на цьому пристрої на основі вашого прослуховування';

  @override
  String get homeWelcome => 'Ласкаво просимо до Hana360 🌸';

  @override
  String get homeAllQuiet => 'Все тихо 🌸';

  @override
  String get homeLibraryHint =>
      'Ваша музика живе на вкладці «Бібліотека» — додайте туди папки. Все, що ви відтворюєте, збирається тут.';

  @override
  String get homePlayHint =>
      'Відтворіть щось, і наступного разу воно чекатиме тут.';

  @override
  String get youRescanLibrary => 'Сканувати бібліотеку знову';

  @override
  String get youExcludedFolders => 'Виключені папки';

  @override
  String get youExcludedFoldersSub => 'Сховати папки з бібліотеки';

  @override
  String get youCatMode => 'Котячий режим';

  @override
  String get youAbout => 'Про застосунок';

  @override
  String get youScanning => 'Сканування вашої музики…';

  @override
  String get youOpenSource => 'Open Source';

  @override
  String get youOpenSourceSub =>
      'Hana360 є похідним від Hanamimi (GPLv3) авторства ShaptakNaskar — змінено 2026-08-10';

  @override
  String get youCheckUpdates => 'Перевірити оновлення';

  @override
  String get youCheckUpdatesSub =>
      'Нові збірки з\'являються на GitHub Releases';

  @override
  String get youUpToDate => 'У вас актуальна версія 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Створено Sappy';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'Продовжити відтворення у фоні';

  @override
  String get youKeepPlayingAllowed =>
      'Дозволено — система не ставитиме вашу музику на паузу';

  @override
  String get youKeepPlayingTap =>
      'Торкніться, щоб система не зупиняла відтворення';

  @override
  String get youExcludedFoldersTitle => 'Виключені папки';

  @override
  String get youExcludedFoldersDesc =>
      'Пісні у вимкнених папках виключаються з бібліотеки';

  @override
  String get youVisSensitivity => 'Чутливість візуалізатора';

  @override
  String get youVisSensitivitySub =>
      'Збільште для пісень, які ледь його рухають';

  @override
  String get youNerdMode => 'Режим ботана';

  @override
  String get youNerdModeSub =>
      'Показати кодек, бітрейт і аудіовихід на екрані «Зараз грає»';

  @override
  String get youEqualizer => 'Еквалайзер';

  @override
  String get youComingSoon => 'Скоро';

  @override
  String get sleepTimer => 'Таймер сну';

  @override
  String get sleep15 => '15 хвилин';

  @override
  String get sleep30 => '30 хвилин';

  @override
  String get sleep1h => '1 година';

  @override
  String get sleepEndTrack => 'Кінець пісні';

  @override
  String get sleepFading => 'Затухання… солодких снів';

  @override
  String sleepIn(String time) {
    return 'Сон через $time';
  }

  @override
  String get sleepEndTrackActive => 'Сон, коли закінчиться ця пісня';

  @override
  String get sleepCancel => 'Скасувати таймер';

  @override
  String get queueUpNext => 'Далі';

  @override
  String get queueEmpty => 'Черга порожня';

  @override
  String get updateAvailable => 'Доступне оновлення ✨';

  @override
  String get updateNoNotes => 'Немає нотаток про випуск.';

  @override
  String get updateInstalling => 'Відкриття інсталяції…';

  @override
  String get updateFailed => 'Не вдалося оновити — спробуйте пізніше';

  @override
  String get updateLater => 'Пізніше';

  @override
  String get updateRetry => 'Повторити';

  @override
  String get updateNow => 'Оновити';

  @override
  String get spatialToggleTitle => 'Просторовий звук 360°';

  @override
  String get spatialOn => 'Увімк.';

  @override
  String get spatialOff => 'Вимк.';

  @override
  String get lyricsNoFound => 'Текст не знайдено';

  @override
  String get lyricsJustListening => 'Ця пісня — лише для прослуховування';

  @override
  String get lyricsTrySource => 'Спробуйте інше джерело';

  @override
  String get lyricsSource => 'Джерело текстів';

  @override
  String get lyricsWordSynced => 'Синхронізовано по словах';

  @override
  String get lyricsLineSynced => 'Синхронізовано по рядках';

  @override
  String get lyricsUnsynced => 'Несинхронізовано';

  @override
  String get plNoPlaylists => 'Поки немає списків — спершу створіть один!';

  @override
  String get plAddToPlaylist => 'Додати до списку';

  @override
  String plAddedTo(String name) {
    return 'Додано до $name';
  }

  @override
  String get shareLyrics => 'Поділитися текстами';

  @override
  String get shareMaxLines => 'Вибрано максимальну кількість рядків';

  @override
  String sharePickLines(int count) {
    return 'Виберіть до $count рядків';
  }

  @override
  String get sharePickHint => 'Виберіть кілька рядків нижче…';

  @override
  String get shareButton => 'Поділитися';

  @override
  String get batTitle => 'Нехай музика продовжує грати 🎵';

  @override
  String get batBody =>
      'Оптимізація батареї Android може ставити музику на паузу, коли екран вимкнено. Дозвольте Hana360 працювати без обмежень, щоб відтворення залишалося стабільним.\n\nВи можете будь-коли змінити це у «Ви» → «Продовжити відтворення у фоні».';

  @override
  String get batNotNow => 'Не зараз';

  @override
  String get batAllow => 'Дозволити';

  @override
  String get algoSwitch => 'Алгоритм';

  @override
  String get speakerDistance => 'Відстань до динаміків';

  @override
  String get channelTrim => 'Підрізка каналів';

  @override
  String get masterGain => 'Головне підсилення';

  @override
  String get secHrtf => 'Персоналізація HRTF';

  @override
  String get outputGain => 'Вихідне підсилення';

  @override
  String get secEq => 'Просторовий EQ';

  @override
  String get secReverb => 'Реверберація';

  @override
  String get roomSize => 'Кімната';

  @override
  String get reverbGain => 'Підсилення реверберації';

  @override
  String get secTracking => 'Відстеження голови';

  @override
  String get trackOff => 'Вимк.';

  @override
  String get trackSensor => 'Датчик телефону';

  @override
  String get trackManual => 'Ручне XY';

  @override
  String get dragHint =>
      'Перетягніть, щоб налаштувати орієнтацію голови (звукове поле слідує)';

  @override
  String get customEq => 'Користувацький';

  @override
  String get eqPresetMusic => 'Музика';

  @override
  String get eqPresetCinema => 'Кіно';

  @override
  String get eqPresetGame => 'Гра';

  @override
  String get eqPresetVoice => 'Голос';

  @override
  String get hrtfGroup0 => 'Чоловік / Мала / Мала';

  @override
  String get hrtfGroup1 => 'Чоловік / Мала / Середня';

  @override
  String get hrtfGroup2 => 'Чоловік / Мала / Велика';

  @override
  String get hrtfGroup3 => 'Чоловік / Середня / Мала';

  @override
  String get hrtfGroup4 => 'Чоловік / Середня / Середня';

  @override
  String get hrtfGroup5 => 'Чоловік / Середня / Велика';

  @override
  String get hrtfGroup6 => 'Чоловік / Велика / Мала';

  @override
  String get hrtfGroup7 => 'Чоловік / Велика / Середня';

  @override
  String get hrtfGroup8 => 'Чоловік / Велика / Велика';

  @override
  String get hrtfGroup9 => 'Жінка / Мала / Мала';

  @override
  String get hrtfGroup10 => 'Жінка / Мала / Середня';

  @override
  String get hrtfGroup11 => 'Жінка / Мала / Велика';

  @override
  String get hrtfGroup12 => 'Жінка / Середня / Мала';

  @override
  String get hrtfGroup13 => 'Жінка / Середня / Середня';

  @override
  String get hrtfGroup14 => 'Жінка / Середня / Велика';

  @override
  String get navHome => 'Головна';

  @override
  String get navLibrary => 'Бібліотека';

  @override
  String get navPlaying => 'Відтворення';

  @override
  String get navYou => 'Ви';

  @override
  String get tabSongs => 'Пісні';

  @override
  String get tabAlbums => 'Альбоми';

  @override
  String get tabFolders => 'Папки';

  @override
  String get tabPlaylists => 'Списки';

  @override
  String get youMood => 'НАСТРІЙ';

  @override
  String get youCompanion => 'ВАШ КОМПАНЬЙОН';

  @override
  String get youBuddies => 'ДРУЗІ';

  @override
  String get youSound => 'ЗВУК';

  @override
  String get youMore => 'БІЛЬШЕ';

  @override
  String get themeCherryBlossom => 'Цвіт сакури';

  @override
  String get themeStarryNight => 'Зоряна ніч';

  @override
  String get themeAdaptiveLight => 'Адаптивна світла';

  @override
  String get themeAdaptiveDark => 'Адаптивна темна';

  @override
  String youListenedTogether(int h, int m) {
    return '$h год $m хв прослухано разом';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'Заголовок і «Зараз грає»';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'Сидить на заголовку бібліотеки';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'Дрімає на міні-плеєрі';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'Походжає над вподобаними піснями';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'Сяють на темних темах';

  @override
  String get accBow => 'Рожевий бант';

  @override
  String get accHeadphones => 'Крихітні навушники';

  @override
  String get accFlower => 'Квітка';

  @override
  String get accCrown => 'Маленька корона';

  @override
  String accUnlockLabel(int h) {
    return 'Слухайте $h годин';
  }

  @override
  String get youCrossfade => 'Кросфейд';

  @override
  String get youCrossfadeSub => 'Змішуйте кінець пісні з наступною';

  @override
  String get youSmartShuffle => 'Розумне перемішування';

  @override
  String get youSmartShuffleSub =>
      'Перемішування тяжіє до ваших улюблених — обчислюється на цьому пристрої';

  @override
  String get libLikedSongs => 'Вподобані пісні';

  @override
  String get libTapHeart => 'Торкніться сердечка на пісні, щоб зберегти її тут';

  @override
  String get libRemovedFromQueue => 'Видалено з черги';

  @override
  String get libRemovedFromLibrary => 'Видалено з бібліотеки';

  @override
  String get libRemoveFromLibrary => 'Видалити з бібліотеки';

  @override
  String get libNewPlaylist => 'Новий список';

  @override
  String get libPlaylistName => 'Назва списку';

  @override
  String get libCreate => 'Створити';

  @override
  String get libSwipeHint =>
      'проведіть ліворуч, щоб видалити · утримуйте, щоб переставити';

  @override
  String get libChooseCover => 'Вибрати зображення обкладинки';

  @override
  String get libBackToArtCover => 'Назад до обкладинки пісні';

  @override
  String libDeleteConfirm(String name) {
    return 'Видалити \"$name\"?';
  }

  @override
  String get libDeleteKeepSongs => 'Самі пісні залишаться на вашому пристрої';

  @override
  String get libKeep => 'Зберегти';

  @override
  String get libDelete => 'Видалити';

  @override
  String get libRemoveKeepFile => 'Сам файл залишиться на вашому пристрої';

  @override
  String get libClearConfirm => 'Видалити всі файли?';

  @override
  String get libLibraryCleared => 'Бібліотеку очищено';

  @override
  String get libPickAudioFiles => 'Вибрати аудіофайли…';

  @override
  String get libImportFolder => 'Імпортувати папку';

  @override
  String get libScanWholeFolder => 'Сканувати всю папку… (рекомендовано)';

  @override
  String libImportFailed(String error) {
    return 'Імпорт не вдався: $error';
  }

  @override
  String get libNoAudioFound => 'Аудіофайли не знайдено';

  @override
  String libImportedCount(int count) {
    return 'Імпортовано $count пісень';
  }

  @override
  String get libNothingHere =>
      'Тут поки нічого немає — проведіть ліворуч, щоб видалити, утримуйте, щоб переставити';

  @override
  String get sidebarYourLibrary => 'ВАША БІБЛІОТЕКА';

  @override
  String get sidebarPlaylists => 'СПИСКИ ВІДТВОРЕННЯ';

  @override
  String get sidebarFolders => 'ПАПКИ';

  @override
  String get rowQueue => 'Черга';

  @override
  String get rowRemove => 'Видалити';

  @override
  String get rowPlaylist => 'Список';

  @override
  String plTrackCount(int count) {
    return '$count доріжок';
  }

  @override
  String get lyricsSourceAuto => 'Авто';

  @override
  String get lyricsSourceEmbedded => 'Вбудовані';

  @override
  String get lyricsSourceBestQuality => 'Найкраща доступна якість';

  @override
  String get lyricsSourceFileTags => 'З власних тегів аудіофайлу';

  @override
  String get lyricsSourceWordOnline => 'Синхронізовано по словах (онлайн)';

  @override
  String get lyricsSourceLineOnline => 'Синхронізовано по рядках (онлайн)';

  @override
  String get lyricsSourceNotFound => 'Не знайдено для цієї пісні';

  @override
  String get npCatModeUnlocked => 'Няв?! Котячий режим розблоковано 🐱';

  @override
  String get shellResumePlayback => 'Продовжити відтворення';

  @override
  String get shellPlay => 'ВІДТВОРИТИ';

  @override
  String get devSection => 'РОЗРОБНИК';

  @override
  String get devModeUnlocked => '🛠️ Режим розробника розблоковано';

  @override
  String get devUnlockAll => 'Розблокувати всі аксесуари';

  @override
  String get devClearLyricsCache => 'Очистити кеш текстів';

  @override
  String get devRefetchLyrics => 'Повторно отримати всі тексти…';

  @override
  String get devLyricsCleared => 'Кеш текстів очищено';

  @override
  String get devHideOptions => 'Сховати параметри розробника';

  @override
  String get devModeOff => 'Режим розробника вимкнено';

  @override
  String get youCantReadFolders => 'Не вдалося прочитати ваші музичні папки';

  @override
  String get youNoMusicFolders => 'Музичних папок не знайдено';
}
