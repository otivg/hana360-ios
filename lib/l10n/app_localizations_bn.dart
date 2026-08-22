// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appName => 'Hana360';

  @override
  String get languageSettings => 'ভাষা';

  @override
  String get languageFollowSystem => 'সিস্টেম অনুসরণ করুন';

  @override
  String get languageChinese => '中文';

  @override
  String get languageEnglish => 'English';

  @override
  String get splashEnter => 'Baseus × Hanamimi';

  @override
  String get commonCancel => 'বাতিল';

  @override
  String get commonConfirm => 'ঠিক আছে';

  @override
  String get commonBack => 'ফিরে যান';

  @override
  String get commonDone => 'সম্পন্ন';

  @override
  String get commonUnknown => 'অজানা';

  @override
  String get secUpmix => 'আপমিক্স ইঞ্জিন';

  @override
  String get spatialAudioTitle => '৩৬০ স্থানিক অডিও';

  @override
  String get npNothingPlaying => 'কিছু চলছে না';

  @override
  String get npPickSong => 'আপনার লাইব্রেরি থেকে একটি গান চয়ন করুন';

  @override
  String get npSpatialSettings => '৩৬০ সেটিংস';

  @override
  String get npLyrics => 'গানের কথা';

  @override
  String get libSearchHint => 'আপনার সঙ্গীত খুঁজুন…';

  @override
  String get libClearLibrary => 'লাইব্রেরি খালি করুন';

  @override
  String get libImportMusic => 'সঙ্গীত আমদানি করুন';

  @override
  String libError(String error) {
    return 'কিছু ভুল হয়েছে: $error';
  }

  @override
  String libNoMatch(String query) {
    return '\"$query\" এর সাথে কিছু মেলে না';
  }

  @override
  String get libPermissionDenied =>
      'আপনার সঙ্গীত খুঁজতে Hana360-এর অনুমতি প্রয়োজন\nএই ডিভাইসে অ্যাক্সেস নেই? আমদানি করুন।';

  @override
  String get libNoSongs =>
      'এই ডিভাইসে কোনো গান পাওয়া যায়নি\nআপনার ফাইল থেকে সঙ্গীত আমদানি করুন';

  @override
  String get libGrantAccess => 'অ্যাক্সেস দিন';

  @override
  String get libRescan => 'আবার স্ক্যান করুন';

  @override
  String get libAddedToQueue => 'কিউতে যোগ হয়েছে';

  @override
  String get libNoAlbums => 'এখনও কোনো অ্যালবাম নেই';

  @override
  String get libNoFolders => 'এখনও কোনো ফোল্ডার নেই';

  @override
  String get libNoPlaylists => 'এখনও কোনো প্লেলিস্ট নেই';

  @override
  String libPlaylistCreated(String name) {
    return 'প্লেলিস্ট \"$name\" তৈরি হয়েছে 🌸';
  }

  @override
  String get libFolderHint =>
      'ফোল্ডারকে প্লেলিস্টে রূপান্তর করতে দীর্ঘক্ষণ চাপ দিন';

  @override
  String libSongCount(int count) {
    return '$countটি গান';
  }

  @override
  String libSongCountPath(int count, String path) {
    return '$countটি গান · $path';
  }

  @override
  String get homeGreetingLate => 'দেরি রাত পর্যন্ত জেগে ♪';

  @override
  String get homeGreetingMorning => 'শুভ সকাল ♪';

  @override
  String get homeGreetingAfternoon => 'শুভ অপরাহ্ন ♪';

  @override
  String get homeGreetingEvening => 'শুভ সন্ধ্যা ♪';

  @override
  String get homeJumpBackIn => 'আবার শুনুন';

  @override
  String get homeForYou => 'আপনার জন্য';

  @override
  String get homeForYouSub => 'আপনার শোনার ভিত্তিতে, এই ডিভাইসে নির্বাচিত';

  @override
  String get homeWelcome => 'Hana360-এ স্বাগতম 🌸';

  @override
  String get homeAllQuiet => 'সব শান্ত 🌸';

  @override
  String get homeLibraryHint =>
      'আপনার সঙ্গীত লাইব্রেরি ট্যাবে আছে — সেখানে ফোল্ডার যোগ করুন। যা বাজান সব এখানে জমা হয়।';

  @override
  String get homePlayHint =>
      'কিছু বাজান এবং পরের বার এটি এখানে আপনার জন্য অপেক্ষা করবে।';

  @override
  String get youRescanLibrary => 'লাইব্রেরি আবার স্ক্যান করুন';

  @override
  String get youExcludedFolders => 'বাদ দেওয়া ফোল্ডার';

  @override
  String get youExcludedFoldersSub => 'আপনার লাইব্রেরি থেকে ফোল্ডার লুকান';

  @override
  String get youCatMode => 'বিড়াল মোড';

  @override
  String get youAbout => 'সম্পর্কে';

  @override
  String get youScanning => 'আপনার সঙ্গীত স্ক্যান হচ্ছে…';

  @override
  String get youOpenSource => 'ওপেন সোর্স';

  @override
  String get youOpenSourceSub =>
      'Hana360 হল ShaptakNaskar-এর Hanamimi (GPLv3)-এর একটি উদ্ভূত সংস্করণ — 2026-08-10 তারিখে পরিবর্তিত';

  @override
  String get youCheckUpdates => 'আপডেট পরীক্ষা করুন';

  @override
  String get youCheckUpdatesSub => 'নতুন বিল্ড GitHub Releases-এ আসে';

  @override
  String get youUpToDate => 'আপনি সর্বশেষ সংস্করণে আছেন 🐾';

  @override
  String get youGithub => 'GitHub';

  @override
  String get youGithubSub => 'github.com/ShaptakNaskar';

  @override
  String get youMadeBy => 'Sappy-এর তৈরি';

  @override
  String get youMadeBySub => 'sappy-dir.vercel.app';

  @override
  String get youKeepPlaying => 'ব্যাকগ্রাউন্ডে চালিয়ে যান';

  @override
  String get youKeepPlayingAllowed =>
      'অনুমোদিত — সিস্টেম আপনার সঙ্গীত থামাবে না';

  @override
  String get youKeepPlayingTap =>
      'সিস্টেমকে প্লেব্যাক থামাতে বাধা দিতে ট্যাপ করুন';

  @override
  String get youExcludedFoldersTitle => 'বাদ দেওয়া ফোল্ডার';

  @override
  String get youExcludedFoldersDesc =>
      'বন্ধ করা ফোল্ডারের গান আপনার লাইব্রেরি থেকে বাদ থাকে';

  @override
  String get youVisSensitivity => 'ভিজ্যুয়ালাইজার সংবেদনশীলতা';

  @override
  String get youVisSensitivitySub => 'খুব কম নড়া গানের জন্য বাড়ান';

  @override
  String get youNerdMode => 'নার্ড মোড';

  @override
  String get youNerdModeSub => 'প্লেয়ারে কোডেক, বিটরেট ও আউটপুট দেখান';

  @override
  String get youEqualizer => 'ইকুয়ালাইজার';

  @override
  String get youComingSoon => 'শীঘ্রই আসছে';

  @override
  String get sleepTimer => 'ঘুমের টাইমার';

  @override
  String get sleep15 => '১৫ মিনিট';

  @override
  String get sleep30 => '৩০ মিনিট';

  @override
  String get sleep1h => '১ ঘণ্টা';

  @override
  String get sleepEndTrack => 'গানের শেষে';

  @override
  String get sleepFading => 'ম্লান হচ্ছে… মিষ্টি স্বপ্ন';

  @override
  String sleepIn(String time) {
    return '$time পরে ঘুমান';
  }

  @override
  String get sleepEndTrackActive => 'এই গান শেষ হলে ঘুমান';

  @override
  String get sleepCancel => 'টাইমার বাতিল করুন';

  @override
  String get queueUpNext => 'পরবর্তী';

  @override
  String get queueEmpty => 'কিউ খালি';

  @override
  String get updateAvailable => 'আপডেট উপলব্ধ ✨';

  @override
  String get updateNoNotes => 'কোনো রিলিজ নোট নেই।';

  @override
  String get updateInstalling => 'ইনস্টলার খুলছে…';

  @override
  String get updateFailed => 'আপডেট করা যায়নি — পরে আবার চেষ্টা করুন';

  @override
  String get updateLater => 'পরে';

  @override
  String get updateRetry => 'আবার চেষ্টা করুন';

  @override
  String get updateNow => 'আপডেট করুন';

  @override
  String get spatialToggleTitle => '৩৬০ স্থানিক অডিও';

  @override
  String get spatialOn => 'চালু';

  @override
  String get spatialOff => 'বন্ধ';

  @override
  String get lyricsNoFound => 'কোনো গানের কথা পাওয়া যায়নি';

  @override
  String get lyricsJustListening => 'এটি শুধু শোনার জন্য';

  @override
  String get lyricsTrySource => 'অন্য উৎস চেষ্টা করুন';

  @override
  String get lyricsSource => 'গানের কথার উৎস';

  @override
  String get lyricsWordSynced => 'শব্দ-সমন্বিত';

  @override
  String get lyricsLineSynced => 'লাইন-সমন্বিত';

  @override
  String get lyricsUnsynced => 'অসমন্বিত';

  @override
  String get plNoPlaylists => 'এখনও কোনো প্লেলিস্ট নেই — আগে একটি তৈরি করুন!';

  @override
  String get plAddToPlaylist => 'প্লেলিস্টে যোগ করুন';

  @override
  String plAddedTo(String name) {
    return '$name-এ যোগ হয়েছে';
  }

  @override
  String get shareLyrics => 'গানের কথা শেয়ার করুন';

  @override
  String get shareMaxLines => 'সর্বাধিক লাইন নির্বাচিত';

  @override
  String sharePickLines(int count) {
    return 'সর্বাধিক $countটি লাইন চয়ন করুন';
  }

  @override
  String get sharePickHint => 'নিচে কয়েকটি লাইন চয়ন করুন…';

  @override
  String get shareButton => 'শেয়ার করুন';

  @override
  String get batTitle => 'সঙ্গীত চলতে দিন 🎵';

  @override
  String get batBody =>
      'স্ক্রিন বন্ধ হলে Android-এর ব্যাটারি অপ্টিমাইজেশন আপনার সঙ্গীত থামাতে পারে। Hana360-কে নির্বিঘ্নে চলতে দিন।\n\nএটি You → \"ব্যাকগ্রাউন্ডে চালিয়ে যান\" থেকে যেকোনো সময় পরিবর্তন করা যাবে।';

  @override
  String get batNotNow => 'এখন নয়';

  @override
  String get batAllow => 'অনুমতি দিন';

  @override
  String get algoSwitch => 'অ্যালগরিদম';

  @override
  String get speakerDistance => 'স্পিকার দূরত্ব';

  @override
  String get channelTrim => 'চ্যানেল সমন্বয়';

  @override
  String get masterGain => 'মাস্টার গেইন';

  @override
  String get secHrtf => 'HRTF ব্যক্তিগতকরণ';

  @override
  String get outputGain => 'আউটপুট গেইন';

  @override
  String get secEq => 'স্থানিক EQ';

  @override
  String get secReverb => 'প্রতিধ্বনি';

  @override
  String get roomSize => 'কক্ষ';

  @override
  String get reverbGain => 'প্রতিধ্বনি গেইন';

  @override
  String get secTracking => 'মাথা ট্র্যাকিং';

  @override
  String get trackOff => 'বন্ধ';

  @override
  String get trackSensor => 'ফোন সেন্সর';

  @override
  String get trackManual => 'ম্যানুয়াল XY';

  @override
  String get dragHint =>
      'মাথার দিক সামঞ্জস্য করতে টানুন (শব্দক্ষেত্র অনুসরণ করে)';

  @override
  String get customEq => 'কাস্টম';

  @override
  String get eqPresetMusic => 'সঙ্গীত';

  @override
  String get eqPresetCinema => 'সিনেমা';

  @override
  String get eqPresetGame => 'গেম';

  @override
  String get eqPresetVoice => 'কণ্ঠ';

  @override
  String get hrtfGroup0 => 'পুরুষ / ছোট / ছোট';

  @override
  String get hrtfGroup1 => 'পুরুষ / ছোট / মাঝারি';

  @override
  String get hrtfGroup2 => 'পুরুষ / ছোট / বড়';

  @override
  String get hrtfGroup3 => 'পুরুষ / মাঝারি / ছোট';

  @override
  String get hrtfGroup4 => 'পুরুষ / মাঝারি / মাঝারি';

  @override
  String get hrtfGroup5 => 'পুরুষ / মাঝারি / বড়';

  @override
  String get hrtfGroup6 => 'পুরুষ / বড় / ছোট';

  @override
  String get hrtfGroup7 => 'পুরুষ / বড় / মাঝারি';

  @override
  String get hrtfGroup8 => 'পুরুষ / বড় / বড়';

  @override
  String get hrtfGroup9 => 'মহিলা / ছোট / ছোট';

  @override
  String get hrtfGroup10 => 'মহিলা / ছোট / মাঝারি';

  @override
  String get hrtfGroup11 => 'মহিলা / ছোট / বড়';

  @override
  String get hrtfGroup12 => 'মহিলা / মাঝারি / ছোট';

  @override
  String get hrtfGroup13 => 'মহিলা / মাঝারি / মাঝারি';

  @override
  String get hrtfGroup14 => 'মহিলা / মাঝারি / বড়';

  @override
  String get navHome => 'হোম';

  @override
  String get navLibrary => 'লাইব্রেরি';

  @override
  String get navPlaying => 'চলছে';

  @override
  String get navYou => 'আপনি';

  @override
  String get tabSongs => 'গান';

  @override
  String get tabAlbums => 'অ্যালবাম';

  @override
  String get tabFolders => 'ফোল্ডার';

  @override
  String get tabPlaylists => 'প্লেলিস্ট';

  @override
  String get youMood => 'মেজাজ';

  @override
  String get youCompanion => 'আপনার সঙ্গী';

  @override
  String get youBuddies => 'বন্ধুরা';

  @override
  String get youSound => 'শব্দ';

  @override
  String get youMore => 'আরও';

  @override
  String get themeCherryBlossom => 'চেরি ফুল';

  @override
  String get themeStarryNight => 'তারাভরা রাত';

  @override
  String get themeAdaptiveLight => 'অভিযোজিত আলো';

  @override
  String get themeAdaptiveDark => 'অভিযোজিত অন্ধকার';

  @override
  String youListenedTogether(int h, int m) {
    return 'একসাথে $h ঘণ্টা $m মিনিট শোনা হয়েছে';
  }

  @override
  String get buddyHana => 'Hanon';

  @override
  String get buddyHanaHome => 'হেডার ও প্লেয়ার';

  @override
  String get buddyParrot => 'Qingyu';

  @override
  String get buddyParrotHome => 'লাইব্রেরির শিরোনামে বসে';

  @override
  String get buddyCat => 'Yuemian';

  @override
  String get buddyCatHome => 'মিনি প্লেয়ারে ঘুমায়';

  @override
  String get buddyDuck => 'Paopao';

  @override
  String get buddyDuckHome => 'পছন্দের গানের উপর হাঁটে';

  @override
  String get buddyFireflies => 'Xingchen';

  @override
  String get buddyFirefliesHome => 'ডার্ক থিমে জ্বলে';

  @override
  String get accBow => 'গোলাপি ধনুক';

  @override
  String get accHeadphones => 'ছোট হেডফোন';

  @override
  String get accFlower => 'ফুল';

  @override
  String get accCrown => 'ছোট মুকুট';

  @override
  String accUnlockLabel(int h) {
    return '$h ঘণ্টা শুনুন';
  }

  @override
  String get youCrossfade => 'ক্রসফেড';

  @override
  String get youCrossfadeSub => 'গানের শেষ পরের গানে মিশিয়ে দিন';

  @override
  String get youSmartShuffle => 'স্মার্ট শাফল';

  @override
  String get youSmartShuffleSub =>
      'শাফল আপনার পছন্দের দিকে ঝোঁকে — এই ডিভাইসে গণনা করা হয়';

  @override
  String get libLikedSongs => 'পছন্দের গান';

  @override
  String get libTapHeart => 'গানটি এখানে রাখতে তার হৃদয়ে ট্যাপ করুন';

  @override
  String get libRemovedFromQueue => 'কিউ থেকে সরানো হয়েছে';

  @override
  String get libRemovedFromLibrary => 'লাইব্রেরি থেকে সরানো হয়েছে';

  @override
  String get libRemoveFromLibrary => 'লাইব্রেরি থেকে সরান';

  @override
  String get libNewPlaylist => 'নতুন প্লেলিস্ট';

  @override
  String get libPlaylistName => 'প্লেলিস্টের নাম';

  @override
  String get libCreate => 'তৈরি করুন';

  @override
  String get libSwipeHint => 'সরাতে বামে সোয়াইপ করুন · সাজাতে ধরে রাখুন';

  @override
  String get libChooseCover => 'প্রচ্ছদ চিত্র নির্বাচন করুন';

  @override
  String get libBackToArtCover => 'গানের প্রচ্ছদে ফিরুন';

  @override
  String libDeleteConfirm(String name) {
    return '\"$name\" মুছবেন?';
  }

  @override
  String get libDeleteKeepSongs => 'গানগুলো আপনার ডিভাইসেই থাকবে';

  @override
  String get libKeep => 'রাখুন';

  @override
  String get libDelete => 'মুছুন';

  @override
  String get libRemoveKeepFile => 'ফাইলটি আপনার ডিভাইসেই থাকবে';

  @override
  String get libClearConfirm => 'সব ফাইল সরাবেন?';

  @override
  String get libLibraryCleared => 'লাইব্রেরি খালি হয়েছে';

  @override
  String get libPickAudioFiles => 'অডিও ফাইল নির্বাচন করুন…';

  @override
  String get libImportFolder => 'ফোল্ডার আমদানি করুন';

  @override
  String get libScanWholeFolder => 'পুরো ফোল্ডার স্ক্যান করুন… (প্রস্তাবিত)';

  @override
  String libImportFailed(String error) {
    return 'আমদানি ব্যর্থ: $error';
  }

  @override
  String get libNoAudioFound => 'কোনো অডিও ফাইল পাওয়া যায়নি';

  @override
  String libImportedCount(int count) {
    return '$countটি গান আমদানি হয়েছে';
  }

  @override
  String get libNothingHere =>
      'এখনও কিছু নেই — সরাতে বামে সোয়াইপ করুন, সাজাতে ধরে রাখুন';

  @override
  String get sidebarYourLibrary => 'আপনার লাইব্রেরি';

  @override
  String get sidebarPlaylists => 'প্লেলিস্ট';

  @override
  String get sidebarFolders => 'ফোল্ডার';

  @override
  String get rowQueue => 'কিউ';

  @override
  String get rowRemove => 'সরান';

  @override
  String get rowPlaylist => 'প্লেলিস্ট';

  @override
  String plTrackCount(int count) {
    return '$countটি ট্র্যাক';
  }

  @override
  String get lyricsSourceAuto => 'স্বয়ংক্রিয়';

  @override
  String get lyricsSourceEmbedded => 'এমবেডেড';

  @override
  String get lyricsSourceBestQuality => 'সেরা উপলব্ধ মান';

  @override
  String get lyricsSourceFileTags => 'অডিও ফাইলের নিজস্ব ট্যাগ থেকে';

  @override
  String get lyricsSourceWordOnline => 'শব্দ-সমন্বিত (অনলাইন)';

  @override
  String get lyricsSourceLineOnline => 'লাইন-সমন্বিত (অনলাইন)';

  @override
  String get lyricsSourceNotFound => 'এই গানের জন্য পাওয়া যায়নি';

  @override
  String get npCatModeUnlocked => 'ম্যাও?! বিড়াল মোড আনলক হয়েছে 🐱';

  @override
  String get shellResumePlayback => 'প্লেব্যাক আবার শুরু করুন';

  @override
  String get shellPlay => 'চালান';

  @override
  String get devSection => 'ডেভেলপার';

  @override
  String get devModeUnlocked => '🛠️ ডেভেলপার মোড আনলক হয়েছে';

  @override
  String get devUnlockAll => 'সব এক্সেসরি আনলক করুন';

  @override
  String get devClearLyricsCache => 'গানের কথা ক্যাশ সাফ করুন';

  @override
  String get devRefetchLyrics => 'সব গানের কথা আবার আনুন…';

  @override
  String get devLyricsCleared => 'গানের কথা ক্যাশ সাফ হয়েছে';

  @override
  String get devHideOptions => 'ডেভেলপার অপশন লুকান';

  @override
  String get devModeOff => 'ডেভেলপার মোড বন্ধ';

  @override
  String get youCantReadFolders => 'আপনার সংগীত ফোল্ডার পড়া যায়নি';

  @override
  String get youNoMusicFolders => 'কোনো সংগীত ফোল্ডার পাওয়া যায়নি';
}
