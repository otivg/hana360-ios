// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'Langue';

  @override
  String get languageFollowSystem => 'Suivre le système';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Baseus × Hanamimi';

  @override
  String get commonCancel => 'Annuler';

  @override
  String get commonConfirm => 'OK';

  @override
  String get commonBack => 'Retour';

  @override
  String get commonDone => 'Terminé';

  @override
  String get commonUnknown => 'Inconnu';

  @override
  String get secUpmix => 'Moteur Upmix';

  @override
  String get spatialAudioTitle => 'Audio Spatial 360';

  @override
  String get npNothingPlaying => 'Rien en lecture';

  @override
  String get npPickSong => 'Choisissez une chanson dans votre bibliothèque';

  @override
  String get npSpatialSettings => 'Réglages 360';

  @override
  String get npLyrics => 'Paroles';

  @override
  String get libSearchHint => 'Rechercher votre musique…';

  @override
  String get libClearLibrary => 'Vider la bibliothèque';

  @override
  String get libImportMusic => 'Importer de la musique';

  @override
  String libError(String error) {
    return 'Une erreur est survenue : $error';
  }

  @override
  String libNoMatch(String query) {
    return 'Rien ne correspond à \"$query\"';
  }

  @override
  String get libPermissionDenied =>
      'Hana360 a besoin d\'autorisation pour trouver votre musique\nPas d\'accès sur cet appareil ? Importez à la place.';

  @override
  String get libNoSongs =>
      'Aucune chanson trouvée sur cet appareil\nImportez de la musique depuis vos fichiers';

  @override
  String get libGrantAccess => 'Autoriser l\'accès';

  @override
  String get libRescan => 'Rescanner';

  @override
  String get libAddedToQueue => 'Ajouté à la file';

  @override
  String get libNoAlbums => 'Pas encore d\'albums';

  @override
  String get libNoFolders => 'Pas encore de dossiers';

  @override
  String get libNoPlaylists => 'Pas encore de playlists';

  @override
  String libPlaylistCreated(String name) {
    return 'Playlist \"$name\" créée 🌸';
  }

  @override
  String get libFolderHint =>
      'appui long sur un dossier pour en faire une playlist';

  @override
  String libSongCount(int count) {
    return '$count chansons';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count chansons · $path';
  }

  @override
  String get homeGreetingLate => 'Couché tard ♪';

  @override
  String get homeGreetingMorning => 'Bonjour ♪';

  @override
  String get homeGreetingAfternoon => 'Bon après-midi ♪';

  @override
  String get homeGreetingEvening => 'Bonsoir ♪';

  @override
  String get homeJumpBackIn => 'REPRENDRE';

  @override
  String get homeForYou => 'POUR VOUS';

  @override
  String get homeForYouSub => 'choisi sur cet appareil, selon votre écoute';

  @override
  String get homeWelcome => 'Bienvenue sur Hana360 🌸';

  @override
  String get homeAllQuiet => 'Tout est calme 🌸';

  @override
  String get homeLibraryHint =>
      'Votre musique est dans l\'onglet Bibliothèque — ajoutez des dossiers là-bas. Tout ce que vous écoutez se rassemble ici.';

  @override
  String get homePlayHint =>
      'Écoutez quelque chose et il vous attendra ici la prochaine fois.';

  @override
  String get youRescanLibrary => 'Rescanner la bibliothèque';

  @override
  String get youExcludedFolders => 'Dossiers exclus';

  @override
  String get youExcludedFoldersSub =>
      'Masquer les dossiers de votre bibliothèque';

  @override
  String get youCatMode => 'Mode Chat';

  @override
  String get youAbout => 'À propos';

  @override
  String get youScanning => 'Scan de votre musique…';

  @override
  String get youOpenSource => 'Open Source';

  @override
  String get youOpenSourceSub =>
      'Hana360 est un dérivé de Hanamimi (GPLv3) de ShaptakNaskar — modifié le 2026-08-10';

  @override
  String get youCheckUpdates => 'Vérifier les mises à jour';

  @override
  String get youCheckUpdatesSub =>
      'Les nouvelles versions arrivent sur GitHub Releases';

  @override
  String get youUpToDate => 'Vous êtes à jour 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Créé par Sappy';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'Continuer la lecture en arrière-plan';

  @override
  String get youKeepPlayingAllowed =>
      'Autorisé — le système ne mettra pas votre musique en pause';

  @override
  String get youKeepPlayingTap =>
      'Touchez pour empêcher le système de couper la lecture';

  @override
  String get youExcludedFoldersTitle => 'Dossiers exclus';

  @override
  String get youExcludedFoldersDesc =>
      'Les chansons des dossiers désactivés sont exclues de votre bibliothèque';

  @override
  String get youVisSensitivity => 'Sensibilité du visualiseur';

  @override
  String get youVisSensitivitySub =>
      'Augmentez pour les chansons qui le bougent à peine';

  @override
  String get youNerdMode => 'Mode nerd';

  @override
  String get youNerdModeSub =>
      'Afficher codec, débit et sortie sur l\'écran de lecture';

  @override
  String get youEqualizer => 'Égaliseur';

  @override
  String get youComingSoon => 'Bientôt';

  @override
  String get sleepTimer => 'Minuteur de sommeil';

  @override
  String get sleep15 => '15 minutes';

  @override
  String get sleep30 => '30 minutes';

  @override
  String get sleep1h => '1 heure';

  @override
  String get sleepEndTrack => 'Fin de la chanson';

  @override
  String get sleepFading => 'Fondu… doux rêves';

  @override
  String sleepIn(String time) {
    return 'Dormir dans $time';
  }

  @override
  String get sleepEndTrackActive => 'Dormir quand cette chanson se termine';

  @override
  String get sleepCancel => 'Annuler le minuteur';

  @override
  String get queueUpNext => 'À suivre';

  @override
  String get queueEmpty => 'La file est vide';

  @override
  String get updateAvailable => 'Mise à jour disponible ✨';

  @override
  String get updateNoNotes => 'Aucune note de version.';

  @override
  String get updateInstalling => 'Ouverture de l\'installeur…';

  @override
  String get updateFailed =>
      'Impossible de mettre à jour — réessayez plus tard';

  @override
  String get updateLater => 'Plus tard';

  @override
  String get updateRetry => 'Réessayer';

  @override
  String get updateNow => 'Mettre à jour';

  @override
  String get spatialToggleTitle => 'Audio Spatial 360';

  @override
  String get spatialOn => 'Activé';

  @override
  String get spatialOff => 'Désactivé';

  @override
  String get lyricsNoFound => 'Aucune parole trouvée';

  @override
  String get lyricsJustListening => 'Celle-ci est juste à écouter';

  @override
  String get lyricsTrySource => 'Essayer une autre source';

  @override
  String get lyricsSource => 'Source des paroles';

  @override
  String get lyricsWordSynced => 'Synchronisé mot à mot';

  @override
  String get lyricsLineSynced => 'Synchronisé ligne à ligne';

  @override
  String get lyricsUnsynced => 'Non synchronisé';

  @override
  String get plNoPlaylists =>
      'Pas encore de playlists — créez-en une d\'abord !';

  @override
  String get plAddToPlaylist => 'Ajouter à la playlist';

  @override
  String plAddedTo(String name) {
    return 'Ajouté à $name';
  }

  @override
  String get shareLyrics => 'Partager les paroles';

  @override
  String get shareMaxLines => 'Nombre maximal de lignes sélectionné';

  @override
  String sharePickLines(int count) {
    return 'Choisissez jusqu\'à $count lignes';
  }

  @override
  String get sharePickHint => 'Choisissez quelques lignes ci-dessous…';

  @override
  String get shareButton => 'Partager';

  @override
  String get batTitle => 'Gardez la musique en vie 🎵';

  @override
  String get batBody =>
      'L\'optimisation de la batterie Android peut mettre votre musique en pause écran éteint. Autorisez Hana360 à fonctionner sans restriction.\n\nVous pouvez le modifier dans You → \"Continuer la lecture en arrière-plan\".';

  @override
  String get batNotNow => 'Pas maintenant';

  @override
  String get batAllow => 'Autoriser';

  @override
  String get algoSwitch => 'Algorithme';

  @override
  String get speakerDistance => 'Distance enceinte';

  @override
  String get channelTrim => 'Réglage canal';

  @override
  String get masterGain => 'Gain principal';

  @override
  String get secHrtf => 'Personnalisation HRTF';

  @override
  String get outputGain => 'Gain de sortie';

  @override
  String get secEq => 'EQ Spatial';

  @override
  String get secReverb => 'Réverbération';

  @override
  String get roomSize => 'Pièce';

  @override
  String get reverbGain => 'Gain réverb';

  @override
  String get secTracking => 'Suivi de tête';

  @override
  String get trackOff => 'Désactivé';

  @override
  String get trackSensor => 'Capteur du téléphone';

  @override
  String get trackManual => 'XY manuel';

  @override
  String get dragHint =>
      'Faites glisser pour ajuster l\'orientation de la tête (le champ suit)';

  @override
  String get customEq => 'Personnalisé';

  @override
  String get eqPresetMusic => 'Musique';

  @override
  String get eqPresetCinema => 'Cinéma';

  @override
  String get eqPresetGame => 'Jeu';

  @override
  String get eqPresetVoice => 'Voix';

  @override
  String get hrtfGroup0 => 'Masculin / Petite / Petite';

  @override
  String get hrtfGroup1 => 'Masculin / Petite / Moyenne';

  @override
  String get hrtfGroup2 => 'Masculin / Petite / Grande';

  @override
  String get hrtfGroup3 => 'Masculin / Moyenne / Petite';

  @override
  String get hrtfGroup4 => 'Masculin / Moyenne / Moyenne';

  @override
  String get hrtfGroup5 => 'Masculin / Moyenne / Grande';

  @override
  String get hrtfGroup6 => 'Masculin / Grande / Petite';

  @override
  String get hrtfGroup7 => 'Masculin / Grande / Moyenne';

  @override
  String get hrtfGroup8 => 'Masculin / Grande / Grande';

  @override
  String get hrtfGroup9 => 'Féminin / Petite / Petite';

  @override
  String get hrtfGroup10 => 'Féminin / Petite / Moyenne';

  @override
  String get hrtfGroup11 => 'Féminin / Petite / Grande';

  @override
  String get hrtfGroup12 => 'Féminin / Moyenne / Petite';

  @override
  String get hrtfGroup13 => 'Féminin / Moyenne / Moyenne';

  @override
  String get hrtfGroup14 => 'Féminin / Moyenne / Grande';

  @override
  String get navHome => 'Accueil';

  @override
  String get navLibrary => 'Bibliothèque';

  @override
  String get navPlaying => 'Lecture';

  @override
  String get navYou => 'Vous';

  @override
  String get tabSongs => 'Chansons';

  @override
  String get tabAlbums => 'Albums';

  @override
  String get tabFolders => 'Dossiers';

  @override
  String get tabPlaylists => 'Playlists';

  @override
  String get youMood => 'HUMEUR';

  @override
  String get youCompanion => 'VOTRE COMPAGNE';

  @override
  String get youBuddies => 'COPAINS';

  @override
  String get youSound => 'SON';

  @override
  String get youMore => 'PLUS';

  @override
  String get themeCherryBlossom => 'Fleur de cerisier';

  @override
  String get themeStarryNight => 'Nuit étoilée';

  @override
  String get themeAdaptiveLight => 'Lumière adaptative';

  @override
  String get themeAdaptiveDark => 'Sombre adaptatif';

  @override
  String youListenedTogether(int h, int m) {
    return '${h}h ${m}min d\'écoute ensemble';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'En-tête et Lecture';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'Se perche sur le titre de la bibliothèque';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'Fait la sieste sur le mini lecteur';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'Se pavane sur les coups de cœur';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'Brillent sur les thèmes sombres';

  @override
  String get accBow => 'Nœud rose';

  @override
  String get accHeadphones => 'Petits écouteurs';

  @override
  String get accFlower => 'Fleur';

  @override
  String get accCrown => 'Petite couronne';

  @override
  String accUnlockLabel(int h) {
    return 'Écoutez $h heures';
  }

  @override
  String get youCrossfade => 'Fondu enchaîné';

  @override
  String get youCrossfadeSub => 'Mélange la fin d\'une chanson à la suivante';

  @override
  String get youSmartShuffle => 'Lecture aléatoire intelligente';

  @override
  String get youSmartShuffleSub =>
      'La lecture aléatoire privilégie vos favoris — calculée sur cet appareil';

  @override
  String get libLikedSongs => 'Chansons aimées';

  @override
  String get libTapHeart => 'Touchez le cœur d\'une chanson pour la garder ici';

  @override
  String get libRemovedFromQueue => 'Retirée de la file';

  @override
  String get libRemovedFromLibrary => 'Retirée de la bibliothèque';

  @override
  String get libRemoveFromLibrary => 'Retirer de la bibliothèque';

  @override
  String get libNewPlaylist => 'Nouvelle playlist';

  @override
  String get libPlaylistName => 'Nom de la playlist';

  @override
  String get libCreate => 'Créer';

  @override
  String get libSwipeHint =>
      'balayez vers la gauche pour retirer · maintenez pour réordonner';

  @override
  String get libChooseCover => 'Choisir une image de couverture';

  @override
  String get libBackToArtCover => 'Revenir à la pochette';

  @override
  String libDeleteConfirm(String name) {
    return 'Supprimer « $name » ?';
  }

  @override
  String get libDeleteKeepSongs => 'Les chansons restent sur votre appareil';

  @override
  String get libKeep => 'Conserver';

  @override
  String get libDelete => 'Supprimer';

  @override
  String get libRemoveKeepFile => 'Le fichier reste sur votre appareil';

  @override
  String get libClearConfirm => 'Retirer tous les fichiers ?';

  @override
  String get libLibraryCleared => 'Bibliothèque vidée';

  @override
  String get libPickAudioFiles => 'Choisir des fichiers audio…';

  @override
  String get libImportFolder => 'Importer un dossier';

  @override
  String get libScanWholeFolder => 'Analyser tout un dossier… (recommandé)';

  @override
  String libImportFailed(String error) {
    return 'Échec de l\'import : $error';
  }

  @override
  String get libNoAudioFound => 'Aucun fichier audio trouvé';

  @override
  String libImportedCount(int count) {
    return '$count chansons importées';
  }

  @override
  String get libNothingHere =>
      'Rien ici pour l\'instant — balayez pour retirer, maintenez pour réordonner';

  @override
  String get sidebarYourLibrary => 'VOTRE BIBLIOTHÈQUE';

  @override
  String get sidebarPlaylists => 'PLAYLISTS';

  @override
  String get sidebarFolders => 'DOSSIERS';

  @override
  String get rowQueue => 'File';

  @override
  String get rowRemove => 'Retirer';

  @override
  String get rowPlaylist => 'Playlist';

  @override
  String plTrackCount(int count) {
    return '$count pistes';
  }

  @override
  String get lyricsSourceAuto => 'Auto';

  @override
  String get lyricsSourceEmbedded => 'Intégrées';

  @override
  String get lyricsSourceBestQuality => 'Meilleure qualité disponible';

  @override
  String get lyricsSourceFileTags => 'Depuis les étiquettes du fichier audio';

  @override
  String get lyricsSourceWordOnline => 'Synchronisées par mot (en ligne)';

  @override
  String get lyricsSourceLineOnline => 'Synchronisées par ligne (en ligne)';

  @override
  String get lyricsSourceNotFound => 'Introuvable pour cette chanson';

  @override
  String get npCatModeUnlocked => 'Miaou ?! Mode Chat débloqué 🐱';

  @override
  String get shellResumePlayback => 'Reprendre la lecture';

  @override
  String get shellPlay => 'LECTURE';

  @override
  String get devSection => 'DÉVELOPPEUR';

  @override
  String get devModeUnlocked => '🛠️ Mode développeur débloqué';

  @override
  String get devUnlockAll => 'Débloquer tous les accessoires';

  @override
  String get devClearLyricsCache => 'Vider le cache des paroles';

  @override
  String get devRefetchLyrics => 'Recharger toutes les paroles…';

  @override
  String get devLyricsCleared => 'Cache des paroles vidé';

  @override
  String get devHideOptions => 'Masquer les options développeur';

  @override
  String get devModeOff => 'Mode développeur désactivé';

  @override
  String get youCantReadFolders => 'Impossible de lire vos dossiers de musique';

  @override
  String get youNoMusicFolders => 'Aucun dossier de musique trouvé';
}
