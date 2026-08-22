// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Gujarati (`gu`).
class AppLocalizationsGu extends AppLocalizations {
  AppLocalizationsGu([String locale = 'gu']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'ભાષા';

  @override
  String get languageFollowSystem => 'સિસ્ટમને અનુસરો';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Hana360';

  @override
  String get commonCancel => 'રદ કરો';

  @override
  String get commonConfirm => 'ઓકે';

  @override
  String get commonBack => 'પાછળ';

  @override
  String get commonDone => 'થઈ ગયું';

  @override
  String get commonUnknown => 'અજાણ્યું';

  @override
  String get secUpmix => 'અપમિક્સ એન્જિન';

  @override
  String get spatialAudioTitle => '360° સ્પેશિયલ ઓડિયો';

  @override
  String get npNothingPlaying => 'હજી કંઈ વાગી રહ્યું નથી';

  @override
  String get npPickSong => 'તમારી લાઇબ્રેરીમાંથી ગીત પસંદ કરો';

  @override
  String get npSpatialSettings => '360° સેટિંગ્સ';

  @override
  String get npLyrics => 'બોલ';

  @override
  String get libSearchHint => 'તમારા સંગીતમાં શોધો…';

  @override
  String get libClearLibrary => 'લાઇબ્રેરી ખાલી કરો';

  @override
  String get libImportMusic => 'સંગીત આયાત કરો';

  @override
  String libError(String error) {
    return 'કંઈક ખોટું થયું: $error';
  }

  @override
  String libNoMatch(String query) {
    return '\"$query\" સાથે કંઈ મેળ ખાતું નથી';
  }

  @override
  String get libPermissionDenied =>
      'તમારું સંગીત શોધવા Hana360 ને પરવાનગી જોઈએ\nઆ ઉપકરણ પર કોઈ ઍક્સેસ નથી? તેના બદલે આયાત કરો.';

  @override
  String get libNoSongs =>
      'આ ઉપકરણ પર કોઈ ગીત મળ્યું નથી\nશરૂ કરવા તમારી ફાઇલોમાંથી સંગીત આયાત કરો';

  @override
  String get libGrantAccess => 'ઍક્સેસ આપો';

  @override
  String get libRescan => 'ફરી સ્કેન કરો';

  @override
  String get libAddedToQueue => 'કતારમાં ઉમેરાયું';

  @override
  String get libNoAlbums => 'હજી કોઈ આલ્બમ નથી';

  @override
  String get libNoFolders => 'હજી કોઈ ફોલ્ડર નથી';

  @override
  String get libNoPlaylists => 'હજી કોઈ પ્લેલિસ્ટ નથી';

  @override
  String libPlaylistCreated(String name) {
    return 'પ્લેલિસ્ટ \"$name\" બનાવી 🌸';
  }

  @override
  String get libFolderHint => 'ફોલ્ડરને પ્લેલિસ્ટમાં ફેરવવા લાંબો સમય દબાવો';

  @override
  String libSongCount(int count) {
    return '$count ગીતો';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count ગીતો · $path';
  }

  @override
  String get homeGreetingLate => 'મોડે સુધી જાગતા ♪';

  @override
  String get homeGreetingMorning => 'સુપ્રભાત ♪';

  @override
  String get homeGreetingAfternoon => 'શુભ બપોર ♪';

  @override
  String get homeGreetingEvening => 'શુભ સાંજ ♪';

  @override
  String get homeJumpBackIn => 'પાછા જોડાઓ';

  @override
  String get homeForYou => 'તમારા માટે';

  @override
  String get homeForYouSub => 'તમારા સાંભળવાથી, આ ઉપકરણ પર પસંદ કરાયું';

  @override
  String get homeWelcome => 'Hana360 માં સ્વાગત છે 🌸';

  @override
  String get homeAllQuiet => 'બધું શાંત 🌸';

  @override
  String get homeLibraryHint =>
      'તમારું સંગીત લાઇબ્રેરી ટેબમાં રહે છે — ત્યાં ફોલ્ડર ઉમેરો. તમે જે વગાડો છો તે બધું અહીં ભેગું થાય છે.';

  @override
  String get homePlayHint => 'કંઈક વગાડો અને આગલી વખતે તે અહીં રાહ જોશે.';

  @override
  String get youRescanLibrary => 'લાઇબ્રેરી ફરી સ્કેન કરો';

  @override
  String get youExcludedFolders => 'બાકાત ફોલ્ડર્સ';

  @override
  String get youExcludedFoldersSub => 'લાઇબ્રેરીમાંથી ફોલ્ડર છુપાવો';

  @override
  String get youCatMode => 'બિલાડી મોડ';

  @override
  String get youAbout => 'વિશે';

  @override
  String get youScanning => 'તમારું સંગીત સ્કેન થઈ રહ્યું છે…';

  @override
  String get youOpenSource => 'ઓપન સોર્સ';

  @override
  String get youOpenSourceSub =>
      'Hana360 એ ShaptakNaskar દ્વારા Hanamimi (GPLv3) નું વ્યુત્પન્ન છે — 2026-08-10 ના રોજ સુધારાયું';

  @override
  String get youCheckUpdates => 'અપડેટ્સ તપાસો';

  @override
  String get youCheckUpdatesSub => 'નવા બિલ્ડ GitHub Releases પર આવે છે';

  @override
  String get youUpToDate => 'તમે અપ-ટુ-ડેટ છો 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Sappy દ્વારા બનાવાયું';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'બેકગ્રાઉન્ડમાં વગાડવાનું ચાલુ રાખો';

  @override
  String get youKeepPlayingAllowed =>
      'મંજૂર — સિસ્ટમ તમારું સંગીત થોભાવશે નહીં';

  @override
  String get youKeepPlayingTap => 'સિસ્ટમને પ્લેબેક રોકતી અટકાવવા ટેપ કરો';

  @override
  String get youExcludedFoldersTitle => 'બાકાત ફોલ્ડર્સ';

  @override
  String get youExcludedFoldersDesc =>
      'બંધ કરેલા ફોલ્ડર્સમાંના ગીતો લાઇબ્રેરીમાંથી બાકાત રાખવામાં આવે છે';

  @override
  String get youVisSensitivity => 'વિઝ્યુઅલાઈઝર સંવેદનશીલતા';

  @override
  String get youVisSensitivitySub =>
      'જે ગીતો તેને ભાગ્યે જ ખસેડે તેના માટે વધારો';

  @override
  String get youNerdMode => 'નર્ડ મોડ';

  @override
  String get youNerdModeSub =>
      'હવે વાગી રહ્યું છે પર codec, bitrate અને ઓડિયો આઉટપુટ બતાવો';

  @override
  String get youEqualizer => 'ઇક્વલાઇઝર';

  @override
  String get youComingSoon => 'ટૂંક સમયમાં';

  @override
  String get sleepTimer => 'સ્લીપ ટાઈમર';

  @override
  String get sleep15 => '15 મિનિટ';

  @override
  String get sleep30 => '30 મિનિટ';

  @override
  String get sleep1h => '1 કલાક';

  @override
  String get sleepEndTrack => 'ગીતનો અંત';

  @override
  String get sleepFading => 'ધીમે ધીમે ઓછું થાય છે… મીઠા સપના';

  @override
  String sleepIn(String time) {
    return '$time માં સૂઈ જવું';
  }

  @override
  String get sleepEndTrackActive => 'આ ગીત પૂરું થાય ત્યારે સૂઈ જવું';

  @override
  String get sleepCancel => 'ટાઈમર રદ કરો';

  @override
  String get queueUpNext => 'આગળ';

  @override
  String get queueEmpty => 'કતાર ખાલી છે';

  @override
  String get updateAvailable => 'અપડેટ ઉપલબ્ધ છે ✨';

  @override
  String get updateNoNotes => 'કોઈ રિલીઝ નોંધ નથી.';

  @override
  String get updateInstalling => 'ઇન્સ્ટોલેશન ખોલી રહ્યા છીએ…';

  @override
  String get updateFailed => 'અપડેટ ન થઈ શક્યું — ફરી પ્રયત્ન કરો';

  @override
  String get updateLater => 'પછી';

  @override
  String get updateRetry => 'ફરી પ્રયત્ન કરો';

  @override
  String get updateNow => 'અપડેટ કરો';

  @override
  String get spatialToggleTitle => '360° સ્પેશિયલ ઓડિયો';

  @override
  String get spatialOn => 'ચાલુ';

  @override
  String get spatialOff => 'બંધ';

  @override
  String get lyricsNoFound => 'બોલ મળ્યા નથી';

  @override
  String get lyricsJustListening => 'આ તો માત્ર સાંભળવા માટે છે';

  @override
  String get lyricsTrySource => 'બીજો સ્રોત અજમાવો';

  @override
  String get lyricsSource => 'બોલનો સ્રોત';

  @override
  String get lyricsWordSynced => 'શબ્દ-સમન્વયિત';

  @override
  String get lyricsLineSynced => 'પંક્તિ-સમન્વયિત';

  @override
  String get lyricsUnsynced => 'અસમન્વયિત';

  @override
  String get plNoPlaylists => 'હજી કોઈ પ્લેલિસ્ટ નથી — પહેલા એક બનાવો!';

  @override
  String get plAddToPlaylist => 'પ્લેલિસ્ટમાં ઉમેરો';

  @override
  String plAddedTo(String name) {
    return '$name માં ઉમેરાયું';
  }

  @override
  String get shareLyrics => 'બોલ શેર કરો';

  @override
  String get shareMaxLines => 'મહત્તમ પંક્તિઓ પસંદ કરાઈ';

  @override
  String sharePickLines(int count) {
    return '$count જેટલી પંક્તિઓ પસંદ કરો';
  }

  @override
  String get sharePickHint => 'નીચે થોડી પંક્તિઓ પસંદ કરો…';

  @override
  String get shareButton => 'શેર કરો';

  @override
  String get batTitle => 'સંગીત વાગતું રાખો 🎵';

  @override
  String get batBody =>
      'Android નું બેટરી ઑપ્ટિમાઇઝેશન સ્ક્રીન બંધ હોય ત્યારે સંગીત થોભાવી શકે છે. સ્થિર પ્લેબેક માટે Hana360 ને અમર્યાદિત ચલાવવાની મંજૂરી આપો.\n\nતમે આ ગમે ત્યારે બદલી શકો છો: તમે → \"બેકગ્રાઉન્ડમાં વગાડવાનું ચાલુ રાખો\".';

  @override
  String get batNotNow => 'હમણાં નહીં';

  @override
  String get batAllow => 'મંજૂરી આપો';

  @override
  String get algoSwitch => 'અલ્ગોરિધમ';

  @override
  String get speakerDistance => 'સ્પીકર અંતર';

  @override
  String get channelTrim => 'ચેનલ ટ્રિમ';

  @override
  String get masterGain => 'માસ્ટર ગેઇન';

  @override
  String get secHrtf => 'HRTF વ્યક્તિગતકરણ';

  @override
  String get outputGain => 'આઉટપુટ ગેઇન';

  @override
  String get secEq => 'સ્પેશિયલ EQ';

  @override
  String get secReverb => 'રિવર્બ';

  @override
  String get roomSize => 'રૂમ';

  @override
  String get reverbGain => 'રિવર્બ ગેઇન';

  @override
  String get secTracking => 'હેડ ટ્રેકિંગ';

  @override
  String get trackOff => 'બંધ';

  @override
  String get trackSensor => 'ફોન સેન્સર';

  @override
  String get trackManual => 'મેન્યુઅલ XY';

  @override
  String get dragHint => 'માથાની દિશા ગોઠવવા ખેંચો (સાઉન્ડ ફીલ્ડ અનુસરે છે)';

  @override
  String get customEq => 'કસ્ટમ';

  @override
  String get eqPresetMusic => 'સંગીત';

  @override
  String get eqPresetCinema => 'સિનેમા';

  @override
  String get eqPresetGame => 'ગેમ';

  @override
  String get eqPresetVoice => 'અવાજ';

  @override
  String get hrtfGroup0 => 'પુરુષ / નાનું / નાનું';

  @override
  String get hrtfGroup1 => 'પુરુષ / નાનું / મધ્યમ';

  @override
  String get hrtfGroup2 => 'પુરુષ / નાનું / મોટું';

  @override
  String get hrtfGroup3 => 'પુરુષ / મધ્યમ / નાનું';

  @override
  String get hrtfGroup4 => 'પુરુષ / મધ્યમ / મધ્યમ';

  @override
  String get hrtfGroup5 => 'પુરુષ / મધ્યમ / મોટું';

  @override
  String get hrtfGroup6 => 'પુરુષ / મોટું / નાનું';

  @override
  String get hrtfGroup7 => 'પુરુષ / મોટું / મધ્યમ';

  @override
  String get hrtfGroup8 => 'પુરુષ / મોટું / મોટું';

  @override
  String get hrtfGroup9 => 'સ્ત્રી / નાનું / નાનું';

  @override
  String get hrtfGroup10 => 'સ્ત્રી / નાનું / મધ્યમ';

  @override
  String get hrtfGroup11 => 'સ્ત્રી / નાનું / મોટું';

  @override
  String get hrtfGroup12 => 'સ્ત્રી / મધ્યમ / નાનું';

  @override
  String get hrtfGroup13 => 'સ્ત્રી / મધ્યમ / મધ્યમ';

  @override
  String get hrtfGroup14 => 'સ્ત્રી / મધ્યમ / મોટું';

  @override
  String get navHome => 'હોમ';

  @override
  String get navLibrary => 'લાઇબ્રેરી';

  @override
  String get navPlaying => 'વાગી રહ્યું છે';

  @override
  String get navYou => 'તમે';

  @override
  String get tabSongs => 'ગીતો';

  @override
  String get tabAlbums => 'આલ્બમ્સ';

  @override
  String get tabFolders => 'ફોલ્ડર્સ';

  @override
  String get tabPlaylists => 'પ્લેલિસ્ટ';

  @override
  String get youMood => 'મૂડ';

  @override
  String get youCompanion => 'તમારો સાથી';

  @override
  String get youBuddies => 'મિત્રો';

  @override
  String get youSound => 'અવાજ';

  @override
  String get youMore => 'વધુ';

  @override
  String get themeCherryBlossom => 'ચેરી બ્લોસમ';

  @override
  String get themeStarryNight => 'તારાઓવાળી રાત';

  @override
  String get themeAdaptiveLight => 'અનુકૂલનશીલ લાઇટ';

  @override
  String get themeAdaptiveDark => 'અનુકૂલનશીલ ડાર્ક';

  @override
  String youListenedTogether(int h, int m) {
    return '$hક $mમિ સાથે સાંભળ્યું';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'હેડર અને હવે વાગી રહ્યું છે';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'લાઇબ્રેરીના શીર્ષક પર બેસે છે';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'મિની પ્લેયર પર નિદ્રા લે છે';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'પસંદ કરેલા ગીતો પર ચાલે છે';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'ડાર્ક થીમ પર ઝગમગે છે';

  @override
  String get accBow => 'ગુલાબી રિબન';

  @override
  String get accHeadphones => 'નાના હેડફોન';

  @override
  String get accFlower => 'ફૂલ';

  @override
  String get accCrown => 'નાનો તાજ';

  @override
  String accUnlockLabel(int h) {
    return '$h કલાક સાંભળો';
  }

  @override
  String get youCrossfade => 'ક્રોસફેડ';

  @override
  String get youCrossfadeSub => 'ગીતનો અંત આગલા ગીત સાથે ભેળવો';

  @override
  String get youSmartShuffle => 'સ્માર્ટ શફલ';

  @override
  String get youSmartShuffleSub =>
      'શફલ તમારા મનપસંદ તરફ ઝુકે છે — આ ઉપકરણ પર ગણતરી';

  @override
  String get libLikedSongs => 'પસંદ કરેલા ગીતો';

  @override
  String get libTapHeart => 'ગીતને અહીં રાખવા તેના પર હૃદય ટેપ કરો';

  @override
  String get libRemovedFromQueue => 'કતારમાંથી દૂર કરાયું';

  @override
  String get libRemovedFromLibrary => 'લાઇબ્રેરીમાંથી દૂર કરાયું';

  @override
  String get libRemoveFromLibrary => 'લાઇબ્રેરીમાંથી દૂર કરો';

  @override
  String get libNewPlaylist => 'નવી પ્લેલિસ્ટ';

  @override
  String get libPlaylistName => 'પ્લેલિસ્ટનું નામ';

  @override
  String get libCreate => 'બનાવો';

  @override
  String get libSwipeHint =>
      'દૂર કરવા ડાબે સ્વાઇપ કરો · ફરીથી ગોઠવવા દબાવી રાખો';

  @override
  String get libChooseCover => 'કવર છબી પસંદ કરો';

  @override
  String get libBackToArtCover => 'ગીતના કવર પર પાછા';

  @override
  String libDeleteConfirm(String name) {
    return '\"$name\" કાઢી નાખવું?';
  }

  @override
  String get libDeleteKeepSongs => 'ગીતો પોતે તમારા ઉપકરણ પર રહે છે';

  @override
  String get libKeep => 'રાખો';

  @override
  String get libDelete => 'કાઢી નાખો';

  @override
  String get libRemoveKeepFile => 'ફાઇલ પોતે તમારા ઉપકરણ પર રહે છે';

  @override
  String get libClearConfirm => 'બધી ફાઇલો દૂર કરવી?';

  @override
  String get libLibraryCleared => 'લાઇબ્રેરી ખાલી કરાઈ';

  @override
  String get libPickAudioFiles => 'ઓડિયો ફાઇલો પસંદ કરો…';

  @override
  String get libImportFolder => 'ફોલ્ડર આયાત કરો';

  @override
  String get libScanWholeFolder => 'આખું ફોલ્ડર સ્કેન કરો… (ભલામણ)';

  @override
  String libImportFailed(String error) {
    return 'આયાત નિષ્ફળ: $error';
  }

  @override
  String get libNoAudioFound => 'કોઈ ઓડિયો ફાઇલ મળી નથી';

  @override
  String libImportedCount(int count) {
    return '$count ગીતો આયાત કર્યા';
  }

  @override
  String get libNothingHere =>
      'હજી અહીં કંઈ નથી — દૂર કરવા ડાબે સ્વાઇપ કરો, ફરીથી ગોઠવવા દબાવી રાખો';

  @override
  String get sidebarYourLibrary => 'તમારી લાઇબ્રેરી';

  @override
  String get sidebarPlaylists => 'પ્લેલિસ્ટ';

  @override
  String get sidebarFolders => 'ફોલ્ડર્સ';

  @override
  String get rowQueue => 'કતાર';

  @override
  String get rowRemove => 'દૂર કરો';

  @override
  String get rowPlaylist => 'પ્લેલિસ્ટ';

  @override
  String plTrackCount(int count) {
    return '$count ટ્રેક';
  }

  @override
  String get lyricsSourceAuto => 'ઓટો';

  @override
  String get lyricsSourceEmbedded => 'એમ્બેડેડ';

  @override
  String get lyricsSourceBestQuality => 'શ્રેષ્ઠ ઉપલબ્ધ ગુણવત્તા';

  @override
  String get lyricsSourceFileTags => 'ઓડિયો ફાઇલના પોતાના ટેગમાંથી';

  @override
  String get lyricsSourceWordOnline => 'શબ્દ-સમન્વયિત (ઓનલાઇન)';

  @override
  String get lyricsSourceLineOnline => 'પંક્તિ-સમન્વયિત (ઓનલાઇન)';

  @override
  String get lyricsSourceNotFound => 'આ ગીત માટે મળ્યું નથી';

  @override
  String get npCatModeUnlocked => 'મ્યાઉ?! બિલાડી મોડ અનલોક થયો 🐱';

  @override
  String get shellResumePlayback => 'પ્લેબેક ફરી શરૂ કરો';

  @override
  String get shellPlay => 'વગાડો';

  @override
  String get devSection => 'ડેવલપર';

  @override
  String get devModeUnlocked => '🛠️ ડેવલપર મોડ અનલોક થયો';

  @override
  String get devUnlockAll => 'બધા એક્સેસરીઝ અનલોક કરો';

  @override
  String get devClearLyricsCache => 'બોલની કેશ સાફ કરો';

  @override
  String get devRefetchLyrics => 'બધા બોલ ફરી મેળવો…';

  @override
  String get devLyricsCleared => 'બોલની કેશ સાફ થઈ';

  @override
  String get devHideOptions => 'ડેવલપર વિકલ્પો છુપાવો';

  @override
  String get devModeOff => 'ડેવલપર મોડ બંધ';

  @override
  String get youCantReadFolders => 'તમારા સંગીત ફોલ્ડર્સ વાંચી શકાયા નહીં';

  @override
  String get youNoMusicFolders => 'કોઈ સંગીત ફોલ્ડર મળ્યું નથી';
}
