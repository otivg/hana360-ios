# R8 was stripping/obfuscating parts of media3 (ExoPlayer) that are
# reached reflectively, causing an NPE inside ExoPlayerImplInternal on
# every track load in release builds. Keep the audio stack intact.
-keep class androidx.media3.** { *; }
-keep interface androidx.media3.** { *; }

# just_audio + audio_service plugin channels
-keep class com.ryanheise.** { *; }

# Kotlin platform channels in this app
-keep class com.hanamimi.app.** { *; }

# ===== V3.2.11: 360 空间音效 — 防 R8 混淆 (JNI + 反射) =====
# JNI_OnLoad 用 RegisterNatives 注册的类名必须是原始名 (FindClass),
# R8 改名会返回 JNI_ERR → UnsatisfiedLinkError → 闪退
-keep class com.hanamimi.spatial.** { *; }
-keepclassmembers class com.hanamimi.spatial.** { *; }
# JNI 原生库加载 (System.loadLibrary) — 防 strip
-keep class com.hanamimi.spatial.SpatialDspNative { *; }
