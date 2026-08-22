// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'Idioma';

  @override
  String get languageFollowSystem => 'Seguir o sistema';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Baseus × Hanamimi';

  @override
  String get commonCancel => 'Cancelar';

  @override
  String get commonConfirm => 'OK';

  @override
  String get commonBack => 'Voltar';

  @override
  String get commonDone => 'Concluído';

  @override
  String get commonUnknown => 'Desconhecido';

  @override
  String get secUpmix => 'Motor Upmix';

  @override
  String get spatialAudioTitle => 'Áudio Espacial 360';

  @override
  String get npNothingPlaying => 'Nada em reprodução';

  @override
  String get npPickSong => 'Escolha uma música da sua biblioteca';

  @override
  String get npSpatialSettings => 'Configurações 360';

  @override
  String get npLyrics => 'Letras';

  @override
  String get libSearchHint => 'Pesquise sua música…';

  @override
  String get libClearLibrary => 'Limpar biblioteca';

  @override
  String get libImportMusic => 'Importar música';

  @override
  String libError(String error) {
    return 'Algo deu errado: $error';
  }

  @override
  String libNoMatch(String query) {
    return 'Nada corresponde a \"$query\"';
  }

  @override
  String get libPermissionDenied =>
      'O Hana360 precisa de permissão para encontrar sua música\nSem acesso neste dispositivo? Importe.';

  @override
  String get libNoSongs =>
      'Nenhuma música encontrada neste dispositivo\nImporte música dos seus arquivos';

  @override
  String get libGrantAccess => 'Conceder acesso';

  @override
  String get libRescan => 'Revarrer';

  @override
  String get libAddedToQueue => 'Adicionado à fila';

  @override
  String get libNoAlbums => 'Ainda não há álbuns';

  @override
  String get libNoFolders => 'Ainda não há pastas';

  @override
  String get libNoPlaylists => 'Ainda não há playlists';

  @override
  String libPlaylistCreated(String name) {
    return 'Playlist \"$name\" criada 🌸';
  }

  @override
  String get libFolderHint => 'toque longo numa pasta para virar uma playlist';

  @override
  String libSongCount(int count) {
    return '$count músicas';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count músicas · $path';
  }

  @override
  String get homeGreetingLate => 'Acordado até tarde ♪';

  @override
  String get homeGreetingMorning => 'Bom dia ♪';

  @override
  String get homeGreetingAfternoon => 'Boa tarde ♪';

  @override
  String get homeGreetingEvening => 'Boa noite ♪';

  @override
  String get homeJumpBackIn => 'CONTINUAR';

  @override
  String get homeForYou => 'PARA VOCÊ';

  @override
  String get homeForYouSub =>
      'escolhido neste dispositivo, a partir do seu histórico';

  @override
  String get homeWelcome => 'Bem-vindo ao Hana360 🌸';

  @override
  String get homeAllQuiet => 'Tudo tranquilo 🌸';

  @override
  String get homeLibraryHint =>
      'Sua música está na aba Biblioteca — adicione pastas lá. Tudo o que você toca se reúne aqui.';

  @override
  String get homePlayHint =>
      'Toque algo e estará esperando aqui na próxima vez.';

  @override
  String get youRescanLibrary => 'Revarrer biblioteca';

  @override
  String get youExcludedFolders => 'Pastas excluídas';

  @override
  String get youExcludedFoldersSub => 'Ocultar pastas da sua biblioteca';

  @override
  String get youCatMode => 'Modo Gato';

  @override
  String get youAbout => 'Sobre';

  @override
  String get youScanning => 'Varrendo sua música…';

  @override
  String get youOpenSource => 'Código aberto';

  @override
  String get youOpenSourceSub =>
      'O Hana360 é um derivado do Hanamimi (GPLv3) de ShaptakNaskar — modificado em 2026-08-10';

  @override
  String get youCheckUpdates => 'Verificar atualizações';

  @override
  String get youCheckUpdatesSub => 'Novas versões no GitHub Releases';

  @override
  String get youUpToDate => 'Você está atualizado 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Feito por Sappy';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'Continuar tocando em segundo plano';

  @override
  String get youKeepPlayingAllowed =>
      'Permitido — o sistema não pausará sua música';

  @override
  String get youKeepPlayingTap =>
      'Toque para impedir que o sistema pare a reprodução';

  @override
  String get youExcludedFoldersTitle => 'Pastas excluídas';

  @override
  String get youExcludedFoldersDesc =>
      'Músicas em pastas desativadas ficam fora da sua biblioteca';

  @override
  String get youVisSensitivity => 'Sensibilidade do visualizador';

  @override
  String get youVisSensitivitySub => 'Aumente para músicas que mal o movem';

  @override
  String get youNerdMode => 'Modo nerd';

  @override
  String get youNerdModeSub =>
      'Mostrar codec, bitrate e saída na tela de reprodução';

  @override
  String get youEqualizer => 'Equalizador';

  @override
  String get youComingSoon => 'Em breve';

  @override
  String get sleepTimer => 'Temporizador de sono';

  @override
  String get sleep15 => '15 minutos';

  @override
  String get sleep30 => '30 minutos';

  @override
  String get sleep1h => '1 hora';

  @override
  String get sleepEndTrack => 'Fim da música';

  @override
  String get sleepFading => 'Desvanecendo… bons sonhos';

  @override
  String sleepIn(String time) {
    return 'Dormir em $time';
  }

  @override
  String get sleepEndTrackActive => 'Dormir quando esta música terminar';

  @override
  String get sleepCancel => 'Cancelar temporizador';

  @override
  String get queueUpNext => 'A seguir';

  @override
  String get queueEmpty => 'A fila está vazia';

  @override
  String get updateAvailable => 'Atualização disponível ✨';

  @override
  String get updateNoNotes => 'Sem notas de versão.';

  @override
  String get updateInstalling => 'Abrindo instalador…';

  @override
  String get updateFailed => 'Não foi possível atualizar — tente mais tarde';

  @override
  String get updateLater => 'Mais tarde';

  @override
  String get updateRetry => 'Tentar novamente';

  @override
  String get updateNow => 'Atualizar';

  @override
  String get spatialToggleTitle => 'Áudio Espacial 360';

  @override
  String get spatialOn => 'Ativado';

  @override
  String get spatialOff => 'Desativado';

  @override
  String get lyricsNoFound => 'Nenhuma letra encontrada';

  @override
  String get lyricsJustListening => 'Esta é só para ouvir';

  @override
  String get lyricsTrySource => 'Tentar outra fonte';

  @override
  String get lyricsSource => 'Fonte das letras';

  @override
  String get lyricsWordSynced => 'Sincronizada por palavra';

  @override
  String get lyricsLineSynced => 'Sincronizada por linha';

  @override
  String get lyricsUnsynced => 'Sem sincronização';

  @override
  String get plNoPlaylists => 'Ainda não há playlists — crie uma primeiro!';

  @override
  String get plAddToPlaylist => 'Adicionar à playlist';

  @override
  String plAddedTo(String name) {
    return 'Adicionado a $name';
  }

  @override
  String get shareLyrics => 'Compartilhar letras';

  @override
  String get shareMaxLines => 'Número máximo de linhas selecionado';

  @override
  String sharePickLines(int count) {
    return 'Escolha até $count linhas';
  }

  @override
  String get sharePickHint => 'Escolha algumas linhas abaixo…';

  @override
  String get shareButton => 'Compartilhar';

  @override
  String get batTitle => 'Mantenha a música tocando 🎵';

  @override
  String get batBody =>
      'A otimização de bateria do Android pode pausar sua música com a tela desligada. Permita que o Hana360 rode sem restrições.\n\nVocê pode mudar isso em You → \"Continuar tocando em segundo plano\".';

  @override
  String get batNotNow => 'Agora não';

  @override
  String get batAllow => 'Permitir';

  @override
  String get algoSwitch => 'Algoritmo';

  @override
  String get speakerDistance => 'Distância da caixa';

  @override
  String get channelTrim => 'Ajuste de canal';

  @override
  String get masterGain => 'Ganho principal';

  @override
  String get secHrtf => 'Personalização HRTF';

  @override
  String get outputGain => 'Ganho de saída';

  @override
  String get secEq => 'EQ Espacial';

  @override
  String get secReverb => 'Reverberação';

  @override
  String get roomSize => 'Sala';

  @override
  String get reverbGain => 'Ganho do reverb';

  @override
  String get secTracking => 'Rastreamento de cabeça';

  @override
  String get trackOff => 'Desligado';

  @override
  String get trackSensor => 'Sensor do telefone';

  @override
  String get trackManual => 'XY manual';

  @override
  String get dragHint =>
      'Arraste para ajustar a orientação da cabeça (o campo segue)';

  @override
  String get customEq => 'Personalizado';

  @override
  String get eqPresetMusic => 'Música';

  @override
  String get eqPresetCinema => 'Cinema';

  @override
  String get eqPresetGame => 'Jogo';

  @override
  String get eqPresetVoice => 'Voz';

  @override
  String get hrtfGroup0 => 'Masculino / Pequena / Pequena';

  @override
  String get hrtfGroup1 => 'Masculino / Pequena / Média';

  @override
  String get hrtfGroup2 => 'Masculino / Pequena / Grande';

  @override
  String get hrtfGroup3 => 'Masculino / Média / Pequena';

  @override
  String get hrtfGroup4 => 'Masculino / Média / Média';

  @override
  String get hrtfGroup5 => 'Masculino / Média / Grande';

  @override
  String get hrtfGroup6 => 'Masculino / Grande / Pequena';

  @override
  String get hrtfGroup7 => 'Masculino / Grande / Média';

  @override
  String get hrtfGroup8 => 'Masculino / Grande / Grande';

  @override
  String get hrtfGroup9 => 'Feminino / Pequena / Pequena';

  @override
  String get hrtfGroup10 => 'Feminino / Pequena / Média';

  @override
  String get hrtfGroup11 => 'Feminino / Pequena / Grande';

  @override
  String get hrtfGroup12 => 'Feminino / Média / Pequena';

  @override
  String get hrtfGroup13 => 'Feminino / Média / Média';

  @override
  String get hrtfGroup14 => 'Feminino / Média / Grande';

  @override
  String get navHome => 'Início';

  @override
  String get navLibrary => 'Biblioteca';

  @override
  String get navPlaying => 'Reproduzindo';

  @override
  String get navYou => 'Você';

  @override
  String get tabSongs => 'Músicas';

  @override
  String get tabAlbums => 'Álbuns';

  @override
  String get tabFolders => 'Pastas';

  @override
  String get tabPlaylists => 'Playlists';

  @override
  String get youMood => 'HUMOR';

  @override
  String get youCompanion => 'SUA COMPANHEIRA';

  @override
  String get youBuddies => 'AMIGOS';

  @override
  String get youSound => 'SOM';

  @override
  String get youMore => 'MAIS';

  @override
  String get themeCherryBlossom => 'Flor de cerejeira';

  @override
  String get themeStarryNight => 'Noite estrelada';

  @override
  String get themeAdaptiveLight => 'Luz adaptável';

  @override
  String get themeAdaptiveDark => 'Escuro adaptável';

  @override
  String youListenedTogether(int h, int m) {
    return '${h}h ${m}min ouvidos juntos';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'Cabeçalho e Reproduzindo';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'Pousa no título da biblioteca';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'Cochila no mini player';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'Desfila sobre os curtidos';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'Brilham nos temas escuros';

  @override
  String get accBow => 'Laço rosa';

  @override
  String get accHeadphones => 'Fones pequenos';

  @override
  String get accFlower => 'Flor';

  @override
  String get accCrown => 'Coroa pequena';

  @override
  String accUnlockLabel(int h) {
    return 'Ouça por $h horas';
  }

  @override
  String get youCrossfade => 'Crossfade';

  @override
  String get youCrossfadeSub => 'Mistura o fim de uma música com a próxima';

  @override
  String get youSmartShuffle => 'Aleatório inteligente';

  @override
  String get youSmartShuffleSub =>
      'O aleatório favorece seus favoritos — calculado neste dispositivo';

  @override
  String get libLikedSongs => 'Músicas curtidas';

  @override
  String get libTapHeart => 'Toque no coração de uma música para mantê-la aqui';

  @override
  String get libRemovedFromQueue => 'Removida da fila';

  @override
  String get libRemovedFromLibrary => 'Removida da biblioteca';

  @override
  String get libRemoveFromLibrary => 'Remover da biblioteca';

  @override
  String get libNewPlaylist => 'Nova playlist';

  @override
  String get libPlaylistName => 'Nome da playlist';

  @override
  String get libCreate => 'Criar';

  @override
  String get libSwipeHint =>
      'deslize para a esquerda para remover · segure para reordenar';

  @override
  String get libChooseCover => 'Escolher imagem de capa';

  @override
  String get libBackToArtCover => 'Voltar à capa do álbum';

  @override
  String libDeleteConfirm(String name) {
    return 'Excluir \"$name\"?';
  }

  @override
  String get libDeleteKeepSongs => 'As músicas em si ficam no seu dispositivo';

  @override
  String get libKeep => 'Manter';

  @override
  String get libDelete => 'Excluir';

  @override
  String get libRemoveKeepFile => 'O arquivo em si fica no seu dispositivo';

  @override
  String get libClearConfirm => 'Remover todos os arquivos?';

  @override
  String get libLibraryCleared => 'Biblioteca limpa';

  @override
  String get libPickAudioFiles => 'Escolher arquivos de áudio…';

  @override
  String get libImportFolder => 'Importar uma pasta';

  @override
  String get libScanWholeFolder => 'Varrer uma pasta inteira… (recomendado)';

  @override
  String libImportFailed(String error) {
    return 'Falha na importação: $error';
  }

  @override
  String get libNoAudioFound => 'Nenhum arquivo de áudio encontrado';

  @override
  String libImportedCount(int count) {
    return '$count músicas importadas';
  }

  @override
  String get libNothingHere =>
      'Nada aqui ainda — deslize para remover, segure para reordenar';

  @override
  String get sidebarYourLibrary => 'SUA BIBLIOTECA';

  @override
  String get sidebarPlaylists => 'PLAYLISTS';

  @override
  String get sidebarFolders => 'PASTAS';

  @override
  String get rowQueue => 'Fila';

  @override
  String get rowRemove => 'Remover';

  @override
  String get rowPlaylist => 'Playlist';

  @override
  String plTrackCount(int count) {
    return '$count faixas';
  }

  @override
  String get lyricsSourceAuto => 'Auto';

  @override
  String get lyricsSourceEmbedded => 'Incorporada';

  @override
  String get lyricsSourceBestQuality => 'Melhor qualidade disponível';

  @override
  String get lyricsSourceFileTags => 'Das tags do próprio arquivo de áudio';

  @override
  String get lyricsSourceWordOnline => 'Sincronizada por palavra (online)';

  @override
  String get lyricsSourceLineOnline => 'Sincronizada por linha (online)';

  @override
  String get lyricsSourceNotFound => 'Não encontrada para esta música';

  @override
  String get npCatModeUnlocked => 'Miau?! Modo Gato desbloqueado 🐱';

  @override
  String get shellResumePlayback => 'Retomar reprodução';

  @override
  String get shellPlay => 'REPRODUZIR';

  @override
  String get devSection => 'DESENVOLVEDOR';

  @override
  String get devModeUnlocked => '🛠️ Modo desenvolvedor desbloqueado';

  @override
  String get devUnlockAll => 'Desbloquear todos os acessórios';

  @override
  String get devClearLyricsCache => 'Limpar cache de letras';

  @override
  String get devRefetchLyrics => 'Recarregar todas as letras…';

  @override
  String get devLyricsCleared => 'Cache de letras limpo';

  @override
  String get devHideOptions => 'Ocultar opções de desenvolvedor';

  @override
  String get devModeOff => 'Modo desenvolvedor desativado';

  @override
  String get youCantReadFolders => 'Não foi possível ler suas pastas de música';

  @override
  String get youNoMusicFolders => 'Nenhuma pasta de música encontrada';
}
