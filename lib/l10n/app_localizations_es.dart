// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'Idioma';

  @override
  String get languageFollowSystem => 'Seguir sistema';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Baseus × Hanamimi';

  @override
  String get commonCancel => 'Cancelar';

  @override
  String get commonConfirm => 'Aceptar';

  @override
  String get commonBack => 'Atrás';

  @override
  String get commonDone => 'Hecho';

  @override
  String get commonUnknown => 'Desconocido';

  @override
  String get secUpmix => 'Motor Upmix';

  @override
  String get spatialAudioTitle => 'Audio Espacial 360';

  @override
  String get npNothingPlaying => 'Nada reproduciéndose';

  @override
  String get npPickSong => 'Elige una canción de tu biblioteca';

  @override
  String get npSpatialSettings => 'Ajustes 360';

  @override
  String get npLyrics => 'Letras';

  @override
  String get libSearchHint => 'Busca tu música…';

  @override
  String get libClearLibrary => 'Vaciar biblioteca';

  @override
  String get libImportMusic => 'Importar música';

  @override
  String libError(String error) {
    return 'Algo salió mal: $error';
  }

  @override
  String libNoMatch(String query) {
    return 'Nada coincide con \"$query\"';
  }

  @override
  String get libPermissionDenied =>
      'Hana360 necesita permiso para encontrar tu música\n¿Sin acceso en este dispositivo? Importa.';

  @override
  String get libNoSongs =>
      'No se encontraron canciones en este dispositivo\nImporta música desde tus archivos';

  @override
  String get libGrantAccess => 'Conceder acceso';

  @override
  String get libRescan => 'Reescanear';

  @override
  String get libAddedToQueue => 'Añadido a la cola';

  @override
  String get libNoAlbums => 'Aún no hay álbumes';

  @override
  String get libNoFolders => 'Aún no hay carpetas';

  @override
  String get libNoPlaylists => 'Aún no hay listas de reproducción';

  @override
  String libPlaylistCreated(String name) {
    return 'Lista \"$name\" creada 🌸';
  }

  @override
  String get libFolderHint =>
      'mantén pulsada una carpeta para convertirla en lista';

  @override
  String libSongCount(int count) {
    return '$count canciones';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count canciones · $path';
  }

  @override
  String get homeGreetingLate => 'Despierto hasta tarde ♪';

  @override
  String get homeGreetingMorning => 'Buenos días ♪';

  @override
  String get homeGreetingAfternoon => 'Buenas tardes ♪';

  @override
  String get homeGreetingEvening => 'Buenas noches ♪';

  @override
  String get homeJumpBackIn => 'SEGUIR ESCUCHANDO';

  @override
  String get homeForYou => 'PARA TI';

  @override
  String get homeForYouSub => 'elegido en este dispositivo, según tu escucha';

  @override
  String get homeWelcome => 'Bienvenido a Hana360 🌸';

  @override
  String get homeAllQuiet => 'Todo en calma 🌸';

  @override
  String get homeLibraryHint =>
      'Tu música está en la pestaña Biblioteca — añade carpetas allí. Todo lo que reproduzcas se reunirá aquí.';

  @override
  String get homePlayHint =>
      'Reproduce algo y te esperará aquí la próxima vez.';

  @override
  String get youRescanLibrary => 'Reescanear biblioteca';

  @override
  String get youExcludedFolders => 'Carpetas excluidas';

  @override
  String get youExcludedFoldersSub => 'Ocultar carpetas de tu biblioteca';

  @override
  String get youCatMode => 'Modo Gato';

  @override
  String get youAbout => 'Acerca de';

  @override
  String get youScanning => 'Escaneando tu música…';

  @override
  String get youOpenSource => 'Código abierto';

  @override
  String get youOpenSourceSub =>
      'Hana360 es un derivado de Hanamimi (GPLv3) de ShaptakNaskar — modificado 2026-08-10';

  @override
  String get youCheckUpdates => 'Buscar actualizaciones';

  @override
  String get youCheckUpdatesSub => 'Nuevas versiones en GitHub Releases';

  @override
  String get youUpToDate => 'Estás al día 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Hecho por Sappy';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'Seguir reproduciendo en segundo plano';

  @override
  String get youKeepPlayingAllowed =>
      'Permitido — el sistema no pausará tu música';

  @override
  String get youKeepPlayingTap =>
      'Toca para evitar que el sistema detenga la reproducción';

  @override
  String get youExcludedFoldersTitle => 'Carpetas excluidas';

  @override
  String get youExcludedFoldersDesc =>
      'Las canciones en carpetas desactivadas se excluyen de tu biblioteca';

  @override
  String get youVisSensitivity => 'Sensibilidad del visualizador';

  @override
  String get youVisSensitivitySub => 'Sube para canciones que apenas lo mueven';

  @override
  String get youNerdMode => 'Modo nerd';

  @override
  String get youNerdModeSub =>
      'Mostrar códec, bitrate y salida en Reproduciendo';

  @override
  String get youEqualizer => 'Ecualizador';

  @override
  String get youComingSoon => 'Próximamente';

  @override
  String get sleepTimer => 'Temporizador de sueño';

  @override
  String get sleep15 => '15 minutos';

  @override
  String get sleep30 => '30 minutos';

  @override
  String get sleep1h => '1 hora';

  @override
  String get sleepEndTrack => 'Fin de la canción';

  @override
  String get sleepFading => 'Desvaneciendo… dulces sueños';

  @override
  String sleepIn(String time) {
    return 'Dormir en $time';
  }

  @override
  String get sleepEndTrackActive => 'Dormir cuando termine esta canción';

  @override
  String get sleepCancel => 'Cancelar temporizador';

  @override
  String get queueUpNext => 'A continuación';

  @override
  String get queueEmpty => 'La cola está vacía';

  @override
  String get updateAvailable => 'Actualización disponible ✨';

  @override
  String get updateNoNotes => 'Sin notas de versión.';

  @override
  String get updateInstalling => 'Abriendo instalador…';

  @override
  String get updateFailed => 'No se pudo actualizar — inténtalo más tarde';

  @override
  String get updateLater => 'Más tarde';

  @override
  String get updateRetry => 'Reintentar';

  @override
  String get updateNow => 'Actualizar';

  @override
  String get spatialToggleTitle => 'Audio Espacial 360';

  @override
  String get spatialOn => 'Activado';

  @override
  String get spatialOff => 'Desactivado';

  @override
  String get lyricsNoFound => 'No se encontraron letras';

  @override
  String get lyricsJustListening => 'Esta es solo para escuchar';

  @override
  String get lyricsTrySource => 'Probar otra fuente';

  @override
  String get lyricsSource => 'Fuente de letras';

  @override
  String get lyricsWordSynced => 'Sincronizada por palabra';

  @override
  String get lyricsLineSynced => 'Sincronizada por línea';

  @override
  String get lyricsUnsynced => 'Sin sincronizar';

  @override
  String get plNoPlaylists => 'Aún no hay listas — ¡crea una primero!';

  @override
  String get plAddToPlaylist => 'Añadir a lista';

  @override
  String plAddedTo(String name) {
    return 'Añadido a $name';
  }

  @override
  String get shareLyrics => 'Compartir letras';

  @override
  String get shareMaxLines => 'Líneas máximas seleccionadas';

  @override
  String sharePickLines(int count) {
    return 'Elige hasta $count líneas';
  }

  @override
  String get sharePickHint => 'Elige algunas líneas abajo…';

  @override
  String get shareButton => 'Compartir';

  @override
  String get batTitle => 'Sigue sonando la música 🎵';

  @override
  String get batBody =>
      'La optimización de batería de Android puede pausar tu música con la pantalla apagada. Permite que Hana360 se ejecute sin restricciones.\n\nPuedes cambiarlo en You → \"Seguir reproduciendo en segundo plano\".';

  @override
  String get batNotNow => 'Ahora no';

  @override
  String get batAllow => 'Permitir';

  @override
  String get algoSwitch => 'Algoritmo';

  @override
  String get speakerDistance => 'Distancia altavoz';

  @override
  String get channelTrim => 'Ajuste de canal';

  @override
  String get masterGain => 'Ganancia principal';

  @override
  String get secHrtf => 'Personalización HRTF';

  @override
  String get outputGain => 'Ganancia de salida';

  @override
  String get secEq => 'EQ Espacial';

  @override
  String get secReverb => 'Reverberación';

  @override
  String get roomSize => 'Sala';

  @override
  String get reverbGain => 'Ganancia de reverb';

  @override
  String get secTracking => 'Seguimiento de cabeza';

  @override
  String get trackOff => 'Apagado';

  @override
  String get trackSensor => 'Sensor del teléfono';

  @override
  String get trackManual => 'XY manual';

  @override
  String get dragHint =>
      'Arrastra para ajustar la orientación de la cabeza (el campo sigue)';

  @override
  String get customEq => 'Personalizado';

  @override
  String get eqPresetMusic => 'Música';

  @override
  String get eqPresetCinema => 'Cine';

  @override
  String get eqPresetGame => 'Juego';

  @override
  String get eqPresetVoice => 'Voz';

  @override
  String get hrtfGroup0 => 'Masculino / Pequeña / Pequeña';

  @override
  String get hrtfGroup1 => 'Masculino / Pequeña / Media';

  @override
  String get hrtfGroup2 => 'Masculino / Pequeña / Grande';

  @override
  String get hrtfGroup3 => 'Masculino / Media / Pequeña';

  @override
  String get hrtfGroup4 => 'Masculino / Media / Media';

  @override
  String get hrtfGroup5 => 'Masculino / Media / Grande';

  @override
  String get hrtfGroup6 => 'Masculino / Grande / Pequeña';

  @override
  String get hrtfGroup7 => 'Masculino / Grande / Media';

  @override
  String get hrtfGroup8 => 'Masculino / Grande / Grande';

  @override
  String get hrtfGroup9 => 'Femenino / Pequeña / Pequeña';

  @override
  String get hrtfGroup10 => 'Femenino / Pequeña / Media';

  @override
  String get hrtfGroup11 => 'Femenino / Pequeña / Grande';

  @override
  String get hrtfGroup12 => 'Femenino / Media / Pequeña';

  @override
  String get hrtfGroup13 => 'Femenino / Media / Media';

  @override
  String get hrtfGroup14 => 'Femenino / Media / Grande';

  @override
  String get navHome => 'Inicio';

  @override
  String get navLibrary => 'Biblioteca';

  @override
  String get navPlaying => 'Reproduciendo';

  @override
  String get navYou => 'Tú';

  @override
  String get tabSongs => 'Canciones';

  @override
  String get tabAlbums => 'Álbumes';

  @override
  String get tabFolders => 'Carpetas';

  @override
  String get tabPlaylists => 'Listas';

  @override
  String get youMood => 'ESTADO';

  @override
  String get youCompanion => 'TU COMPAÑERA';

  @override
  String get youBuddies => 'COMPAÑEROS';

  @override
  String get youSound => 'SONIDO';

  @override
  String get youMore => 'MÁS';

  @override
  String get themeCherryBlossom => 'Flor de cerezo';

  @override
  String get themeStarryNight => 'Noche estrellada';

  @override
  String get themeAdaptiveLight => 'Luz adaptable';

  @override
  String get themeAdaptiveDark => 'Oscuro adaptable';

  @override
  String youListenedTogether(int h, int m) {
    return '${h}h ${m}m escuchando juntos';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'Cabecera y Reproduciendo';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'Se posa en el título de Biblioteca';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'Duerme en el mini reproductor';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'Pasea sobre Me gusta';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'Brillan en los temas oscuros';

  @override
  String get accBow => 'Lazo rosa';

  @override
  String get accHeadphones => 'Auriculares pequeños';

  @override
  String get accFlower => 'Flor';

  @override
  String get accCrown => 'Corona pequeña';

  @override
  String accUnlockLabel(int h) {
    return 'Escucha $h horas';
  }

  @override
  String get youCrossfade => 'Fundido cruzado';

  @override
  String get youCrossfadeSub =>
      'Mezcla el final de una canción con la siguiente';

  @override
  String get youSmartShuffle => 'Aleatorio inteligente';

  @override
  String get youSmartShuffleSub =>
      'El aleatorio se inclina hacia tus favoritos — calculado en este dispositivo';

  @override
  String get libLikedSongs => 'Canciones que me gustan';

  @override
  String get libTapHeart =>
      'Toca el corazón de una canción para guardarla aquí';

  @override
  String get libRemovedFromQueue => 'Eliminada de la cola';

  @override
  String get libRemovedFromLibrary => 'Eliminada de la biblioteca';

  @override
  String get libRemoveFromLibrary => 'Quitar de la biblioteca';

  @override
  String get libNewPlaylist => 'Nueva lista';

  @override
  String get libPlaylistName => 'Nombre de la lista';

  @override
  String get libCreate => 'Crear';

  @override
  String get libSwipeHint =>
      'desliza a la izquierda para quitar · mantén para reordenar';

  @override
  String get libChooseCover => 'Elegir imagen de portada';

  @override
  String get libBackToArtCover => 'Volver a la portada del álbum';

  @override
  String libDeleteConfirm(String name) {
    return '¿Eliminar \"$name\"?';
  }

  @override
  String get libDeleteKeepSongs => 'Las canciones se quedan en tu dispositivo';

  @override
  String get libKeep => 'Conservar';

  @override
  String get libDelete => 'Eliminar';

  @override
  String get libRemoveKeepFile => 'El archivo se queda en tu dispositivo';

  @override
  String get libClearConfirm => '¿Quitar todos los archivos?';

  @override
  String get libLibraryCleared => 'Biblioteca vaciada';

  @override
  String get libPickAudioFiles => 'Elegir archivos de audio…';

  @override
  String get libImportFolder => 'Importar una carpeta';

  @override
  String get libScanWholeFolder =>
      'Escanear una carpeta completa… (recomendado)';

  @override
  String libImportFailed(String error) {
    return 'Error de importación: $error';
  }

  @override
  String get libNoAudioFound => 'No se encontraron archivos de audio';

  @override
  String libImportedCount(int count) {
    return '$count canciones importadas';
  }

  @override
  String get libNothingHere =>
      'Aún no hay nada — desliza a la izquierda para quitar, mantén para reordenar';

  @override
  String get sidebarYourLibrary => 'TU BIBLIOTECA';

  @override
  String get sidebarPlaylists => 'LISTAS';

  @override
  String get sidebarFolders => 'CARPETAS';

  @override
  String get rowQueue => 'Cola';

  @override
  String get rowRemove => 'Quitar';

  @override
  String get rowPlaylist => 'Lista';

  @override
  String plTrackCount(int count) {
    return '$count pistas';
  }

  @override
  String get lyricsSourceAuto => 'Auto';

  @override
  String get lyricsSourceEmbedded => 'Incrustada';

  @override
  String get lyricsSourceBestQuality => 'Mejor calidad disponible';

  @override
  String get lyricsSourceFileTags =>
      'De las etiquetas propias del archivo de audio';

  @override
  String get lyricsSourceWordOnline => 'Sincronizada por palabra (en línea)';

  @override
  String get lyricsSourceLineOnline => 'Sincronizada por línea (en línea)';

  @override
  String get lyricsSourceNotFound => 'No encontrada para esta canción';

  @override
  String get npCatModeUnlocked => '¡Miau! Modo Gato desbloqueado 🐱';

  @override
  String get shellResumePlayback => 'Reanudar reproducción';

  @override
  String get shellPlay => 'REPRODUCIR';

  @override
  String get devSection => 'DESARROLLADOR';

  @override
  String get devModeUnlocked => '🛠️ Modo desarrollador desbloqueado';

  @override
  String get devUnlockAll => 'Desbloquear todos los accesorios';

  @override
  String get devClearLyricsCache => 'Borrar caché de letras';

  @override
  String get devRefetchLyrics => 'Volver a buscar todas las letras…';

  @override
  String get devLyricsCleared => 'Caché de letras borrada';

  @override
  String get devHideOptions => 'Ocultar opciones de desarrollador';

  @override
  String get devModeOff => 'Modo desarrollador desactivado';

  @override
  String get youCantReadFolders => 'No se pudieron leer tus carpetas de música';

  @override
  String get youNoMusicFolders => 'No se encontraron carpetas de música';
}
