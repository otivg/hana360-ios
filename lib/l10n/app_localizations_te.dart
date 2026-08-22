// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Telugu (`te`).
class AppLocalizationsTe extends AppLocalizations {
  AppLocalizationsTe([String locale = 'te']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'భాష';

  @override
  String get languageFollowSystem => 'సిస్టమ్ను అనుసరించండి';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Baseus × Hanamimi';

  @override
  String get commonCancel => 'రద్దు';

  @override
  String get commonConfirm => 'సరే';

  @override
  String get commonBack => 'వెనుకకు';

  @override
  String get commonDone => 'పూర్తయింది';

  @override
  String get commonUnknown => 'తెలియదు';

  @override
  String get secUpmix => 'అప్మిక్స్ ఇంజన్';

  @override
  String get spatialAudioTitle => '360 స్పేషల్ ఆడియో';

  @override
  String get npNothingPlaying => 'ఏమీ ప్లే అవుతోలేదు';

  @override
  String get npPickSong => 'మీ లైబ్రరీ నుండి పాటను ఎంచుకోండి';

  @override
  String get npSpatialSettings => '360 సెట్టింగ్';

  @override
  String get npLyrics => 'పాటలు';

  @override
  String get libSearchHint => 'మీ సంగీతాన్ని వెతకండి…';

  @override
  String get libClearLibrary => 'లైబ్రరీని క్లియర్ చేయండి';

  @override
  String get libImportMusic => 'సంగీతం దిగుమతి చేయండి';

  @override
  String libError(String error) {
    return 'ఏదో తప్పు జరిగింది: $error';
  }

  @override
  String libNoMatch(String query) {
    return '\"$query\"కి సరిపోలేదు';
  }

  @override
  String get libPermissionDenied =>
      'మీ సంగీతాన్ని కనుగొనడానికి Hana360కి అనుమతి కావాలి\nఈ పరికరంలో యాక్సెస్ లేదా? దిగుమతి చేయండి.';

  @override
  String get libNoSongs =>
      'ఈ పరికరంలో పాటలు కనుగొనబడలేదు\nమీ ఫైల్ల నుండి సంగీతం దిగుమతి చేయండి';

  @override
  String get libGrantAccess => 'యాక్సెస్ ఇవ్వండి';

  @override
  String get libRescan => 'తిరిగి స్కాన్ చేయండి';

  @override
  String get libAddedToQueue => 'క్యూకు జోడించబడింది';

  @override
  String get libNoAlbums => 'ఇంకా ఆల్బమ్లు లేవు';

  @override
  String get libNoFolders => 'ఇంకా ఫోల్డర్లు లేవు';

  @override
  String get libNoPlaylists => 'ఇంకా ప్లేలిస్ట్లు లేవు';

  @override
  String libPlaylistCreated(String name) {
    return 'ప్లేలిస్ట్ \"$name\" సృష్టించబడింది 🌸';
  }

  @override
  String get libFolderHint => 'ఫోల్డర్ను ప్లేలిస్ట్ చేయడానికి పట్టుకోండి';

  @override
  String libSongCount(int count) {
    return '$count పాటలు';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count పాటలు · $path';
  }

  @override
  String get homeGreetingLate => 'రాత్రి ఆలస్యంగా మేల్కొని ♪';

  @override
  String get homeGreetingMorning => 'శుభోదయం ♪';

  @override
  String get homeGreetingAfternoon => 'శుభ మధ్యాహ్నం ♪';

  @override
  String get homeGreetingEvening => 'శుభ సాయంత్రం ♪';

  @override
  String get homeJumpBackIn => 'వినడం కొనసాగించండి';

  @override
  String get homeForYou => 'మీ కోసం';

  @override
  String get homeForYouSub =>
      'మీ విన్న చరిత్ర ఆధారంగా, ఈ పరికరంలో ఎంచుకోబడింది';

  @override
  String get homeWelcome => 'Hana360కి స్వాగతం 🌸';

  @override
  String get homeAllQuiet => 'అంతా నిశ్శబ్దం 🌸';

  @override
  String get homeLibraryHint =>
      'మీ సంగీతం లైబ్రరీ ట్యాబ్లో ఉంది — అక్కడ ఫోల్డర్ జోడించండి. మీరు ప్లే చేసేవన్నీ ఇక్కడ సేకరిస్తాయి.';

  @override
  String get homePlayHint =>
      'ఏదైనా ప్లే చేయండి, తదుపరిసారి ఇది ఇక్కడ మీ కోసం వేచి ఉంటుంది.';

  @override
  String get youRescanLibrary => 'లైబ్రరీని తిరిగి స్కాన్ చేయండి';

  @override
  String get youExcludedFolders => 'మినహాయించిన ఫోల్డర్లు';

  @override
  String get youExcludedFoldersSub => 'మీ లైబ్రరీ నుండి ఫోల్డర్లను దాచండి';

  @override
  String get youCatMode => 'పిల్లి మోడ్';

  @override
  String get youAbout => 'గురించి';

  @override
  String get youScanning => 'మీ సంగీతం స్కాన్ అవుతోంది…';

  @override
  String get youOpenSource => 'ఓపెన్ సోర్స్';

  @override
  String get youOpenSourceSub =>
      'Hana360 అనేది ShaptakNaskar యొక్క Hanamimi (GPLv3) యొక్క ఉత్పన్నం — 2026-08-10న మార్చబడింది';

  @override
  String get youCheckUpdates => 'అప్డేట్‌లను తనిఖీ చేయండి';

  @override
  String get youCheckUpdatesSub => 'కొత్త బిల్డ్‌లు GitHub Releasesలో వస్తాయి';

  @override
  String get youUpToDate => 'మీరు తాజా వెర్షన్‌లో ఉన్నారు 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Sappy తయారు చేశారు';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'నేపథ్యంలో ప్లే చేస్తూ ఉండండి';

  @override
  String get youKeepPlayingAllowed =>
      'అనుమతించబడింది — సిస్టమ్ మీ సంగీతాన్ని ఆపదు';

  @override
  String get youKeepPlayingTap =>
      'సిస్టమ్ ప్లేబ్యాక్ ఆపకుండా ఉండటానికి నొక్కండి';

  @override
  String get youExcludedFoldersTitle => 'మినహాయించిన ఫోల్డర్లు';

  @override
  String get youExcludedFoldersDesc =>
      'ఆఫ్ చేసిన ఫోల్డర్లలోని పాటలు మీ లైబ్రరీ నుండి మినహాయించబడతాయి';

  @override
  String get youVisSensitivity => 'విజువలైజర్ సున్నితత్వం';

  @override
  String get youVisSensitivitySub => 'కదలని పాటలకు పెంచండి';

  @override
  String get youNerdMode => 'నెర్డ్ మోడ్';

  @override
  String get youNerdModeSub =>
      'ప్లేయర్‌లో codec, bitrate మరియు అవుట్‌పుట్ చూపండి';

  @override
  String get youEqualizer => 'ఈక్వలైజర్';

  @override
  String get youComingSoon => 'త్వరలో';

  @override
  String get sleepTimer => 'నిద్ర టైమర్';

  @override
  String get sleep15 => '15 నిమిషాలు';

  @override
  String get sleep30 => '30 నిమిషాలు';

  @override
  String get sleep1h => '1 గంట';

  @override
  String get sleepEndTrack => 'పాట ముగింపు';

  @override
  String get sleepFading => 'తగ్గుతోంది… శుభ స్వప్నాలు';

  @override
  String sleepIn(String time) {
    return '$timeలో నిద్ర';
  }

  @override
  String get sleepEndTrackActive => 'ఈ పాట ముగిసినప్పుడు నిద్ర';

  @override
  String get sleepCancel => 'టైమర్ రద్దు';

  @override
  String get queueUpNext => 'తరువాత';

  @override
  String get queueEmpty => 'క్యూ ఖాళీగా ఉంది';

  @override
  String get updateAvailable => 'అప్డేట్ అందుబాటులో ఉంది ✨';

  @override
  String get updateNoNotes => 'రిలీజ్ నోట్స్ లేవు.';

  @override
  String get updateInstalling => 'ఇన్‌స్టాలర్ తెరుచుకుంటోంది…';

  @override
  String get updateFailed =>
      'అప్డేట్ చేయలేకపోయాము — తర్వాత మళ్లీ ప్రయత్నించండి';

  @override
  String get updateLater => 'తరువాత';

  @override
  String get updateRetry => 'మళ్లీ ప్రయత్నించండి';

  @override
  String get updateNow => 'అప్డేట్';

  @override
  String get spatialToggleTitle => '360 స్పేషల్ ఆడియో';

  @override
  String get spatialOn => 'ఆన్';

  @override
  String get spatialOff => 'ఆఫ్';

  @override
  String get lyricsNoFound => 'పాటలు కనుగొనబడలేదు';

  @override
  String get lyricsJustListening => 'ఇది వినడానికి మాత్రమే';

  @override
  String get lyricsTrySource => 'మరో మూలాన్ని ప్రయత్నించండి';

  @override
  String get lyricsSource => 'పాటల మూలం';

  @override
  String get lyricsWordSynced => 'పదం-సమకాలీకరణ';

  @override
  String get lyricsLineSynced => 'లైన్-సమకాలీకరణ';

  @override
  String get lyricsUnsynced => 'సమకాలీకరణ లేదు';

  @override
  String get plNoPlaylists => 'ఇంకా ప్లేలిస్ట్లు లేవు — ముందు ఒకటి చేయండి!';

  @override
  String get plAddToPlaylist => 'ప్లేలిస్ట్‌కి జోడించండి';

  @override
  String plAddedTo(String name) {
    return '$nameకి జోడించబడింది';
  }

  @override
  String get shareLyrics => 'పాటలను షేర్ చేయండి';

  @override
  String get shareMaxLines => 'గరిష్ట లైన్లు ఎంచుకోబడ్డాయి';

  @override
  String sharePickLines(int count) {
    return 'గరిష్టంగా $count లైన్లు ఎంచుకోండి';
  }

  @override
  String get sharePickHint => 'క్రింద కొన్ని లైన్లు ఎంచుకోండి…';

  @override
  String get shareButton => 'షేర్';

  @override
  String get batTitle => 'సంగీతం ప్లే అవుతూ ఉండనివ్వండి 🎵';

  @override
  String get batBody =>
      'Android బ్యాటరీ ఆప్టిమైజేషన్ స్క్రీన్ ఆఫ్ అయినప్పుడు మీ సంగీతాన్ని ఆపవచ్చు. Hana360 నిర్బంధం లేకుండా నడపడానికి అనుమతించండి.\n\nదీన్ని You → \"నేపథ్యంలో ప్లే చేస్తూ ఉండండి\"లో మార్చవచ్చు.';

  @override
  String get batNotNow => 'ఇప్పుడు కాదు';

  @override
  String get batAllow => 'అనుమతించండి';

  @override
  String get algoSwitch => 'అల్గోరిథం';

  @override
  String get speakerDistance => 'స్పీకర్ దూరం';

  @override
  String get channelTrim => 'ఛానల్ సర్దుబాటు';

  @override
  String get masterGain => 'మాస్టర్ గెయిన్';

  @override
  String get secHrtf => 'HRTF వ్యక్తిగతీకరణ';

  @override
  String get outputGain => 'అవుట్‌పుట్ గెయిన్';

  @override
  String get secEq => 'స్పేషల్ EQ';

  @override
  String get secReverb => 'ప్రతిధ్వని';

  @override
  String get roomSize => 'గది';

  @override
  String get reverbGain => 'ప్రతిధ్వని గెయిన్';

  @override
  String get secTracking => 'తల ట్రాకింగ్';

  @override
  String get trackOff => 'ఆఫ్';

  @override
  String get trackSensor => 'ఫోన్ సెన్సార్';

  @override
  String get trackManual => 'మాన్యువల్ XY';

  @override
  String get dragHint =>
      'తల దిశను సర్దుబాటు చేయడానికి లాగండి (ధ్వని క్షేత్రం అనుసరిస్తుంది)';

  @override
  String get customEq => 'కస్టమ్';

  @override
  String get eqPresetMusic => 'సంగీతం';

  @override
  String get eqPresetCinema => 'సినిమా';

  @override
  String get eqPresetGame => 'గేమ్';

  @override
  String get eqPresetVoice => 'వాయిస్';

  @override
  String get hrtfGroup0 => 'పురుషుడు / చిన్న తల / చిన్న చెవి';

  @override
  String get hrtfGroup1 => 'పురుషుడు / చిన్న తల / మధ్య చెవి';

  @override
  String get hrtfGroup2 => 'పురుషుడు / చిన్న తల / పెద్ద చెవి';

  @override
  String get hrtfGroup3 => 'పురుషుడు / మధ్య తల / చిన్న చెవి';

  @override
  String get hrtfGroup4 => 'పురుషుడు / మధ్య తల / మధ్య చెవి';

  @override
  String get hrtfGroup5 => 'పురుషుడు / మధ్య తల / పెద్ద చెవి';

  @override
  String get hrtfGroup6 => 'పురుషుడు / పెద్ద తల / చిన్న చెవి';

  @override
  String get hrtfGroup7 => 'పురుషుడు / పెద్ద తల / మధ్య చెవి';

  @override
  String get hrtfGroup8 => 'పురుషుడు / పెద్ద తల / పెద్ద చెవి';

  @override
  String get hrtfGroup9 => 'స్త్రీ / చిన్న తల / చిన్న చెవి';

  @override
  String get hrtfGroup10 => 'స్త్రీ / చిన్న తల / మధ్య చెవి';

  @override
  String get hrtfGroup11 => 'స్త్రీ / చిన్న తల / పెద్ద చెవి';

  @override
  String get hrtfGroup12 => 'స్త్రీ / మధ్య తల / చిన్న చెవి';

  @override
  String get hrtfGroup13 => 'స్త్రీ / మధ్య తల / మధ్య చెవి';

  @override
  String get hrtfGroup14 => 'స్త్రీ / మధ్య తల / పెద్ద చెవి';

  @override
  String get navHome => 'హోమ్';

  @override
  String get navLibrary => 'లైబ్రరీ';

  @override
  String get navPlaying => 'ప్లే అవుతోంది';

  @override
  String get navYou => 'మీరు';

  @override
  String get tabSongs => 'పాటలు';

  @override
  String get tabAlbums => 'ఆల్బమ్‌లు';

  @override
  String get tabFolders => 'ఫోల్డర్లు';

  @override
  String get tabPlaylists => 'ప్లేలిస్ట్‌లు';

  @override
  String get youMood => 'మూడ్';

  @override
  String get youCompanion => 'మీ సహచరుడు';

  @override
  String get youBuddies => 'స్నేహితులు';

  @override
  String get youSound => 'ధ్వని';

  @override
  String get youMore => 'మరిన్ని';

  @override
  String get themeCherryBlossom => 'చెర్రీ బ్లాసమ్';

  @override
  String get themeStarryNight => 'నక్షత్రాల రాత్రి';

  @override
  String get themeAdaptiveLight => 'అనుకూల లైట్';

  @override
  String get themeAdaptiveDark => 'అనుకూల డార్క్';

  @override
  String youListenedTogether(int h, int m) {
    return 'కలిసి $h గం $m ని విన్నారు';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'హెడర్ & ప్లేయర్';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'లైబ్రరీ టైటిల్‌పై కూర్చుంటుంది';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'మినీ ప్లేయర్‌పై నిద్రిస్తుంది';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'ఇష్టమైన పాటలపై నడుస్తుంది';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'డార్క్ థీమ్‌లలో మెరుస్తుంది';

  @override
  String get accBow => 'పింక్ బో';

  @override
  String get accHeadphones => 'చిన్న హెడ్‌ఫోన్';

  @override
  String get accFlower => 'పువ్వు';

  @override
  String get accCrown => 'చిన్న కిరీటం';

  @override
  String accUnlockLabel(int h) {
    return '$h గంటలు విని అన్‌లాక్ చేయండి';
  }

  @override
  String get youCrossfade => 'క్రాస్‌ఫేడ్';

  @override
  String get youCrossfadeSub => 'పాట చివరను తదుపరిదానిలో కలపండి';

  @override
  String get youSmartShuffle => 'స్మార్ట్ షఫుల్';

  @override
  String get youSmartShuffleSub =>
      'షఫుల్ మీ ఇష్టమైనవాటికి మొగ్గుతుంది — ఈ పరికరంలో లెక్కించబడుతుంది';

  @override
  String get libLikedSongs => 'ఇష్టమైన పాటలు';

  @override
  String get libTapHeart => 'పాటలోని హృదయాన్ని నొక్కి ఇక్కడ ఉంచండి';

  @override
  String get libRemovedFromQueue => 'క్యూ నుండి తీసివేయబడింది';

  @override
  String get libRemovedFromLibrary => 'లైబ్రరీ నుండి తీసివేయబడింది';

  @override
  String get libRemoveFromLibrary => 'లైబ్రరీ నుండి తీసివేయండి';

  @override
  String get libNewPlaylist => 'కొత్త ప్లేలిస్ట్';

  @override
  String get libPlaylistName => 'ప్లేలిస్ట్ పేరు';

  @override
  String get libCreate => 'సృష్టించండి';

  @override
  String get libSwipeHint =>
      'తీసివేయడానికి ఎడమకు స్వైప్ · క్రమబద్ధీకరించడానికి పట్టుకోండి';

  @override
  String get libChooseCover => 'కవర్ చిత్రాన్ని ఎంచుకోండి';

  @override
  String get libBackToArtCover => 'పాట కవర్‌కు తిరిగి వెళ్లండి';

  @override
  String libDeleteConfirm(String name) {
    return '\"$name\"ని తొలగించాలా?';
  }

  @override
  String get libDeleteKeepSongs => 'పాటలు మీ పరికరంలోనే ఉంటాయి';

  @override
  String get libKeep => 'ఉంచండి';

  @override
  String get libDelete => 'తొలగించండి';

  @override
  String get libRemoveKeepFile => 'ఫైల్ మీ పరికరంలోనే ఉంటుంది';

  @override
  String get libClearConfirm => 'అన్ని ఫైల్లను తీసివేయాలా?';

  @override
  String get libLibraryCleared => 'లైబ్రరీ క్లియర్ చేయబడింది';

  @override
  String get libPickAudioFiles => 'ఆడియో ఫైల్లను ఎంచుకోండి…';

  @override
  String get libImportFolder => 'ఫోల్డర్ దిగుమతి చేయండి';

  @override
  String get libScanWholeFolder => 'మొత్తం ఫోల్డర్ స్కాన్… (సిఫార్సు)';

  @override
  String libImportFailed(String error) {
    return 'దిగుమతి విఫలమైంది: $error';
  }

  @override
  String get libNoAudioFound => 'ఆడియో ఫైల్ కనుగొనబడలేదు';

  @override
  String libImportedCount(int count) {
    return '$count పాటలు దిగుమతి అయ్యాయి';
  }

  @override
  String get libNothingHere =>
      'ఇంకా ఏమీ లేదు — తీసివేయడానికి ఎడమకు స్వైప్, క్రమబద్ధీకరించడానికి పట్టుకోండి';

  @override
  String get sidebarYourLibrary => 'మీ లైబ్రరీ';

  @override
  String get sidebarPlaylists => 'ప్లేలిస్ట్‌లు';

  @override
  String get sidebarFolders => 'ఫోల్డర్లు';

  @override
  String get rowQueue => 'క్యూ';

  @override
  String get rowRemove => 'తీసివేయండి';

  @override
  String get rowPlaylist => 'ప్లేలిస్ట్';

  @override
  String plTrackCount(int count) {
    return '$count ట్రాక్లు';
  }

  @override
  String get lyricsSourceAuto => 'ఆటో';

  @override
  String get lyricsSourceEmbedded => 'ఎంబెడెడ్';

  @override
  String get lyricsSourceBestQuality => 'అందుబాటులో ఉన్న ఉత్తమ నాణ్యత';

  @override
  String get lyricsSourceFileTags => 'ఆడియో ఫైల్ సొంత ట్యాగ్ల నుండి';

  @override
  String get lyricsSourceWordOnline => 'పదం-సమకాలీకరణ (ఆన్‌లైన్)';

  @override
  String get lyricsSourceLineOnline => 'లైన్-సమకాలీకరణ (ఆన్‌లైన్)';

  @override
  String get lyricsSourceNotFound => 'ఈ పాటకు కనుగొనబడలేదు';

  @override
  String get npCatModeUnlocked => 'మ్యావ్?! పిల్లి మోడ్ అన్‌లాక్ అయింది 🐱';

  @override
  String get shellResumePlayback => 'ప్లేబ్యాక్ కొనసాగించండి';

  @override
  String get shellPlay => 'ప్లే';

  @override
  String get devSection => 'డెవలపర్';

  @override
  String get devModeUnlocked => '🛠️ డెవలపర్ మోడ్ అన్‌లాక్ అయింది';

  @override
  String get devUnlockAll => 'అన్ని ఉపకరణాలు అన్‌లాక్ చేయండి';

  @override
  String get devClearLyricsCache => 'పాటల క్యాష్ క్లియర్ చేయండి';

  @override
  String get devRefetchLyrics => 'అన్ని పాటలను మళ్లీ తీసుకురండి…';

  @override
  String get devLyricsCleared => 'పాటల క్యాష్ క్లియర్ అయింది';

  @override
  String get devHideOptions => 'డెవలపర్ ఎంపికలను దాచండి';

  @override
  String get devModeOff => 'డెవలపర్ మోడ్ ఆఫ్';

  @override
  String get youCantReadFolders => 'మీ సంగీత ఫోల్డర్లను చదవలేకపోయింది';

  @override
  String get youNoMusicFolders => 'సంగీత ఫోల్డర్ కనుగొనబడలేదు';
}
