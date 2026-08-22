# Hana360 — 360° Spatial Audio Music Player (iOS)

> An **iOS port of [Hanamimi](https://github.com/ShaptakNaskar/hanamimi)** (GPLv3) with a self-built AVAudioEngine playback core and **personalized HRTF binaural rendering**.
> Offline-first local music playback — no accounts, no ads, nothing uploaded.

**License**: [GPLv3](LICENSE) · Derivative notice: [NOTICE](NOTICE.md)

---

## What is this?

Hana360 brings the cozy, kawaii local-music experience of Hanamimi to iPhone & iPad, and adds a full **360° spatial audio DSP chain**:

- **Personalized HRTF binaural rendering** — CIPIC V9 anthropometric profiles (15 groups), 72-direction interpolation, 256-tap convolution, with a 5-stage sibilance-control chain (de-esser + high-frequency shaping) so vocals stay smooth
- **Self-built AVAudioEngine playback core** — standard decoding (MP3/AAC/ALAC/FLAC/WAV…) with an AVAssetReader fallback for tricky MPEG-2 files; route-change auto-reconnect (speaker ⇄ Bluetooth switches in under a second)
- **Local-first library** — import files/folders **by reference** (no copying), directory bookmarks survive restarts; Songs / Albums / Folders / Playlists + search + liked tracks
- **Head tracking** (CoreMotion v1), karaoke lyrics, FFT visualizer, sleep timer, adaptive themes, and a beagle mascot that vibes to the beat

## iOS-specific additions (vs. upstream)

| Feature | Notes |
|---------|-------|
| AVAudioEngine playback core | float32 pipeline, `AVAssetReader` fallback |
| 360° spatial DSP | upmix (M/S 9-object) → HRTF render → EQ → De-esser → Reverb → Limiter |
| Route-change auto-reconnect | speaker ⇄ Bluetooth, <1 s re-prime (see docs §10) |
| Directory bookmark persistence | pick once, playback survives restarts |
| Security-scoped import model | `UIDocumentPicker` + bookmarks, no storage duplication |
| Engine diagnostic log | `Documents/hanamimi_engine.log` (pullable via devicectl) |

## Build

Requirements: Xcode 15+, Flutter 3.29+, Apple Developer account (automatic signing).

```bash
flutter pub get
flutter build ios --release     # → build/ios/iphoneos/Runner.app
xcrun devicectl device install app --device <UDID> build/ios/iphoneos/Runner.app
```

### Build prerequisites — HRIR data file (required for 360° spatial audio)

Hana360's 360° spatial audio requires the `cipic_v9_hrir.bin` HRTF database (34.7 MB), which is **not** distributed in this repository (third-party research data — see [NOTICE](NOTICE) → HRIR Data Notice).

- **iOS**: place it at `native/SpatialDsp/Resources/cipic_v9_hrir.bin`
- **Android**: place it at `android/app/src/main/assets/cipic_v9_hrir.bin`

Generate it from the CIPIC HRTF Database (<https://www.ece.ucdavis.edu/cipic/spatial-sound/hrtf-data/>) using the format parameters declared in `native/SpatialDsp/include/cipic_hrir_v9.h` (15 groups × 25 azimuths × 50 elevations × 217 taps @ 48 kHz).

## Versioning

`Ver X.Y.ZZZZ` (milestone.module.counter) — currently **4.0.38**.

## Compliance

- Derived from [Hanamimi](https://github.com/ShaptakNaskar/hanamimi) (Copyright ShaptakNaskar, GPLv3), modified 2026-08-10
- Distributed under **GPLv3** per upstream; source is public in this repository (see [NOTICE](NOTICE))
- Upstream copyright and source links are preserved in the in-app About page

## Layout

```
lib/           Dart: UI / queue / library / lyrics / visualizer
ios/Runner/    Native: AudioEngine.swift + EngineChannel + SpatialDspChannel
native/SpatialDsp/  C++ DSP kernel (upmix, HRTF renderer, EQ, de-esser, reverb, limiter)
docs/          Port design docs (incl. §10 audio route-change design notes)
Release/       Per-version release notes & verification plans
```
