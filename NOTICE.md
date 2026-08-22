# NOTICE · 派生声明 · Derivative Notice（多国语言）

> 选择你的语言 / Choose your language / 選擇你的語言 / 言語を選択 / 언어 선택 / Choisissez votre langue / Elige tu idioma / Wähle deine Sprache / Выберите язык / Escolha seu idioma / اختر لغتك / अपनी भाषा चुनें / Dilinizi seçin / Pilih bahasa Anda / Chọn ngôn ngữ / เลือกภาษาของคุณ:
>
> **[English](#english)** · **[简体中文](#简体中文)** · **[繁體中文](#繁體中文)** · **[日本語](#日本語)** · **[한국어](#한국어)** · **[Français](#français)** · **[Español](#español)** · **[Deutsch](#deutsch)** · **[Русский](#русский)** · **[Português](#português)** · **[العربية](#العربية)** · **[हिन्दी](#हिन्दी)** · **[Türkçe](#türkçe)** · **[Bahasa Indonesia](#bahasa-indonesia)** · **[Tiếng Việt](#tiếng-việt)** · **[ไทย](#ไทย)** · **[Italiano](#italiano)** · **[Nederlands](#nederlands)** · **[Polski](#polski)** · **[Svenska](#svenska)** · **[Norsk](#norsk)** · **[Dansk](#dansk)** · **[Suomi](#suomi)** · **[Čeština](#čeština)** · **[Magyar](#magyar)** · **[Română](#română)** · **[Slovenčina](#slovenčina)** · **[Hrvatski](#hrvatski)** · **[Slovenščina](#slovenščina)** · **[Українська](#українська)** · **[Ελληνικά](#ελληνικά)** · **[עברית](#עברית)** · **[Català](#català)** · **[Bahasa Melayu](#bahasa-melayu)** · **[ગુજરાતી](#ગુજરાતી)** · **[ಕನ್ನಡ](#ಕನ್ನಡ)** · **[മലയാളം](#മലയാളം)** · **[ଓଡ଼ିଆ](#ଓଡ଼ିଆ)** · **[ਪੰਜਾਬੀ](#ਪੰਜਾਬੀ)** · **[தமிழ்](#தமிழ்)**

---

<a id="english"></a>
## English

**Hana360 — iOS port of Hanamimi**

This software is a **derivative work** of the Hanamimi project (https://github.com/ShaptakNaskar/hanamimi), modified on **2026-08-10** for iOS (iPhone / iPad) with a self-built AVAudioEngine playback engine, 360° spatial audio DSP, and platform-specific audio/music-library integration.

**Original work**
- Project: Hanamimi (花耳) — a kawaii, offline-first music player for Android
- Author: Shaptak Naskar (https://github.com/ShaptakNaskar)
- License: GNU General Public License v3 (GPLv3)
- Upstream: https://github.com/ShaptakNaskar/hanamimi

**Derivative work**
- Project: Hana360 — 360° spatial-audio music player for iOS
- Modified: 2026-08-10
- License: GNU General Public License v3 (GPLv3), same as upstream

In accordance with GPLv3 §5, this work carries prominent notices stating that it was modified from the original and released under the GPLv3. The complete license text is in the LICENSE file.

THIS SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND — see the LICENSE file for the full disclaimer of warranty and limitation of liability.

**HRIR Data Notice**

The `cipic_v9_hrir.bin` file used by Hana360's 360° spatial audio engine is a processed derivative of the **CIPIC HRTF Database** (UC Davis CIPIC Interface Laboratory, <https://www.ece.ucdavis.edu/cipic/spatial-sound/hrtf-data/>).

This data file is **not** distributed in this source repository. It is a third-party research dataset with its own licensing terms (research use). To build and run Hana360's spatial-audio features you must obtain the CIPIC HRTF data yourself and generate `cipic_v9_hrir.bin` using the format parameters declared in `native/SpatialDsp/include/cipic_hrir_v9.h` (15 groups × 25 azimuths × 50 elevations × 217 taps @ 48 kHz). See README.md → "Build prerequisites".

---

<a id="简体中文"></a>
## 简体中文

**Hana360 — Hanamimi 的 iOS 移植版**

本软件是 Hanamimi 项目（https://github.com/ShaptakNaskar/hanamimi）的**派生作品**，于 **2026-08-10** 针对 iOS（iPhone / iPad）修改，包含自建的 AVAudioEngine 播放引擎、360° 空间音频 DSP 以及平台专属的音频/音乐库集成。

**原始作品**
- 项目：Hanamimi（花耳）—— 一款可爱、离线优先的 Android 音乐播放器
- 作者：Shaptak Naskar（https://github.com/ShaptakNaskar）
- 许可证：GNU 通用公共许可证 v3（GPLv3）
- 上游：https://github.com/ShaptakNaskar/hanamimi

**派生作品**
- 项目：Hana360 —— 面向 iOS 的 360° 空间音频音乐播放器
- 修改日期：2026-08-10
- 许可证：GNU 通用公共许可证 v3（GPLv3），与上游一致

依据 GPLv3 第 5 条，本作品带有显著声明，说明其修改自原始作品并以 GPLv3 发布。完整许可证文本见 LICENSE 文件。

本软件按「原样」提供，不附带任何形式的保证 —— 完整的免责声明与责任限制见 LICENSE 文件。

**HRIR 数据声明**

Hana360 的 360° 空间音频引擎使用的 `cipic_v9_hrir.bin` 是 **CIPIC HRTF 数据库**（UC Davis CIPIC 界面实验室，<https://www.ece.ucdavis.edu/cipic/spatial-sound/hrtf-data/>）的加工衍生数据。

该数据文件**不随本源码仓库分发**。它是第三方研究数据集，有其独立的许可条款（研究用途）。要构建并运行 Hana360 的空间音频功能，需自行获取 CIPIC HRTF 原始数据，并按 `native/SpatialDsp/include/cipic_hrir_v9.h` 中声明的格式参数（15 组 × 25 方位角 × 50 仰角 × 217 抽头 @ 48kHz）生成 `cipic_v9_hrir.bin`。详见 README.md「构建前置依赖」。

---

<a id="繁體中文"></a>
## 繁體中文

**Hana360 — Hanamimi 的 iOS 移植版**

本軟體是 Hanamimi 專案（https://github.com/ShaptakNaskar/hanamimi）的**衍生作品**，於 **2026-08-10** 針對 iOS（iPhone / iPad）修改，包含自建的 AVAudioEngine 播放引擎、360° 空間音訊 DSP 以及平台專屬的音訊/音樂庫整合。

**原始作品**
- 專案：Hanamimi（花耳）—— 一款可愛、離線優先的 Android 音樂播放器
- 作者：Shaptak Naskar（https://github.com/ShaptakNaskar）
- 授權：GNU 通用公眾授權條款 v3（GPLv3）
- 上游：https://github.com/ShaptakNaskar/hanamimi

**衍生作品**
- 專案：Hana360 —— 面向 iOS 的 360° 空間音訊音樂播放器
- 修改日期：2026-08-10
- 授權：GNU 通用公眾授權條款 v3（GPLv3），與上游一致

依據 GPLv3 第 5 條，本作品帶有顯著聲明，說明其修改自原始作品並以 GPLv3 發布。完整授權條款文本見 LICENSE 檔案。

本軟體按「原樣」提供，不附帶任何形式的保證 —— 完整的免責聲明與責任限制見 LICENSE 檔案。

---

<a id="日本語"></a>
## 日本語

**Hana360 — Hanamimi の iOS 移植版**

本ソフトウェアは、Hanamimi プロジェクト（https://github.com/ShaptakNaskar/hanamimi）の**派生作品**であり、**2026-08-10** に iOS（iPhone / iPad）向けに、独自構築の AVAudioEngine 再生エンジン、360° 空間オーディオ DSP、およびプラットフォーム固有のオーディオ／ミュージックライブラリ統合を加えて改変したものです。

**オリジナル作品**
- プロジェクト：Hanamimi（花耳）—— かわいらしい、オフライン優先の Android 向け音楽プレイヤー
- 作者：Shaptak Naskar（https://github.com/ShaptakNaskar）
- ライセンス：GNU 一般公衆ライセンス v3（GPLv3）
- アップストリーム：https://github.com/ShaptakNaskar/hanamimi

**派生作品**
- プロジェクト：Hana360 —— iOS 向け 360° 空間オーディオ音楽プレイヤー
- 改変日：2026-08-10
- ライセンス：GNU 一般公衆ライセンス v3（GPLv3）、アップストリームと同一

GPLv3 第 5 条に従い、本作品には、オリジナルから改変され GPLv3 でリリースされたことを示す顕著な告知が含まれます。ライセンス全文は LICENSE ファイルをご参照ください。

本ソフトウェアは「現状有姿」で提供され、いかなる保証も伴いません —— 保証の否認および責任の制限の全文は LICENSE ファイルをご参照ください。

---

<a id="한국어"></a>
## 한국어

**Hana360 — Hanamimi의 iOS 이식판**

본 소프트웨어는 Hanamimi 프로젝트(https://github.com/ShaptakNaskar/hanamimi)의 **파생 저작물**로, **2026-08-10**에 iOS(iPhone / iPad)용으로 자체 구축한 AVAudioEngine 재생 엔진, 360° 공간 오디오 DSP, 플랫폼별 오디오/음악 라이브러리 통합을 더해 수정되었습니다.

**원본 저작물**
- 프로젝트: Hanamimi(花耳) — 아기자기하고 오프라인 우선인 Android용 음악 플레이어
- 저자: Shaptak Naskar(https://github.com/ShaptakNaskar)
- 라이선스: GNU 일반 공중 사용 허가서 v3(GPLv3)
- 업스트림: https://github.com/ShaptakNaskar/hanamimi

**파생 저작물**
- 프로젝트: Hana360 — iOS용 360° 공간 오디오 음악 플레이어
- 수정일: 2026-08-10
- 라이선스: GNU 일반 공중 사용 허가서 v3(GPLv3), 업스트림과 동일

GPLv3 제5조에 따라, 본 저작물은 원본에서 수정되었으며 GPLv3로 배포됨을 알리는 명확한 고지를 포함합니다. 라이선스 전문은 LICENSE 파일을 참조하십시오.

본 소프트웨어는 "있는 그대로" 제공되며 어떠한 보증도 하지 않습니다 — 보증의 부인 및 책임의 제한에 대한 전문은 LICENSE 파일을 참조하십시오.

---

<a id="français"></a>
## Français

**Hana360 — portage iOS de Hanamimi**

Ce logiciel est une **œuvre dérivée** du projet Hanamimi (https://github.com/ShaptakNaskar/hanamimi), modifiée le **2026-08-10** pour iOS (iPhone / iPad) avec un moteur de lecture AVAudioEngine auto-construit, un DSP audio spatial 360°, et une intégration audio/bibliothèque musicale spécifique à la plateforme.

**Œuvre originale**
- Projet : Hanamimi (花耳) — un lecteur de musique Android mignon, hors ligne d'abord
- Auteur : Shaptak Naskar (https://github.com/ShaptakNaskar)
- Licence : GNU General Public License v3 (GPLv3)
- Amont : https://github.com/ShaptakNaskar/hanamimi

**Œuvre dérivée**
- Projet : Hana360 — lecteur de musique audio spatial 360° pour iOS
- Modifié le : 2026-08-10
- Licence : GNU General Public License v3 (GPLv3), identique à l'amont

Conformément à la section 5 de la GPLv3, cette œuvre porte des avis bien visibles indiquant qu'elle a été modifiée à partir de l'original et publiée sous GPLv3. Le texte complet de la licence se trouve dans le fichier LICENSE.

CE LOGICIEL EST FOURNI « EN L'ÉTAT », SANS GARANTIE D'AUCUNE SORTE — voir le fichier LICENSE pour l'avis de non-garantie et la limitation de responsabilité complets.

---

<a id="español"></a>
## Español

**Hana360 — adaptación de Hanamimi para iOS**

Este software es una **obra derivada** del proyecto Hanamimi (https://github.com/ShaptakNaskar/hanamimi), modificado el **2026-08-10** para iOS (iPhone / iPad) con un motor de reproducción AVAudioEngine de construcción propia, DSP de audio espacial 360° e integración de audio/biblioteca musical específica de la plataforma.

**Obra original**
- Proyecto: Hanamimi (花耳) — un reproductor de música para Android, adorable y sin conexión
- Autor: Shaptak Naskar (https://github.com/ShaptakNaskar)
- Licencia: GNU General Public License v3 (GPLv3)
- Fuente: https://github.com/ShaptakNaskar/hanamimi

**Obra derivada**
- Proyecto: Hana360 — reproductor de música con audio espacial 360° para iOS
- Modificado el: 2026-08-10
- Licencia: GNU General Public License v3 (GPLv3), igual que la fuente

De conformidad con la sección 5 de la GPLv3, esta obra incluye avisos destacados que indican que fue modificada a partir del original y publicada bajo GPLv3. El texto completo de la licencia se encuentra en el archivo LICENSE.

ESTE SOFTWARE SE PROPORCIONA «TAL CUAL», SIN GARANTÍA DE NINGÚN TIPO — consulte el archivo LICENSE para la renuncia de garantía y la limitación de responsabilidad completas.

---

<a id="deutsch"></a>
## Deutsch

**Hana360 — iOS-Portierung von Hanamimi**

Diese Software ist ein **abgeleitetes Werk** des Projekts Hanamimi (https://github.com/ShaptakNaskar/hanamimi), modifiziert am **2026-08-10** für iOS (iPhone / iPad) mit einer selbstgebauten AVAudioEngine-Wiedergabe-Engine, 360°-Raumklang-DSP und plattformspezifischer Audio-/Musikbibliotheks-Integration.

**Originalwerk**
- Projekt: Hanamimi (花耳) — ein niedlicher, offline-fähiger Musikplayer für Android
- Autor: Shaptak Naskar (https://github.com/ShaptakNaskar)
- Lizenz: GNU General Public License v3 (GPLv3)
- Upstream: https://github.com/ShaptakNaskar/hanamimi

**Abgeleitetes Werk**
- Projekt: Hana360 — Musikplayer mit 360°-Raumklang für iOS
- Modifiziert: 2026-08-10
- Lizenz: GNU General Public License v3 (GPLv3), identisch mit dem Upstream

Gemäß GPLv3 §5 trägt dieses Werk deutliche Hinweise darauf, dass es gegenüber dem Original verändert und unter der GPLv3 veröffentlicht wurde. Der vollständige Lizenztext befindet sich in der Datei LICENSE.

DIESE SOFTWARE WIRD OHNE MANGELGEWÄHR „WIE BESEHEN" BEREITGESTELLT — siehe Datei LICENSE für den vollständigen Haftungsausschluss und die Haftungsbeschränkung.

---

<a id="русский"></a>
## Русский

**Hana360 — порт Hanamimi для iOS**

Это программное обеспечение является **производным произведением** проекта Hanamimi (https://github.com/ShaptakNaskar/hanamimi), изменённым **2026-08-10** для iOS (iPhone / iPad) с собственным движком воспроизведения AVAudioEngine, DSP объёмного звука 360° и платформенной интеграцией аудио/медиатеки.

**Оригинальное произведение**
- Проект: Hanamimi (花耳) — милый офлайн-музыкальный плеер для Android
- Автор: Shaptak Naskar (https://github.com/ShaptakNaskar)
- Лицензия: GNU General Public License v3 (GPLv3)
- Исходник: https://github.com/ShaptakNaskar/hanamimi

**Производное произведение**
- Проект: Hana360 — музыкальный плеер с объёмным звуком 360° для iOS
- Изменено: 2026-08-10
- Лицензия: GNU General Public License v3 (GPLv3), как у исходника

В соответствии с разделом 5 GPLv3, это произведение содержит заметные уведомления о том, что оно изменено по сравнению с оригиналом и выпущено под GPLv3. Полный текст лицензии находится в файле LICENSE.

ЭТО ПРОГРАММНОЕ ОБЕСПЕЧЕНИЕ ПРЕДОСТАВЛЯЕТСЯ «КАК ЕСТЬ», БЕЗ КАКИХ-ЛИБО ГАРАНТИЙ — см. файл LICENSE для полного отказа от гарантий и ограничения ответственности.

---

<a id="português"></a>
## Português

**Hana360 — versão iOS do Hanamimi**

Este software é uma **obra derivada** do projeto Hanamimi (https://github.com/ShaptakNaskar/hanamimi), modificado em **2026-08-10** para iOS (iPhone / iPad) com um motor de reprodução AVAudioEngine de construção própria, DSP de áudio espacial 360° e integração de áudio/biblioteca musical específica da plataforma.

**Obra original**
- Projeto: Hanamimi (花耳) — um reprodutor de música Android, fofo e offline-first
- Autor: Shaptak Naskar (https://github.com/ShaptakNaskar)
- Licença: GNU General Public License v3 (GPLv3)
- Fonte: https://github.com/ShaptakNaskar/hanamimi

**Obra derivada**
- Projeto: Hana360 — reprodutor de música com áudio espacial 360° para iOS
- Modificado em: 2026-08-10
- Licença: GNU General Public License v3 (GPLv3), igual à fonte

De acordo com a seção 5 da GPLv3, esta obra inclui avisos destacados de que foi modificada a partir do original e publicada sob GPLv3. O texto completo da licença está no arquivo LICENSE.

ESTE SOFTWARE É FORNECIDO «NO ESTADO EM QUE SE ENCONTRA», SEM GARANTIA DE QUALQUER TIPO — consulte o arquivo LICENSE para a renúncia de garantia e limitação de responsabilidade completas.

---

<a id="العربية"></a>
## العربية

**Hana360 — نسخة iOS من Hanamimi**

هذا البرنامج هو **عمل مشتق** من مشروع Hanamimi (https://github.com/ShaptakNaskar/hanamimi)، عُدّل في **2026-08-10** لنظام iOS (iPhone / iPad) مع محرك تشغيل AVAudioEngine مبني ذاتيًا، ومعالجة صوت مكاني 360°، وتكامل صوتي/مكتبة موسيقية خاص بالمنصة.

**العمل الأصلي**
- المشروع: Hanamimi (花耳) — مشغّل موسيقى لطيف لنظام Android يعمل دون اتصال أولًا
- المؤلف: Shaptak Naskar (https://github.com/ShaptakNaskar)
- الترخيص: GNU General Public License v3 (GPLv3)
- المصدر: https://github.com/ShaptakNaskar/hanamimi

**العمل المشتق**
- المشروع: Hana360 — مشغّل موسيقى بصوت مكاني 360° لنظام iOS
- عُدّل في: 2026-08-10
- الترخيص: GNU General Public License v3 (GPLv3)، مثل المصدر

وفقًا للمادة 5 من GPLv3، يتضمن هذا العمل إشعارات بارزة تفيد بأنه عُدّل عن الأصل وأُصدر بموجب GPLv3. النص الكامل للترخيص موجود في ملف LICENSE.

يُقدَّم هذا البرنامج «كما هو» دون أي ضمان من أي نوع — راجع ملف LICENSE للاطلاع على إخلاء المسؤولية الكامل وتحديد المسؤولية.

---

<a id="हिन्दी"></a>
## हिन्दी

**Hana360 — Hanamimi का iOS पोर्ट**

यह सॉफ़्टवेयर Hanamimi प्रोजेक्ट (https://github.com/ShaptakNaskar/hanamimi) का एक **व्युत्पन्न कार्य** है, जिसे **2026-08-10** को iOS (iPhone / iPad) के लिए स्व-निर्मित AVAudioEngine प्लेबैक इंजन, 360° स्पेशियल ऑडियो DSP और प्लेटफ़ॉर्म-विशिष्ट ऑडियो/म्यूज़िक लाइब्रेरी एकीकरण के साथ संशोधित किया गया है।

**मूल कार्य**
- प्रोजेक्ट: Hanamimi (花耳) — Android के लिए एक प्यारा, ऑफ़लाइन-प्रथम संगीत प्लेयर
- लेखक: Shaptak Naskar (https://github.com/ShaptakNaskar)
- लाइसेंस: GNU General Public License v3 (GPLv3)
- अपस्ट्रीम: https://github.com/ShaptakNaskar/hanamimi

**व्युत्पन्न कार्य**
- प्रोजेक्ट: Hana360 — iOS के लिए 360° स्पेशियल-ऑडियो संगीत प्लेयर
- संशोधित: 2026-08-10
- लाइसेंस: GNU General Public License v3 (GPLv3), अपस्ट्रीम के समान

GPLv3 §5 के अनुसार, यह कार्य प्रमुख सूचनाओं के साथ बताता है कि इसे मूल से संशोधित कर GPLv3 के तहत जारी किया गया है। पूर्ण लाइसेंस पाठ LICENSE फ़ाइल में है।

यह सॉफ़्टवेयर «जैसा है» प्रदान किया जाता है, बिना किसी वारंटी के — वारंटी और दायित्व की सीमा के पूर्ण अस्वीकरण के लिए LICENSE फ़ाइल देखें।

---

<a id="türkçe"></a>
## Türkçe

**Hana360 — Hanamimi'nin iOS sürümü**

Bu yazılım, Hanamimi projesinin (https://github.com/ShaptakNaskar/hanamimi) **türetilmiş bir çalışmasıdır**; **2026-08-10** tarihinde iOS (iPhone / iPad) için kendi geliştirdiğimiz AVAudioEngine oynatma motoru, 360° mekânsal ses DSP'si ve platforma özel ses/müzik kitaplığı entegrasyonuyla değiştirilmiştir.

**Orijinal çalışma**
- Proje: Hanamimi (花耳) — Android için sevimli, çevrimdışı öncelikli bir müzik çalar
- Yazar: Shaptak Naskar (https://github.com/ShaptakNaskar)
- Lisans: GNU General Public License v3 (GPLv3)
- Kaynak: https://github.com/ShaptakNaskar/hanamimi

**Türetilmiş çalışma**
- Proje: Hana360 — iOS için 360° mekânsal sesli müzik çalar
- Değiştirilme: 2026-08-10
- Lisans: GNU General Public License v3 (GPLv3), kaynakla aynı

GPLv3 §5 uyarınca bu çalışma, orijinalden değiştirildiğini ve GPLv3 altında yayımlandığını belirten görünür bildirimler taşır. Tam lisans metni LICENSE dosyasındadır.

BU YAZILIM «OLDUĞU GİBİ» VE HİÇBİR GARANTİ OLMAKSIZIN SUNULUR — garanti ve sorumluluk sınırlamasının tamamı için LICENSE dosyasına bakın.

---

<a id="bahasa-indonesia"></a>
## Bahasa Indonesia

**Hana360 — port iOS dari Hanamimi**

Perangkat lunak ini merupakan **karya turunan** dari proyek Hanamimi (https://github.com/ShaptakNaskar/hanamimi), dimodifikasi pada **2026-08-10** untuk iOS (iPhone / iPad) dengan mesin pemutaran AVAudioEngine buatan sendiri, DSP audio spasial 360°, dan integrasi audio/perpustakaan musik khusus platform.

**Karya asli**
- Proyek: Hanamimi (花耳) — pemutar musik Android yang lucu dan mengutamakan offline
- Penulis: Shaptak Naskar (https://github.com/ShaptakNaskar)
- Lisensi: GNU General Public License v3 (GPLv3)
- Sumber: https://github.com/ShaptakNaskar/hanamimi

**Karya turunan**
- Proyek: Hana360 — pemutar musik audio spasial 360° untuk iOS
- Dimodifikasi: 2026-08-10
- Lisensi: GNU General Public License v3 (GPLv3), sama dengan sumber

Sesuai dengan GPLv3 §5, karya ini memuat pemberitahuan yang jelas bahwa karya ini telah dimodifikasi dari versi aslinya dan dirilis di bawah GPLv3. Teks lisensi lengkap ada di berkas LICENSE.

PERANGKAT LUNAK INI DISEDIAKAN «SEBAGAIMANA ADANYA», TANPA GARANSI APA PUN — lihat berkas LICENSE untuk penyangkalan garansi dan pembatasan tanggung jawab selengkapnya.

---

<a id="tiếng-việt"></a>
## Tiếng Việt

**Hana360 — bản iOS của Hanamimi**

Phần mềm này là **tác phẩm phái sinh** của dự án Hanamimi (https://github.com/ShaptakNaskar/hanamimi), được sửa đổi vào **2026-08-10** cho iOS (iPhone / iPad) với công cụ phát AVAudioEngine tự xây dựng, DSP âm thanh không gian 360° và tích hợp âm thanh/thư viện nhạc riêng cho nền tảng.

**Tác phẩm gốc**
- Dự án: Hanamimi (花耳) — trình phát nhạc Android dễ thương, ưu tiên ngoại tuyến
- Tác giả: Shaptak Naskar (https://github.com/ShaptakNaskar)
- Giấy phép: GNU General Public License v3 (GPLv3)
- Nguồn: https://github.com/ShaptakNaskar/hanamimi

**Tác phẩm phái sinh**
- Dự án: Hana360 — trình phát nhạc âm thanh không gian 360° cho iOS
- Sửa đổi: 2026-08-10
- Giấy phép: GNU General Public License v3 (GPLv3), giống nguồn

Theo mục 5 của GPLv3, tác phẩm này có các thông báo nổi bật nêu rõ rằng nó đã được sửa đổi từ bản gốc và phát hành theo GPLv3. Toàn văn giấy phép nằm trong tệp LICENSE.

PHẦN MỀM NÀY ĐƯỢC CUNG CẤP «NGUYÊN TRẠNG», KHÔNG CÓ BẢO HÀNH DƯỚI BẤT KỲ HÌNH THỨC NÀO — xem tệp LICENSE để biết toàn bộ tuyên bố miễn trừ bảo hành và giới hạn trách nhiệm.

---

<a id="ไทย"></a>
## ไทย

**Hana360 — เวอร์ชัน iOS ของ Hanamimi**

ซอฟต์แวร์นี้เป็น **งานดัดแปลง** ของโปรเจกต์ Hanamimi (https://github.com/ShaptakNaskar/hanamimi) ซึ่งแก้ไขเมื่อ **2026-08-10** สำหรับ iOS (iPhone / iPad) ด้วยเอนจินเล่นเสียง AVAudioEngine ที่สร้างขึ้นเอง, DSP เสียงรอบทิศทาง 360° และการผสานเสียง/คลังเพลงเฉพาะแพลตฟอร์ม

**งานต้นฉบับ**
- โปรเจกต์: Hanamimi (花耳) — เครื่องเล่นเพลง Android น่ารัก เน้นใช้งานออฟไลน์
- ผู้แต่ง: Shaptak Naskar (https://github.com/ShaptakNaskar)
- ใบอนุญาต: GNU General Public License v3 (GPLv3)
- ต้นน้ำ: https://github.com/ShaptakNaskar/hanamimi

**งานดัดแปลง**
- โปรเจกต์: Hana360 — เครื่องเล่นเพลงเสียงรอบทิศทาง 360° สำหรับ iOS
- แก้ไขเมื่อ: 2026-08-10
- ใบอนุญาต: GNU General Public License v3 (GPLv3) เช่นเดียวกับต้นน้ำ

ตาม GPLv3 §5 งานนี้มีประกาศที่ชัดเจนระบุว่างานนี้ถูกดัดแปลงจากต้นฉบับและเผยแพร่ภายใต้ GPLv3 ข้อความใบอนุญาตฉบับเต็มอยู่ในไฟล์ LICENSE

ซอฟต์แวร์นี้จัดให้ «ตามสภาพ» โดยไม่มีการรับประกันใด ๆ — ดูไฟล์ LICENSE สำหรับการปฏิเสธความรับผิดชอบและการจำกัดความรับผิดฉบับเต็ม

---

<a id="italiano"></a>
## Italiano

**Hana360 — port iOS di Hanamimi**

Questo software è un'**opera derivata** del progetto Hanamimi (https://github.com/ShaptakNaskar/hanamimi), modificato il **2026-08-10** per iOS (iPhone / iPad) con un motore di riproduzione AVAudioEngine autocostruito, DSP audio spaziale 360° e integrazione audio/libreria musicale specifica della piattaforma.

**Opera originale**
- Progetto: Hanamimi (花耳) — un lettore musicale Android carino e offline-first
- Autore: Shaptak Naskar (https://github.com/ShaptakNaskar)
- Licenza: GNU General Public License v3 (GPLv3)
- Sorgente: https://github.com/ShaptakNaskar/hanamimi

**Opera derivata**
- Progetto: Hana360 — lettore musicale con audio spaziale 360° per iOS
- Modificato il: 2026-08-10
- Licenza: GNU General Public License v3 (GPLv3), identica alla sorgente

Ai sensi della sezione 5 della GPLv3, quest'opera reca avvisi ben visibili che indicano che è stata modificata rispetto all'originale e pubblicata sotto GPLv3. Il testo completo della licenza è nel file LICENSE.

QUESTO SOFTWARE È FORNITO «COSÌ COM'È», SENZA GARANZIA DI ALCUN TIPO — consultare il file LICENSE per l'esclusione di garanzia e la limitazione di responsabilità complete.

---

<a id="nederlands"></a>
## Nederlands

**Hana360 — iOS-port van Hanamimi**

Deze software is een **afgeleid werk** van het Hanamimi-project (https://github.com/ShaptakNaskar/hanamimi), gewijzigd op **2026-08-10** voor iOS (iPhone / iPad) met een zelfgebouwde AVAudioEngine-afspeelmotor, 360° ruimtelijke audio-DSP en platformspecifieke audio-/muziekbibliotheekintegratie.

**Origineel werk**
- Project: Hanamimi (花耳) — een schattige, offline-first muziekspeler voor Android
- Auteur: Shaptak Naskar (https://github.com/ShaptakNaskar)
- Licentie: GNU General Public License v3 (GPLv3)
- Upstream: https://github.com/ShaptakNaskar/hanamimi

**Afgeleid werk**
- Project: Hana360 — muziekspeler met 360° ruimtelijke audio voor iOS
- Gewijzigd: 2026-08-10
- Licentie: GNU General Public License v3 (GPLv3), gelijk aan upstream

Overeenkomstig GPLv3 §5 draagt dit werk duidelijke vermeldingen dat het is gewijzigd ten opzichte van het origineel en is uitgebracht onder GPLv3. De volledige licentietekst staat in het bestand LICENSE.

DEZE SOFTWARE WORDT GELEVERD «ZOALS ZE IS», ZONDER ENIGE GARANTIE — zie het bestand LICENSE voor de volledige garantie-uitsluiting en beperking van aansprakelijkheid.

---

<a id="polski"></a>
## Polski

**Hana360 — port iOS Hanamimi**

To oprogramowanie jest **utworem zależnym** projektu Hanamimi (https://github.com/ShaptakNaskar/hanamimi), zmodyfikowanym **2026-08-10** na iOS (iPhone / iPad) z samodzielnie zbudowanym silnikiem odtwarzania AVAudioEngine, DSP dźwięku przestrzennego 360° oraz integracją audio/biblioteki muzycznej specyficzną dla platformy.

**Utwór oryginalny**
- Projekt: Hanamimi (花耳) — uroczy, działający offline odtwarzacz muzyki dla Androida
- Autor: Shaptak Naskar (https://github.com/ShaptakNaskar)
- Licencja: GNU General Public License v3 (GPLv3)
- Źródło: https://github.com/ShaptakNaskar/hanamimi

**Utwór zależny**
- Projekt: Hana360 — odtwarzacz muzyki z dźwiękiem przestrzennym 360° dla iOS
- Zmodyfikowano: 2026-08-10
- Licencja: GNU General Public License v3 (GPLv3), taka sama jak źródło

Zgodnie z sekcją 5 GPLv3 utwór ten zawiera wyraźne informacje, że został zmodyfikowany względem oryginału i opublikowany na licencji GPLv3. Pełny tekst licencji znajduje się w pliku LICENSE.

TO OPROGRAMOWANIE JEST DOSTARCZANE «TAK JAK JEST», BEZ ŻADNEJ GWARANCJI — patrz plik LICENSE w celu zapoznania się z pełnym wyłączeniem gwarancji i ograniczeniem odpowiedzialności.

---

<a id="svenska"></a>
## Svenska

**Hana360 — iOS-port av Hanamimi**

Denna programvara är ett **härlett verk** av Hanamimi-projektet (https://github.com/ShaptakNaskar/hanamimi), modifierat **2026-08-10** för iOS (iPhone / iPad) med en egenbyggd AVAudioEngine-uppspelningsmotor, 360° spatial ljud-DSP och plattformsspecifik ljud-/musikbiblioteksintegration.

**Originalverk**
- Projekt: Hanamimi (花耳) — en söt, offline-först musikspelare för Android
- Författare: Shaptak Naskar (https://github.com/ShaptakNaskar)
- Licens: GNU General Public License v3 (GPLv3)
- Upstream: https://github.com/ShaptakNaskar/hanamimi

**Härlett verk**
- Projekt: Hana360 — musikspelare med 360° spatialt ljud för iOS
- Modifierat: 2026-08-10
- Licens: GNU General Public License v3 (GPLv3), samma som upstream

I enlighet med GPLv3 §5 bär detta verk framträdande meddelanden om att det har modifierats från originalet och släppts under GPLv3. Den fullständiga licenstexten finns i filen LICENSE.

DENNA PROGRAMVARA TILLHANDAHÅLLS «I BEFINTLIGT SKICK», UTAN NÅGON SOM HELST GARANTI — se filen LICENSE för fullständig friskrivning av garanti och ansvarsbegränsning.

---

<a id="norsk"></a>
## Norsk

**Hana360 — iOS-port av Hanamimi**

Denne programvaren er et **avledet verk** av Hanamimi-prosjektet (https://github.com/ShaptakNaskar/hanamimi), endret **2026-08-10** for iOS (iPhone / iPad) med en egenbygd AVAudioEngine-avspillingsmotor, 360° romlig lyd-DSP og plattformspesifikk lyd-/musikkbibliotekintegrasjon.

**Originalverk**
- Prosjekt: Hanamimi (花耳) — en søt, offline-først musikkspiller for Android
- Forfatter: Shaptak Naskar (https://github.com/ShaptakNaskar)
- Lisens: GNU General Public License v3 (GPLv3)
- Oppstrøm: https://github.com/ShaptakNaskar/hanamimi

**Avledet verk**
- Prosjekt: Hana360 — musikkspiller med 360° romlig lyd for iOS
- Endret: 2026-08-10
- Lisens: GNU General Public License v3 (GPLv3), samme som oppstrøm

I samsvar med GPLv3 §5 bærer dette verket fremtredende merknader om at det er endret fra originalen og utgitt under GPLv3. Den fullstendige lisensteksten finnes i filen LICENSE.

DENNE PROGRAMVAREN LEVERES «SOM DEN ER», UTEN GARANTI AV NOE SLAG — se filen LICENSE for fullstendig ansvarsfraskrivelse og ansvarsbegrensning.

---

<a id="dansk"></a>
## Dansk

**Hana360 — iOS-port af Hanamimi**

Denne software er et **afledt værk** af Hanamimi-projektet (https://github.com/ShaptakNaskar/hanamimi), ændret **2026-08-10** til iOS (iPhone / iPad) med en selvbygget AVAudioEngine-afspilningsmotor, 360° rumlig lyd-DSP og platformspecifik lyd-/musikbiblioteksintegration.

**Originalværk**
- Projekt: Hanamimi (花耳) — en sød, offline-først musikafspiller til Android
- Forfatter: Shaptak Naskar (https://github.com/ShaptakNaskar)
- Licens: GNU General Public License v3 (GPLv3)
- Upstream: https://github.com/ShaptakNaskar/hanamimi

**Afledt værk**
- Projekt: Hana360 — musikafspiller med 360° rumlig lyd til iOS
- Ændret: 2026-08-10
- Licens: GNU General Public License v3 (GPLv3), samme som upstream

I overensstemmelse med GPLv3 §5 bærer dette værk tydelige bemærkninger om, at det er ændret fra originalen og udgivet under GPLv3. Den fulde licenstekst findes i filen LICENSE.

DENNE SOFTWARE LEVERES «SOM DEN ER», UDEN GARANTI AF NOGEN ART — se filen LICENSE for den fulde ansvarsfraskrivelse og ansvarsbegrænsning.

---

<a id="suomi"></a>
## Suomi

**Hana360 — Hanamimin iOS-versio**

Tämä ohjelmisto on Hanamimi-projektin (https://github.com/ShaptakNaskar/hanamimi) **johdannaisteos**, jota on muokattu **2026-08-10** iOS:lle (iPhone / iPad) itse rakennetulla AVAudioEngine-toistomoottorilla, 360° tilaäänen DSP:llä sekä alustakohtaisella ääni-/musiikkikirjastointegraatiolla.

**Alkuperäinen teos**
- Projekti: Hanamimi (花耳) — söpö, offline-ensisijainen musiikkisoitin Androidille
- Tekijä: Shaptak Naskar (https://github.com/ShaptakNaskar)
- Lisenssi: GNU General Public License v3 (GPLv3)
- Upstream: https://github.com/ShaptakNaskar/hanamimi

**Johdannaisteos**
- Projekti: Hana360 — 360° tilaäänen musiikkisoitin iOS:lle
- Muokattu: 2026-08-10
- Lisenssi: GNU General Public License v3 (GPLv3), sama kuin upstream

GPLv3 §5:n mukaisesti tämä teos sisältää näkyvät ilmoitukset siitä, että sitä on muokattu alkuperäisestä ja että se on julkaistu GPLv3-lisenssillä. Täydellinen lisenssiteksti on LICENSE-tiedostossa.

TÄMÄ OHJELMISTO TOIMITETAAN «SELLAISENAAN», ILMAN MINKÄÄNLAISTA TAKUUTA — katso LICENSE-tiedostosta täydellinen takuun poissulkeminen ja vastuunrajoitus.

---

<a id="čeština"></a>
## Čeština

**Hana360 — iOS port Hanamimi**

Tento software je **odvozeným dílem** projektu Hanamimi (https://github.com/ShaptakNaskar/hanamimi), upraveným **2026-08-10** pro iOS (iPhone / iPad) s vlastním přehrávacím enginem AVAudioEngine, DSP prostorového zvuku 360° a platformově specifickou integrací zvuku/hudební knihovny.

**Původní dílo**
- Projekt: Hanamimi (花耳) — roztomilý, offline-first hudební přehrávač pro Android
- Autor: Shaptak Naskar (https://github.com/ShaptakNaskar)
- Licence: GNU General Public License v3 (GPLv3)
- Upstream: https://github.com/ShaptakNaskar/hanamimi

**Odvozené dílo**
- Projekt: Hana360 — hudební přehrávač s prostorovým zvukem 360° pro iOS
- Upraveno: 2026-08-10
- Licence: GNU General Public License v3 (GPLv3), stejná jako upstream

V souladu s §5 GPLv3 nese toto dílo výrazná upozornění, že bylo upraveno oproti originálu a vydáno pod GPLv3. Úplné znění licence je v souboru LICENSE.

TENTO SOFTWARE JE POSKYTOVÁN «TAK, JAK JE», BEZ ZÁRUKY JAKÉHOKOLI DRUHU — viz soubor LICENSE pro úplné vyloučení záruky a omezení odpovědnosti.

---

<a id="magyar"></a>
## Magyar

**Hana360 — a Hanamimi iOS-portja**

Ez a szoftver a Hanamimi projekt (https://github.com/ShaptakNaskar/hanamimi) **származékos műve**, amelyet **2026-08-10**-én iOS-re (iPhone / iPad) módosítottak saját fejlesztésű AVAudioEngine lejátszómotorral, 360° térhatású hang-DSP-vel és platformspecifikus hang-/zeneikönyvtár-integrációval.

**Eredeti mű**
- Projekt: Hanamimi (花耳) — aranyos, offline-első zenelejátszó Androidra
- Szerző: Shaptak Naskar (https://github.com/ShaptakNaskar)
- Licenc: GNU General Public License v3 (GPLv3)
- Upstream: https://github.com/ShaptakNaskar/hanamimi

**Származékos mű**
- Projekt: Hana360 — 360° térhatású hangú zenelejátszó iOS-re
- Módosítva: 2026-08-10
- Licenc: GNU General Public License v3 (GPLv3), az upstreammel azonos

A GPLv3 5. szakasza szerint ez a mű jól látható közleményeket tartalmaz arról, hogy az eredetihez képest módosították, és GPLv3 alatt tették közzé. A licenc teljes szövege a LICENSE fájlban található.

EZT A SZOFTVERT «ADOTT ÁLLAPOTBAN», BÁRMIFÉLE GARANCIA NÉLKÜL BIZTOSÍTJUK — a garancia kizárásának és a felelősség korlátozásának teljes szövegét lásd a LICENSE fájlban.

---

<a id="română"></a>
## Română

**Hana360 — portarea iOS a Hanamimi**

Acest software este o **operă derivată** a proiectului Hanamimi (https://github.com/ShaptakNaskar/hanamimi), modificată la **2026-08-10** pentru iOS (iPhone / iPad) cu un motor de redare AVAudioEngine construit intern, DSP audio spațial 360° și integrare audio/bibliotecă muzicală specifică platformei.

**Opera originală**
- Proiect: Hanamimi (花耳) — un player muzical Android drăguț, offline-first
- Autor: Shaptak Naskar (https://github.com/ShaptakNaskar)
- Licență: GNU General Public License v3 (GPLv3)
- Upstream: https://github.com/ShaptakNaskar/hanamimi

**Opera derivată**
- Proiect: Hana360 — player muzical cu audio spațial 360° pentru iOS
- Modificat: 2026-08-10
- Licență: GNU General Public License v3 (GPLv3), identică cu upstream

În conformitate cu secțiunea 5 a GPLv3, această operă poartă notificări vizibile care indică faptul că a fost modificată față de original și publicată sub GPLv3. Textul complet al licenței se află în fișierul LICENSE.

ACEST SOFTWARE ESTE FURNIZAT «CA ATARE», FĂRĂ NICIO GARANȚIE — consultați fișierul LICENSE pentru excluderea completă a garanției și limitarea răspunderii.

---

<a id="slovenčina"></a>
## Slovenčina

**Hana360 — iOS port Hanamimi**

Tento softvér je **odvodeným dielom** projektu Hanamimi (https://github.com/ShaptakNaskar/hanamimi), upraveným **2026-08-10** pre iOS (iPhone / iPad) s vlastným prehrávacím enginom AVAudioEngine, DSP priestorového zvuku 360° a platformovo špecifickou integráciou zvuku/hudobnej knižnice.

**Pôvodné dielo**
- Projekt: Hanamimi (花耳) — roztomilý, offline-first hudobný prehrávač pre Android
- Autor: Shaptak Naskar (https://github.com/ShaptakNaskar)
- Licencia: GNU General Public License v3 (GPLv3)
- Upstream: https://github.com/ShaptakNaskar/hanamimi

**Odvodené dielo**
- Projekt: Hana360 — hudobný prehrávač s priestorovým zvukom 360° pre iOS
- Upravené: 2026-08-10
- Licencia: GNU General Public License v3 (GPLv3), rovnaká ako upstream

V súlade s §5 GPLv3 nesie toto dielo výrazné upozornenia, že bolo upravené oproti originálu a vydané pod GPLv3. Úplné znenie licencie je v súbore LICENSE.

TENTO SOFTVÉR JE POSKYTOVANÝ «TAK, AKO JE», BEZ ZÁRUKY AKÉHOKOĽVEK DRUHU — pozrite súbor LICENSE pre úplné vylúčenie záruky a obmedzenie zodpovednosti.

---

<a id="hrvatski"></a>
## Hrvatski

**Hana360 — iOS port Hanamimija**

Ovaj softver je **izvedeno djelo** projekta Hanamimi (https://github.com/ShaptakNaskar/hanamimi), izmijenjeno **2026-08-10** za iOS (iPhone / iPad) s vlastitim motorom za reprodukciju AVAudioEngine, DSP prostornog zvuka 360° i integracijom zvuka/glazbene biblioteke specifičnom za platformu.

**Izvorno djelo**
- Projekt: Hanamimi (花耳) — sladak, offline-first glazbeni player za Android
- Autor: Shaptak Naskar (https://github.com/ShaptakNaskar)
- Licenca: GNU General Public License v3 (GPLv3)
- Upstream: https://github.com/ShaptakNaskar/hanamimi

**Izvedeno djelo**
- Projekt: Hana360 — glazbeni player s prostornim zvukom 360° za iOS
- Izmijenjeno: 2026-08-10
- Licenca: GNU General Public License v3 (GPLv3), ista kao upstream

U skladu s odjeljkom 5 GPLv3, ovo djelo nosi istaknute obavijesti da je izmijenjeno u odnosu na izvornik i objavljeno pod GPLv3. Cjeloviti tekst licence nalazi se u datoteci LICENSE.

OVAJ SOFTVER ISPORUČUJE SE «TAKAV KAKAV JEST», BEZ IKAKVOG JAMSTVA — pogledajte datoteku LICENSE za potpuno isključenje jamstva i ograničenje odgovornosti.

---

<a id="slovenščina"></a>
## Slovenščina

**Hana360 — iOS vrata Hanamimija**

Ta programska oprema je **izpeljano delo** projekta Hanamimi (https://github.com/ShaptakNaskar/hanamimi), spremenjena **2026-08-10** za iOS (iPhone / iPad) z lastno zgrajenim predvajalnim mehanizmom AVAudioEngine, DSP prostorskega zvoka 360° in integracijo zvoka/glasbene knjižnice, specifično za platformo.

**Izvirno delo**
- Projekt: Hanamimi (花耳) — ljubek, offline-najprej glasbeni predvajalnik za Android
- Avtor: Shaptak Naskar (https://github.com/ShaptakNaskar)
- Licenca: GNU General Public License v3 (GPLv3)
- Upstream: https://github.com/ShaptakNaskar/hanamimi

**Izpeljano delo**
- Projekt: Hana360 — glasbeni predvajalnik s prostorskim zvokom 360° za iOS
- Spremenjeno: 2026-08-10
- Licenca: GNU General Public License v3 (GPLv3), enaka kot upstream

V skladu s 5. členom GPLv3 to delo nosi vidne oznake, da je bilo spremenjeno glede na izvirnik in izdano pod GPLv3. Celotno besedilo licence je v datoteki LICENSE.

TA PROGRAMSKA OPREMA JE NA VOLJO «TAKŠNA, KOT JE», BREZ KAKRŠNEGA KOLI JAMSTVA — glej datoteko LICENSE za celotno izključitev garancije in omejitev odgovornosti.

---

<a id="українська"></a>
## Українська

**Hana360 — порт Hanamimi для iOS**

Це програмне забезпечення є **похідним твором** проєкту Hanamimi (https://github.com/ShaptakNaskar/hanamimi), зміненим **2026-08-10** для iOS (iPhone / iPad) із власним механізмом відтворення AVAudioEngine, DSP просторового звуку 360° та платформенною інтеграцією аудіо/медіатеки.

**Оригінальний твір**
- Проєкт: Hanamimi (花耳) — милий офлайн-музичний плеєр для Android
- Автор: Shaptak Naskar (https://github.com/ShaptakNaskar)
- Ліцензія: GNU General Public License v3 (GPLv3)
- Джерело: https://github.com/ShaptakNaskar/hanamimi

**Похідний твір**
- Проєкт: Hana360 — музичний плеєр із просторовим звуком 360° для iOS
- Змінено: 2026-08-10
- Ліцензія: GNU General Public License v3 (GPLv3), як у джерела

Відповідно до розділу 5 GPLv3, цей твір містить помітні повідомлення про те, що його змінено порівняно з оригіналом і випущено під GPLv3. Повний текст ліцензії міститься у файлі LICENSE.

ЦЕ ПРОГРАМНЕ ЗАБЕЗПЕЧЕННЯ НАДАЄТЬСЯ «ЯК Є», БЕЗ БУДЬ-ЯКИХ ГАРАНТІЙ — див. файл LICENSE для повної відмови від гарантій та обмеження відповідальності.

---

<a id="ελληνικά"></a>
## Ελληνικά

**Hana360 — μεταφορά του Hanamimi σε iOS**

Αυτό το λογισμικό είναι **παράγωγο έργο** του έργου Hanamimi (https://github.com/ShaptakNaskar/hanamimi), τροποποιημένο στις **2026-08-10** για iOS (iPhone / iPad) με αυτοκατασκευασμένη μηχανή αναπαραγωγής AVAudioEngine, DSP χωρικού ήχου 360° και ενσωμάτωση ήχου/μουσικής βιβλιοθήκης ειδική για την πλατφόρμα.

**Πρωτότυπο έργο**
- Έργο: Hanamimi (花耳) — ένα χαριτωμένο, offline-first πρόγραμμα αναπαραγωγής μουσικής για Android
- Δημιουργός: Shaptak Naskar (https://github.com/ShaptakNaskar)
- Άδεια: GNU General Public License v3 (GPLv3)
- Πηγή: https://github.com/ShaptakNaskar/hanamimi

**Παράγωγο έργο**
- Έργο: Hana360 — πρόγραμμα αναπαραγωγής μουσικής με χωρικό ήχο 360° για iOS
- Τροποποιήθηκε: 2026-08-10
- Άδεια: GNU General Public License v3 (GPLv3), ίδια με την πηγή

Σύμφωνα με την ενότητα 5 της GPLv3, αυτό το έργο φέρει εμφανείς ειδοποιήσεις ότι έχει τροποποιηθεί από το πρωτότυπο και έχει κυκλοφορήσει υπό την GPLv3. Το πλήρες κείμενο της άδειας βρίσκεται στο αρχείο LICENSE.

ΑΥΤΟ ΤΟ ΛΟΓΙΣΜΙΚΟ ΠΑΡΕΧΕΤΑΙ «ΩΣ ΕΧΕΙ», ΧΩΡΙΣ ΚΑΜΙΑ ΕΓΓΥΗΣΗ — δείτε το αρχείο LICENSE για την πλήρη αποποίηση εγγύησης και τον περιορισμό ευθύνης.

---

<a id="עברית"></a>
## עברית

**Hana360 — גרסת iOS של Hanamimi**

תוכנה זו היא **יצירה נגזרת** של פרויקט Hanamimi (https://github.com/ShaptakNaskar/hanamimi), ששונתה בתאריך **2026-08-10** עבור iOS (iPhone / iPad) עם מנוע ניגון AVAudioEngine שנבנה עצמאית, DSP שמע מרחבי 360° ואינטגרציית שמע/ספריית מוזיקה ייעודית לפלטפורמה.

**היצירה המקורית**
- פרויקט: Hanamimi (花耳) — נגן מוזיקה חמוד ל-Android עם עדיפות לאופליין
- מחבר: Shaptak Naskar (https://github.com/ShaptakNaskar)
- רישיון: GNU General Public License v3 (GPLv3)
- מקור: https://github.com/ShaptakNaskar/hanamimi

**היצירה הנגזרת**
- פרויקט: Hana360 — נגן מוזיקה עם שמע מרחבי 360° עבור iOS
- שונה בתאריך: 2026-08-10
- רישיון: GNU General Public License v3 (GPLv3), זהה למקור

בהתאם לסעיף 5 של GPLv3, יצירה זו נושאת הודעות בולטות המציינות כי היא שונתה מהמקור ופורסמה תחת GPLv3. נוסח הרישיון המלא נמצא בקובץ LICENSE.

תוכנה זו מסופקת «כמות שהיא», ללא אחריות מכל סוג שהוא — עיין בקובץ LICENSE לנוסח המלא של כתב הוויתור על אחריות והגבלת האחריות.

---

<a id="català"></a>
## Català

**Hana360 — port iOS de Hanamimi**

Aquest programari és una **obra derivada** del projecte Hanamimi (https://github.com/ShaptakNaskar/hanamimi), modificat el **2026-08-10** per a iOS (iPhone / iPad) amb un motor de reproducció AVAudioEngine de construcció pròpia, DSP d'àudio espacial 360° i integració d'àudio/biblioteca musical específica de la plataforma.

**Obra original**
- Projecte: Hanamimi (花耳) — un reproductor de música Android bufó i offline-first
- Autor: Shaptak Naskar (https://github.com/ShaptakNaskar)
- Llicència: GNU General Public License v3 (GPLv3)
- Font: https://github.com/ShaptakNaskar/hanamimi

**Obra derivada**
- Projecte: Hana360 — reproductor de música amb àudio espacial 360° per a iOS
- Modificat el: 2026-08-10
- Llicència: GNU General Public License v3 (GPLv3), igual que la font

D'acord amb la secció 5 de la GPLv3, aquesta obra porta avisos destacats que indiquen que ha estat modificada respecte de l'original i publicada sota GPLv3. El text complet de la llicència es troba al fitxer LICENSE.

AQUEST PROGRAMARI ES PROPORCIONA «TAL COM ÉS», SENSE CAP GARANTIA — consulteu el fitxer LICENSE per a l'exclusió de garantia i la limitació de responsabilitat completes.

---

<a id="bahasa-melayu"></a>
## Bahasa Melayu

**Hana360 — port iOS Hanamimi**

Perisian ini merupakan **karya terbitan** projek Hanamimi (https://github.com/ShaptakNaskar/hanamimi), diubah suai pada **2026-08-10** untuk iOS (iPhone / iPad) dengan enjin main balik AVAudioEngine yang dibina sendiri, DSP audio spatial 360° dan integrasi audio/perpustakaan muzik khusus platform.

**Karya asal**
- Projek: Hanamimi (花耳) — pemain muzik Android yang comel dan mengutamakan luar talian
- Pengarang: Shaptak Naskar (https://github.com/ShaptakNaskar)
- Lesen: GNU General Public License v3 (GPLv3)
- Sumber: https://github.com/ShaptakNaskar/hanamimi

**Karya terbitan**
- Projek: Hana360 — pemain muzik audio spatial 360° untuk iOS
- Diubah suai: 2026-08-10
- Lesen: GNU General Public License v3 (GPLv3), sama seperti sumber

Selaras dengan seksyen 5 GPLv3, karya ini membawa notis yang jelas bahawa ia telah diubah suai daripada versi asal dan dikeluarkan di bawah GPLv3. Teks lesen penuh terdapat dalam fail LICENSE.

PERISIAN INI DISEDIAKAN «SEBAGAIMANA ADANYA», TANPA SEBARANG WARANTI — lihat fail LICENSE untuk penafian waranti dan had liabiliti sepenuhnya.

---

<a id="ગુજરાતી"></a>
## ગુજરાતી

**Hana360 — Hanamimi નો iOS પોર્ટ**

આ સોફ્ટવેર Hanamimi પ્રોજેક્ટ (https://github.com/ShaptakNaskar/hanamimi) નું **વ્યુત્પન્ન કાર્ય** છે, જેને **2026-08-10** ના રોજ iOS (iPhone / iPad) માટે સ્વ-નિર્મિત AVAudioEngine પ્લેબેક એન્જિન, 360° સ્પેશિયલ ઑડિયો DSP અને પ્લેટફોર્મ-વિશિષ્ટ ઑડિયો/મ્યુઝિક લાઇબ્રેરી એકીકરણ સાથે સુધારવામાં આવ્યું છે.

**મૂળ કાર્ય**
- પ્રોજેક્ટ: Hanamimi (花耳) — Android માટે એક પ્યારું, ઑફલાઇન-પ્રથમ મ્યુઝિક પ્લેયર
- લેખક: Shaptak Naskar (https://github.com/ShaptakNaskar)
- લાઇસન્સ: GNU General Public License v3 (GPLv3)
- અપસ્ટ્રીમ: https://github.com/ShaptakNaskar/hanamimi

**વ્યુત્પન્ન કાર્ય**
- પ્રોજેક્ટ: Hana360 — iOS માટે 360° સ્પેશિયલ-ઑડિયો મ્યુઝિક પ્લેયર
- સુધારેલ: 2026-08-10
- લાઇસન્સ: GNU General Public License v3 (GPLv3), અપસ્ટ્રીમ જેવું જ

GPLv3 §5 મુજબ, આ કાર્ય અગ્રણી સૂચનાઓ ધરાવે છે કે તે મૂળમાંથી સુધારવામાં આવ્યું છે અને GPLv3 હેઠળ પ્રકાશિત થયું છે. સંપૂર્ણ લાઇસન્સ ટેક્સ્ટ LICENSE ફાઇલમાં છે.

આ સોફ્ટવેર «જેમ છે તેમ» પ્રદાન કરવામાં આવે છે, કોઈપણ પ્રકારની વોરંટી વિના — વોરંટી અને જવાબદારીની મર્યાદાના સંપૂર્ણ અસ્વીકાર માટે LICENSE ફાઇલ જુઓ.

---

<a id="ಕನ್ನಡ"></a>
## ಕನ್ನಡ

**Hana360 — Hanamimi ಯ iOS ಪೋರ್ಟ್**

ಈ ಸಾಫ್ಟ್ವೇರ್ Hanamimi ಯೋಜನೆಯ (https://github.com/ShaptakNaskar/hanamimi) **ವ್ಯುತ್ಪನ್ನ ಕೃತಿ**ಯಾಗಿದ್ದು, **2026-08-10** ರಂದು iOS (iPhone / iPad) ಗಾಗಿ ಸ್ವಯಂ-ನಿರ್ಮಿತ AVAudioEngine ಪ್ಲೇಬ್ಯಾಕ್ ಎಂಜಿನ್, 360° ಸ್ಪೇಷಿಯಲ್ ಆಡಿಯೊ DSP ಮತ್ತು ಪ್ಲಾಟ್ಫಾರ್ಮ್-ನಿರ್ದಿಷ್ಟ ಆಡಿಯೊ/ಸಂಗೀತ ಲೈಬ್ರರಿ ಏಕೀಕರಣದೊಂದಿಗೆ ಮಾರ್ಪಡಿಸಲಾಗಿದೆ.

**ಮೂಲ ಕೃತಿ**
- ಯೋಜನೆ: Hanamimi (花耳) — Android ಗಾಗಿ ಮುದ್ದಾದ, ಆಫ್ಲೈನ್-ಪ್ರಥಮ ಸಂಗೀತ ಪ್ಲೇಯರ್
- ಲೇಖಕ: Shaptak Naskar (https://github.com/ShaptakNaskar)
- ಪರವಾನಗಿ: GNU General Public License v3 (GPLv3)
- ಅಪ್ಸ್ಟ್ರೀಮ್: https://github.com/ShaptakNaskar/hanamimi

**ವ್ಯುತ್ಪನ್ನ ಕೃತಿ**
- ಯೋಜನೆ: Hana360 — iOS ಗಾಗಿ 360° ಸ್ಪೇಷಿಯಲ್-ಆಡಿಯೊ ಸಂಗೀತ ಪ್ಲೇಯರ್
- ಮಾರ್ಪಡಿಸಲಾಗಿದೆ: 2026-08-10
- ಪರವಾನಗಿ: GNU General Public License v3 (GPLv3), ಅಪ್ಸ್ಟ್ರೀಮ್ನಂತೆಯೇ

GPLv3 §5 ರ ಪ್ರಕಾರ, ಈ ಕೃತಿಯು ಮೂಲದಿಂದ ಮಾರ್ಪಡಿಸಲಾಗಿದೆ ಮತ್ತು GPLv3 ಅಡಿಯಲ್ಲಿ ಬಿಡುಗಡೆ ಮಾಡಲಾಗಿದೆ ಎಂಬ ಪ್ರಮುಖ ಸೂಚನೆಗಳನ್ನು ಹೊಂದಿದೆ. ಸಂಪೂರ್ಣ ಪರವಾನಗಿ ಪಠ್ಯವು LICENSE ಫೈಲ್ನಲ್ಲಿದೆ.

ಈ ಸಾಫ್ಟ್ವೇರ್ ಅನ್ನು «ಇದ್ದಂತೆ» ಯಾವುದೇ ವಾರಂಟಿ ಇಲ್ಲದೆ ಒದಗಿಸಲಾಗಿದೆ — ವಾರಂಟಿ ನಿರಾಕರಣೆ ಮತ್ತು ಹೊಣೆಗಾರಿಕೆ ಮಿತಿಯ ಸಂಪೂರ್ಣ ವಿವರಕ್ಕಾಗಿ LICENSE ಫೈಲ್ ನೋಡಿ.

---

<a id="മലയാളം"></a>
## മലയാളം

**Hana360 — Hanamimi യുടെ iOS പോർട്ട്**

ഈ സോഫ്റ്റ്വെയർ Hanamimi പ്രോജക്റ്റിന്റെ (https://github.com/ShaptakNaskar/hanamimi) **വ്യുൽപ്പന്ന സൃഷ്ടി**യാണ്, **2026-08-10**-ന് iOS-നായി (iPhone / iPad) സ്വയം നിർമ്മിച്ച AVAudioEngine പ്ലേബാക്ക് എഞ്ചിൻ, 360° സ്പേഷ്യൽ ഓഡിയോ DSP, പ്ലാറ്റ്ഫോം-നിർദ്ദിഷ്ട ഓഡിയോ/സംഗീത ലൈബ്രറി സംയോജനം എന്നിവയോടെ പരിഷ്കരിച്ചിരിക്കുന്നു.

**യഥാർത്ഥ സൃഷ്ടി**
- പ്രോജക്റ്റ്: Hanamimi (花耳) — Android-നായുള്ള മനോഹരമായ, ഓഫ്ലൈൻ-പ്രഥമ സംഗീത പ്ലേയർ
- രചയിതാവ്: Shaptak Naskar (https://github.com/ShaptakNaskar)
- ലൈസൻസ്: GNU General Public License v3 (GPLv3)
- അപ്സ്ട്രീം: https://github.com/ShaptakNaskar/hanamimi

**വ്യുൽപ്പന്ന സൃഷ്ടി**
- പ്രോജക്റ്റ്: Hana360 — iOS-നായുള്ള 360° സ്പേഷ്യൽ-ഓഡിയോ സംഗീത പ്ലേയർ
- പരിഷ്കരിച്ചത്: 2026-08-10
- ലൈസൻസ്: GNU General Public License v3 (GPLv3), അപ്സ്ട്രീമിന് സമാനം

GPLv3 §5 അനുസരിച്ച്, ഈ സൃഷ്ടി മൂലത്തിൽ നിന്ന് പരിഷ്കരിച്ച് GPLv3 പ്രകാരം പുറത്തിറക്കിയതാണെന്ന് വ്യക്തമാക്കുന്ന പ്രധാന അറിയിപ്പുകൾ വഹിക്കുന്നു. പൂർണ്ണ ലൈസൻസ് പാഠം LICENSE ഫയലിലുണ്ട്.

ഈ സോഫ്റ്റ്വെയർ «ഉള്ളതുപോലെ» യാതൊരു വാറന്റിയും കൂടാതെയാണ് നൽകുന്നത് — വാറന്റി നിരാകരണത്തിന്റെയും ബാധ്യതാ പരിമിതിയുടെയും പൂർണ്ണ വിവരത്തിന് LICENSE ഫയൽ കാണുക.

---

<a id="ଓଡ଼ିଆ"></a>
## ଓଡ଼ିଆ

**Hana360 — Hanamimi ର iOS ପୋର୍ଟ**

ଏହି ସଫ୍ଟୱେର୍ Hanamimi ପ୍ରକଳ୍ପର (https://github.com/ShaptakNaskar/hanamimi) ଏକ **ବ୍ୟୁତ୍ପନ୍ନ କାର୍ଯ୍ୟ**, ଯାହା **2026-08-10** ରେ iOS (iPhone / iPad) ପାଇଁ ସ୍ୱ-ନିର୍ମିତ AVAudioEngine ପ୍ଲେବ୍ୟାକ୍ ଇଞ୍ଜିନ, 360° ସ୍ପେସିଆଲ୍ ଅଡିଓ DSP ଏବଂ ପ୍ଲାଟଫର୍ମ-ନିର୍ଦ୍ଦିଷ୍ଟ ଅଡିଓ/ସଙ୍ଗୀତ ଲାଇବ୍ରେରୀ ଏକୀକରଣ ସହିତ ସଂଶୋଧିତ ହୋଇଛି।

**ମୂଳ କାର୍ଯ୍ୟ**
- ପ୍ରକଳ୍ପ: Hanamimi (花耳) — Android ପାଇଁ ଏକ ସୁନ୍ଦର, ଅଫଲାଇନ୍-ପ୍ରଥମ ସଙ୍ଗୀତ ପ୍ଲେୟର
- ଲେଖକ: Shaptak Naskar (https://github.com/ShaptakNaskar)
- ଲାଇସେନ୍ସ: GNU General Public License v3 (GPLv3)
- ଅପଷ୍ଟ୍ରିମ୍: https://github.com/ShaptakNaskar/hanamimi

**ବ୍ୟୁତ୍ପନ୍ନ କାର୍ଯ୍ୟ**
- ପ୍ରକଳ୍ପ: Hana360 — iOS ପାଇଁ 360° ସ୍ପେସିଆଲ୍-ଅଡିଓ ସଙ୍ଗୀତ ପ୍ଲେୟର
- ସଂଶୋଧିତ: 2026-08-10
- ଲାଇସେନ୍ସ: GNU General Public License v3 (GPLv3), ଅପଷ୍ଟ୍ରିମ୍ ପରି

GPLv3 §5 ଅନୁଯାୟୀ, ଏହି କାର୍ଯ୍ୟ ମୂଳରୁ ସଂଶୋଧିତ ହୋଇ GPLv3 ଅଧୀନରେ ପ୍ରକାଶିତ ହୋଇଥିବାର ପ୍ରମୁଖ ସୂଚନା ବହନ କରେ। ସମ୍ପୂର୍ଣ୍ଣ ଲାଇସେନ୍ସ ପାଠ LICENSE ଫାଇଲରେ ଅଛି।

ଏହି ସଫ୍ଟୱେର୍ «ଯେପରି ଅଛି ସେପରି» କୌଣସି ୱାରେଣ୍ଟି ବିନା ପ୍ରଦାନ କରାଯାଏ — ୱାରେଣ୍ଟି ଅସ୍ୱୀକାର ଏବଂ ଦାୟିତ୍ୱ ସୀମିତତାର ସମ୍ପୂର୍ଣ୍ଣ ବିବରଣୀ ପାଇଁ LICENSE ଫାଇଲ ଦେଖନ୍ତୁ।

---

<a id="ਪੰਜਾਬੀ"></a>
## ਪੰਜਾਬੀ

**Hana360 — Hanamimi ਦਾ iOS ਪੋਰਟ**

ਇਹ ਸੌਫਟਵੇਅਰ Hanamimi ਪ੍ਰੋਜੈਕਟ (https://github.com/ShaptakNaskar/hanamimi) ਦਾ ਇੱਕ **ਵਿਉਤਪੰਨ ਕਾਰਜ** ਹੈ, ਜਿਸਨੂੰ **2026-08-10** ਨੂੰ iOS (iPhone / iPad) ਲਈ ਸਵੈ-ਨਿਰਮਿਤ AVAudioEngine ਪਲੇਬੈਕ ਇੰਜਣ, 360° ਸਪੇਸ਼ੀਅਲ ਆਡੀਓ DSP ਅਤੇ ਪਲੇਟਫਾਰਮ-ਵਿਸ਼ੇਸ਼ ਆਡੀਓ/ਸੰਗੀਤ ਲਾਇਬ੍ਰੇਰੀ ਏਕੀਕਰਨ ਨਾਲ ਸੋਧਿਆ ਗਿਆ ਹੈ।

**ਮੂਲ ਕਾਰਜ**
- ਪ੍ਰੋਜੈਕਟ: Hanamimi (花耳) — Android ਲਈ ਇੱਕ ਪਿਆਰਾ, ਔਫਲਾਈਨ-ਪਹਿਲਾਂ ਸੰਗੀਤ ਪਲੇਅਰ
- ਲੇਖਕ: Shaptak Naskar (https://github.com/ShaptakNaskar)
- ਲਾਇਸੰਸ: GNU General Public License v3 (GPLv3)
- ਅਪਸਟ੍ਰੀਮ: https://github.com/ShaptakNaskar/hanamimi

**ਵਿਉਤਪੰਨ ਕਾਰਜ**
- ਪ੍ਰੋਜੈਕਟ: Hana360 — iOS ਲਈ 360° ਸਪੇਸ਼ੀਅਲ-ਆਡੀਓ ਸੰਗੀਤ ਪਲੇਅਰ
- ਸੋਧਿਆ: 2026-08-10
- ਲਾਇਸੰਸ: GNU General Public License v3 (GPLv3), ਅਪਸਟ੍ਰੀਮ ਵਰਗਾ

GPLv3 §5 ਅਨੁਸਾਰ, ਇਹ ਕਾਰਜ ਪ੍ਰਮੁੱਖ ਸੂਚਨਾਵਾਂ ਰੱਖਦਾ ਹੈ ਕਿ ਇਸਨੂੰ ਮੂਲ ਤੋਂ ਸੋਧ ਕੇ GPLv3 ਤਹਿਤ ਜਾਰੀ ਕੀਤਾ ਗਿਆ ਹੈ। ਪੂਰਾ ਲਾਇਸੰਸ ਪਾਠ LICENSE ਫਾਈਲ ਵਿੱਚ ਹੈ।

ਇਹ ਸੌਫਟਵੇਅਰ «ਜਿਵੇਂ ਹੈ ਤਿਵੇਂ» ਬਿਨਾਂ ਕਿਸੇ ਵਾਰੰਟੀ ਦੇ ਪ੍ਰਦਾਨ ਕੀਤਾ ਜਾਂਦਾ ਹੈ — ਵਾਰੰਟੀ ਅਤੇ ਦੇਣਦਾਰੀ ਦੀ ਸੀਮਾ ਦੇ ਪੂਰੇ ਅਸਵੀਕਾਰ ਲਈ LICENSE ਫਾਈਲ ਦੇਖੋ।

---

<a id="தமிழ்"></a>
## தமிழ்

**Hana360 — Hanamimi இன் iOS போர்ட்**

இந்த மென்பொருள் Hanamimi திட்டத்தின் (https://github.com/ShaptakNaskar/hanamimi) **வழித்தோன்றல் படைப்பு** ஆகும், **2026-08-10** அன்று iOS (iPhone / iPad) க்காக சுயமாக உருவாக்கப்பட்ட AVAudioEngine பிளேபேக் இன்ஜின், 360° ஸ்பேஷியல் ஆடியோ DSP மற்றும் தளம் சார்ந்த ஆடியோ/இசை நூலக ஒருங்கிணைப்புடன் மாற்றியமைக்கப்பட்டுள்ளது.

**மூலப் படைப்பு**
- திட்டம்: Hanamimi (花耳) — Android க்கான அழகான, ஆஃப்லைன்-முதன்மை இசை பிளேயர்
- ஆசிரியர்: Shaptak Naskar (https://github.com/ShaptakNaskar)
- உரிமம்: GNU General Public License v3 (GPLv3)
- மேல்நிலை: https://github.com/ShaptakNaskar/hanamimi

**வழித்தோன்றல் படைப்பு**
- திட்டம்: Hana360 — iOS க்கான 360° ஸ்பேஷியல்-ஆடியோ இசை பிளேயர்
- மாற்றியமைக்கப்பட்டது: 2026-08-10
- உரிமம்: GNU General Public License v3 (GPLv3), மேல்நிலையைப் போன்றது

GPLv3 §5 இன் படி, இந்தப் படைப்பு மூலத்திலிருந்து மாற்றியமைக்கப்பட்டு GPLv3 இன் கீழ் வெளியிடப்பட்டது என்பதைக் குறிக்கும் முக்கிய அறிவிப்புகளைக் கொண்டுள்ளது. முழு உரிம உரை LICENSE கோப்பில் உள்ளது.

இந்த மென்பொருள் «உள்ளபடியே» எந்தவித உத்தரவாதமும் இன்றி வழங்கப்படுகிறது — உத்தரவாத மறுப்பு மற்றும் பொறுப்பு வரம்பின் முழு விவரத்திற்கு LICENSE கோப்பைப் பார்க்கவும்.
