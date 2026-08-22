// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'भाषा';

  @override
  String get languageFollowSystem => 'सिस्टम का पालन करें';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Baseus × Hanamimi';

  @override
  String get commonCancel => 'रद्द करें';

  @override
  String get commonConfirm => 'ठीक है';

  @override
  String get commonBack => 'वापस';

  @override
  String get commonDone => 'हो गया';

  @override
  String get commonUnknown => 'अज्ञात';

  @override
  String get secUpmix => 'अपमिक्स इंजन';

  @override
  String get spatialAudioTitle => '360 स्थानिक ऑडियो';

  @override
  String get npNothingPlaying => 'कुछ नहीं चल रहा';

  @override
  String get npPickSong => 'अपनी लाइब्रेरी से एक गाना चुनें';

  @override
  String get npSpatialSettings => '360 सेटिंग्स';

  @override
  String get npLyrics => 'बोल';

  @override
  String get libSearchHint => 'अपना संगीत खोजें…';

  @override
  String get libClearLibrary => 'लाइब्रेरी खाली करें';

  @override
  String get libImportMusic => 'संगीत आयात करें';

  @override
  String libError(String error) {
    return 'कुछ गड़बड़ हुई: $error';
  }

  @override
  String libNoMatch(String query) {
    return '\"$query\" से कुछ मेल नहीं खाता';
  }

  @override
  String get libPermissionDenied =>
      'आपका संगीत ढूंढने के लिए Hana360 को अनुमति चाहिए\nइस डिवाइस पर पहुंच नहीं? आयात करें।';

  @override
  String get libNoSongs =>
      'इस डिवाइस पर कोई गाना नहीं मिला\nअपनी फ़ाइलों से संगीत आयात करें';

  @override
  String get libGrantAccess => 'पहुंच दें';

  @override
  String get libRescan => 'फिर से स्कैन करें';

  @override
  String get libAddedToQueue => 'कतार में जोड़ा गया';

  @override
  String get libNoAlbums => 'अभी कोई एल्बम नहीं';

  @override
  String get libNoFolders => 'अभी कोई फ़ोल्डर नहीं';

  @override
  String get libNoPlaylists => 'अभी कोई प्लेलिस्ट नहीं';

  @override
  String libPlaylistCreated(String name) {
    return 'प्लेलिस्ट \"$name\" बनाई गई 🌸';
  }

  @override
  String get libFolderHint => 'फ़ोल्डर को प्लेलिस्ट बनाने के लिए देर तक दबाएँ';

  @override
  String libSongCount(int count) {
    return '$count गाने';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$count गाने · $path';
  }

  @override
  String get homeGreetingLate => 'देर रात तक जाग रहे ♪';

  @override
  String get homeGreetingMorning => 'सुप्रभात ♪';

  @override
  String get homeGreetingAfternoon => 'नमस्ते ♪';

  @override
  String get homeGreetingEvening => 'शुभ संध्या ♪';

  @override
  String get homeJumpBackIn => 'फिर से सुनें';

  @override
  String get homeForYou => 'आपके लिए';

  @override
  String get homeForYouSub => 'आपके सुनने के आधार पर, इस डिवाइस पर चुना गया';

  @override
  String get homeWelcome => 'Hana360 में आपका स्वागत है 🌸';

  @override
  String get homeAllQuiet => 'सब शांत 🌸';

  @override
  String get homeLibraryHint =>
      'आपका संगीत लाइब्रेरी टैब में है — वहाँ फ़ोल्डर जोड़ें। जो भी आप बजाते हैं वह यहाँ इकट्ठा होता है।';

  @override
  String get homePlayHint =>
      'कुछ बजाएँ और अगली बार वह यहाँ आपका इंतज़ार करेगा।';

  @override
  String get youRescanLibrary => 'लाइब्रेरी फिर से स्कैन करें';

  @override
  String get youExcludedFolders => 'छोड़े गए फ़ोल्डर';

  @override
  String get youExcludedFoldersSub => 'अपनी लाइब्रेरी से फ़ोल्डर छिपाएँ';

  @override
  String get youCatMode => 'बिल्ली मोड';

  @override
  String get youAbout => 'जानकारी';

  @override
  String get youScanning => 'आपका संगीत स्कैन हो रहा है…';

  @override
  String get youOpenSource => 'ओपन सोर्स';

  @override
  String get youOpenSourceSub =>
      'Hana360 ShaptakNaskar के Hanamimi (GPLv3) का व्युत्पन्न है — 2026-08-10 को संशोधित';

  @override
  String get youCheckUpdates => 'अपडेट जाँचें';

  @override
  String get youCheckUpdatesSub => 'नए बिल्ड GitHub Releases पर आते हैं';

  @override
  String get youUpToDate => 'आप नवीनतम संस्करण पर हैं 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Sappy द्वारा निर्मित';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'बैकग्राउंड में चलाते रहें';

  @override
  String get youKeepPlayingAllowed => 'अनुमत — सिस्टम आपका संगीत नहीं रोकेगा';

  @override
  String get youKeepPlayingTap =>
      'सिस्टम को प्लेबैक रोकने से बचाने के लिए टैप करें';

  @override
  String get youExcludedFoldersTitle => 'छोड़े गए फ़ोल्डर';

  @override
  String get youExcludedFoldersDesc =>
      'बंद किए गए फ़ोल्डर के गाने आपकी लाइब्रेरी से बाहर रहते हैं';

  @override
  String get youVisSensitivity => 'विज़ुअलाइज़र संवेदनशीलता';

  @override
  String get youVisSensitivitySub => 'कम हिलने वाले गानों के लिए बढ़ाएँ';

  @override
  String get youNerdMode => 'नर्ड मोड';

  @override
  String get youNerdModeSub => 'प्लेयर पर कोडेक, बिटरेट और आउटपुट दिखाएँ';

  @override
  String get youEqualizer => 'इक्वलाइज़र';

  @override
  String get youComingSoon => 'जल्द आ रहा है';

  @override
  String get sleepTimer => 'स्लीप टाइमर';

  @override
  String get sleep15 => '15 मिनट';

  @override
  String get sleep30 => '30 मिनट';

  @override
  String get sleep1h => '1 घंटा';

  @override
  String get sleepEndTrack => 'गाने के अंत में';

  @override
  String get sleepFading => 'फेड आउट… मीठे सपने';

  @override
  String sleepIn(String time) {
    return '$time में सोएँ';
  }

  @override
  String get sleepEndTrackActive => 'यह गाना खत्म होने पर सोएँ';

  @override
  String get sleepCancel => 'टाइमर रद्द करें';

  @override
  String get queueUpNext => 'आगे';

  @override
  String get queueEmpty => 'कतार खाली है';

  @override
  String get updateAvailable => 'अपडेट उपलब्ध ✨';

  @override
  String get updateNoNotes => 'कोई रिलीज़ नोट नहीं।';

  @override
  String get updateInstalling => 'इंस्टॉलर खुल रहा है…';

  @override
  String get updateFailed => 'अपडेट नहीं हो सका — बाद में दोबारा कोशिश करें';

  @override
  String get updateLater => 'बाद में';

  @override
  String get updateRetry => 'दोबारा कोशिश';

  @override
  String get updateNow => 'अपडेट करें';

  @override
  String get spatialToggleTitle => '360 स्थानिक ऑडियो';

  @override
  String get spatialOn => 'चालू';

  @override
  String get spatialOff => 'बंद';

  @override
  String get lyricsNoFound => 'कोई बोल नहीं मिले';

  @override
  String get lyricsJustListening => 'यह सिर्फ़ सुनने के लिए है';

  @override
  String get lyricsTrySource => 'कोई और स्रोत आज़माएँ';

  @override
  String get lyricsSource => 'बोल स्रोत';

  @override
  String get lyricsWordSynced => 'शब्द-समकालित';

  @override
  String get lyricsLineSynced => 'पंक्ति-समकालित';

  @override
  String get lyricsUnsynced => 'असमकालित';

  @override
  String get plNoPlaylists => 'अभी कोई प्लेलिस्ट नहीं — पहले बनाएँ!';

  @override
  String get plAddToPlaylist => 'प्लेलिस्ट में जोड़ें';

  @override
  String plAddedTo(String name) {
    return '$name में जोड़ा गया';
  }

  @override
  String get shareLyrics => 'बोल साझा करें';

  @override
  String get shareMaxLines => 'अधिकतम पंक्तियाँ चुनी गईं';

  @override
  String sharePickLines(int count) {
    return 'अधिकतम $count पंक्तियाँ चुनें';
  }

  @override
  String get sharePickHint => 'नीचे कुछ पंक्तियाँ चुनें…';

  @override
  String get shareButton => 'साझा करें';

  @override
  String get batTitle => 'संगीत चलता रहे 🎵';

  @override
  String get batBody =>
      'Android की बैटरी ऑप्टिमाइज़ेशन स्क्रीन बंद होने पर आपका संगीत रोक सकती है। Hana360 को बिना रोक-टोक चलने दें।\n\nइसे You → \"बैकग्राउंड में चलाते रहें\" से कभी भी बदल सकते हैं।';

  @override
  String get batNotNow => 'अभी नहीं';

  @override
  String get batAllow => 'अनुमति दें';

  @override
  String get algoSwitch => 'एल्गोरिथम';

  @override
  String get speakerDistance => 'स्पीकर दूरी';

  @override
  String get channelTrim => 'चैनल समायोजन';

  @override
  String get masterGain => 'मास्टर गेन';

  @override
  String get secHrtf => 'HRTF वैयक्तिकरण';

  @override
  String get outputGain => 'आउटपुट गेन';

  @override
  String get secEq => 'स्थानिक EQ';

  @override
  String get secReverb => 'रिवर्ब';

  @override
  String get roomSize => 'कमरा';

  @override
  String get reverbGain => 'रिवर्ब गेन';

  @override
  String get secTracking => 'सिर ट्रैकिंग';

  @override
  String get trackOff => 'बंद';

  @override
  String get trackSensor => 'फ़ोन सेंसर';

  @override
  String get trackManual => 'मैनुअल XY';

  @override
  String get dragHint =>
      'सिर की दिशा समायोजित करने के लिए खींचें (ध्वनि क्षेत्र साथ चलता है)';

  @override
  String get customEq => 'कस्टम';

  @override
  String get eqPresetMusic => 'संगीत';

  @override
  String get eqPresetCinema => 'सिनेमा';

  @override
  String get eqPresetGame => 'गेम';

  @override
  String get eqPresetVoice => 'आवाज़';

  @override
  String get hrtfGroup0 => 'पुरुष / छोटा / छोटा';

  @override
  String get hrtfGroup1 => 'पुरुष / छोटा / मध्यम';

  @override
  String get hrtfGroup2 => 'पुरुष / छोटा / बड़ा';

  @override
  String get hrtfGroup3 => 'पुरुष / मध्यम / छोटा';

  @override
  String get hrtfGroup4 => 'पुरुष / मध्यम / मध्यम';

  @override
  String get hrtfGroup5 => 'पुरुष / मध्यम / बड़ा';

  @override
  String get hrtfGroup6 => 'पुरुष / बड़ा / छोटा';

  @override
  String get hrtfGroup7 => 'पुरुष / बड़ा / मध्यम';

  @override
  String get hrtfGroup8 => 'पुरुष / बड़ा / बड़ा';

  @override
  String get hrtfGroup9 => 'महिला / छोटा / छोटा';

  @override
  String get hrtfGroup10 => 'महिला / छोटा / मध्यम';

  @override
  String get hrtfGroup11 => 'महिला / छोटा / बड़ा';

  @override
  String get hrtfGroup12 => 'महिला / मध्यम / छोटा';

  @override
  String get hrtfGroup13 => 'महिला / मध्यम / मध्यम';

  @override
  String get hrtfGroup14 => 'महिला / मध्यम / बड़ा';

  @override
  String get navHome => 'होम';

  @override
  String get navLibrary => 'लाइब्रेरी';

  @override
  String get navPlaying => 'चल रहा है';

  @override
  String get navYou => 'आप';

  @override
  String get tabSongs => 'गाने';

  @override
  String get tabAlbums => 'एल्बम';

  @override
  String get tabFolders => 'फ़ोल्डर';

  @override
  String get tabPlaylists => 'प्लेलिस्ट';

  @override
  String get youMood => 'मूड';

  @override
  String get youCompanion => 'आपकी साथी';

  @override
  String get youBuddies => 'दोस्त';

  @override
  String get youSound => 'ध्वनि';

  @override
  String get youMore => 'और';

  @override
  String get themeCherryBlossom => 'चेरी ब्लॉसम';

  @override
  String get themeStarryNight => 'तारों भरी रात';

  @override
  String get themeAdaptiveLight => 'अनुकूली लाइट';

  @override
  String get themeAdaptiveDark => 'अनुकूली डार्क';

  @override
  String youListenedTogether(int h, int m) {
    return '$h घंटे $m मिनट साथ सुना';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'हेडर और प्लेयर';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'लाइब्रेरी शीर्षक पर बैठता है';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'मिनी प्लेयर पर झपकी लेती है';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'पसंदीदा गानों पर चलती है';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'डार्क थीम पर चमकते हैं';

  @override
  String get accBow => 'गुलाबी धनुष';

  @override
  String get accHeadphones => 'छोटे हेडफ़ोन';

  @override
  String get accFlower => 'फूल';

  @override
  String get accCrown => 'छोटा ताज';

  @override
  String accUnlockLabel(int h) {
    return '$h घंटे सुनें';
  }

  @override
  String get youCrossfade => 'क्रॉसफ़ेड';

  @override
  String get youCrossfadeSub => 'गाने के अंत को अगले में मिलाएँ';

  @override
  String get youSmartShuffle => 'स्मार्ट शफ़ल';

  @override
  String get youSmartShuffleSub =>
      'शफ़ल आपके पसंदीदा को प्राथमिकता देता है — इस डिवाइस पर गणना';

  @override
  String get libLikedSongs => 'पसंदीदा गाने';

  @override
  String get libTapHeart => 'गाने को यहाँ रखने के लिए उसके दिल पर टैप करें';

  @override
  String get libRemovedFromQueue => 'कतार से हटाया गया';

  @override
  String get libRemovedFromLibrary => 'लाइब्रेरी से हटाया गया';

  @override
  String get libRemoveFromLibrary => 'लाइब्रेरी से हटाएँ';

  @override
  String get libNewPlaylist => 'नई प्लेलिस्ट';

  @override
  String get libPlaylistName => 'प्लेलिस्ट का नाम';

  @override
  String get libCreate => 'बनाएँ';

  @override
  String get libSwipeHint =>
      'हटाने के लिए बाएँ स्वाइप करें · क्रम बदलने के लिए दबाए रखें';

  @override
  String get libChooseCover => 'कवर छवि चुनें';

  @override
  String get libBackToArtCover => 'गाने के कवर पर वापस जाएँ';

  @override
  String libDeleteConfirm(String name) {
    return '\"$name\" हटाएँ?';
  }

  @override
  String get libDeleteKeepSongs => 'गाने आपके डिवाइस पर बने रहेंगे';

  @override
  String get libKeep => 'रखें';

  @override
  String get libDelete => 'हटाएँ';

  @override
  String get libRemoveKeepFile => 'फ़ाइल आपके डिवाइस पर बनी रहेगी';

  @override
  String get libClearConfirm => 'सभी फ़ाइलें हटाएँ?';

  @override
  String get libLibraryCleared => 'लाइब्रेरी खाली हो गई';

  @override
  String get libPickAudioFiles => 'ऑडियो फ़ाइलें चुनें…';

  @override
  String get libImportFolder => 'फ़ोल्डर आयात करें';

  @override
  String get libScanWholeFolder => 'पूरा फ़ोल्डर स्कैन करें… (अनुशंसित)';

  @override
  String libImportFailed(String error) {
    return 'आयात विफल: $error';
  }

  @override
  String get libNoAudioFound => 'कोई ऑडियो फ़ाइल नहीं मिली';

  @override
  String libImportedCount(int count) {
    return '$count गाने आयात हुए';
  }

  @override
  String get libNothingHere =>
      'अभी कुछ नहीं — हटाने के लिए बाएँ स्वाइप करें, क्रम बदलने के लिए दबाए रखें';

  @override
  String get sidebarYourLibrary => 'आपकी लाइब्रेरी';

  @override
  String get sidebarPlaylists => 'प्लेलिस्ट';

  @override
  String get sidebarFolders => 'फ़ोल्डर';

  @override
  String get rowQueue => 'कतार';

  @override
  String get rowRemove => 'हटाएँ';

  @override
  String get rowPlaylist => 'प्लेलिस्ट';

  @override
  String plTrackCount(int count) {
    return '$count ट्रैक';
  }

  @override
  String get lyricsSourceAuto => 'ऑटो';

  @override
  String get lyricsSourceEmbedded => 'एम्बेडेड';

  @override
  String get lyricsSourceBestQuality => 'सर्वोत्तम उपलब्ध गुणवत्ता';

  @override
  String get lyricsSourceFileTags => 'ऑडियो फ़ाइल के अपने टैग से';

  @override
  String get lyricsSourceWordOnline => 'शब्द-समकालित (ऑनलाइन)';

  @override
  String get lyricsSourceLineOnline => 'पंक्ति-समकालित (ऑनलाइन)';

  @override
  String get lyricsSourceNotFound => 'इस गाने के लिए नहीं मिला';

  @override
  String get npCatModeUnlocked => 'म्याऊँ?! बिल्ली मोड अनलॉक 🐱';

  @override
  String get shellResumePlayback => 'प्लेबैक फिर से शुरू करें';

  @override
  String get shellPlay => 'चलाएँ';

  @override
  String get devSection => 'डेवलपर';

  @override
  String get devModeUnlocked => '🛠️ डेवलपर मोड अनलॉक हुआ';

  @override
  String get devUnlockAll => 'सभी एक्सेसरीज़ अनलॉक करें';

  @override
  String get devClearLyricsCache => 'बोल कैश साफ़ करें';

  @override
  String get devRefetchLyrics => 'सभी बोल फिर से लाएँ…';

  @override
  String get devLyricsCleared => 'बोल कैश साफ़ हो गया';

  @override
  String get devHideOptions => 'डेवलपर विकल्प छिपाएँ';

  @override
  String get devModeOff => 'डेवलपर मोड बंद';

  @override
  String get youCantReadFolders => 'आपके संगीत फ़ोल्डर नहीं पढ़े जा सके';

  @override
  String get youNoMusicFolders => 'कोई संगीत फ़ोल्डर नहीं मिला';
}
