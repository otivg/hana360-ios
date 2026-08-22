import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

/// 360 空间音效 DSP 参数 (与 C API / MethodChannel 对齐)
class SpatialDspParams {
  final bool upmixEnabled;
  final int layoutMode; // 0=Music 1=Cinema 2=Game
  final double masterGain;
  final double speakerDistance;
  final double outputLevel;
  final bool hrtfEnabled;
  final int hrtfGroup;
  final double hrtfGain;
  final bool eqEnabled;
  final List<double> eqGains; // 10 段 dB
  final double hfShelfDb;     // 齿音抑制: 8kHz high-shelf dB (0=关, 默认 -2.5)
  final bool deesserEnabled;  // De-esser 齿音动态抑制 (4.0.18: 只压齿音瞬态)
  final double deesserThresholdDb;
  final double deesserRatio;
  final bool reverbEnabled;
  final double reverbRt60;
  final double reverbRoom;
  final double reverbGainDb;
  final int trackingMode; // 0=off 1=sensor 2=xy

  const SpatialDspParams({
    this.upmixEnabled = true,
    this.layoutMode = 1,
    this.masterGain = 1.6,   // 4.0.17: 2.0→1.6 减轻 Limiter 削峰 (齿音)
    this.speakerDistance = 2.0,
    this.outputLevel = 2.0,
    this.hrtfEnabled = true,
    this.hrtfGroup = 13, // 4.0.20: 女·中头·中耳 (用户确认默认)
    this.hrtfGain = 0.5, // 4.0.20: 默认输出增益 0.5 (用户确认)
    this.eqEnabled = true, // 4.0.20: 空间 EQ 默认打开
    this.eqGains = const [1, 2, 1, 0, 0, 1, 1, 2, 1, 0], // 4.0.20: 音乐模式
    this.hfShelfDb = -2.5, // 4.0.17: 齿音抑制 8kHz shelf
    this.deesserEnabled = true, // 4.0.18: De-esser
    this.deesserThresholdDb = -30.0,
    this.deesserRatio = 3.0,
    this.reverbEnabled = true,
    this.reverbRt60 = 0.3,
    this.reverbRoom = 8.0,
    this.reverbGainDb = -12.0,
    this.trackingMode = 0,
  });

  SpatialDspParams copyWith({
    bool? upmixEnabled, int? layoutMode, double? masterGain,
    double? speakerDistance, double? outputLevel,
    bool? hrtfEnabled, int? hrtfGroup, double? hrtfGain,
    bool? eqEnabled, List<double>? eqGains, double? hfShelfDb,
    bool? deesserEnabled, double? deesserThresholdDb, double? deesserRatio,
    bool? reverbEnabled, double? reverbRt60, double? reverbRoom, double? reverbGainDb,
    int? trackingMode,
  }) =>
      SpatialDspParams(
        upmixEnabled: upmixEnabled ?? this.upmixEnabled,
        layoutMode: layoutMode ?? this.layoutMode,
        masterGain: masterGain ?? this.masterGain,
        speakerDistance: speakerDistance ?? this.speakerDistance,
        outputLevel: outputLevel ?? this.outputLevel,
        hrtfEnabled: hrtfEnabled ?? this.hrtfEnabled,
        hrtfGroup: hrtfGroup ?? this.hrtfGroup,
        hrtfGain: hrtfGain ?? this.hrtfGain,
        eqEnabled: eqEnabled ?? this.eqEnabled,
        eqGains: eqGains ?? this.eqGains,
        hfShelfDb: hfShelfDb ?? this.hfShelfDb,
        deesserEnabled: deesserEnabled ?? this.deesserEnabled,
        deesserThresholdDb: deesserThresholdDb ?? this.deesserThresholdDb,
        deesserRatio: deesserRatio ?? this.deesserRatio,
        reverbEnabled: reverbEnabled ?? this.reverbEnabled,
        reverbRt60: reverbRt60 ?? this.reverbRt60,
        reverbRoom: reverbRoom ?? this.reverbRoom,
        reverbGainDb: reverbGainDb ?? this.reverbGainDb,
        trackingMode: trackingMode ?? this.trackingMode,
      );
}

/// MethodChannel 封装 — 参数下发到 native SpatialDspBridge
class SpatialDspController {
  static const _ch = MethodChannel('hanamimi/spatial_dsp');

  bool _enabled = false;
  bool get enabled => _enabled;

  /// 360 总开关 (bypass)
  Future<void> setEnabled(bool on) async {
    _enabled = on;
    debugPrint('[360] setEnabled($on) → invoke ${on ? 'enable' : 'disable'}');
    try {
      await _ch.invokeMethod(on ? 'enable' : 'disable');
      debugPrint('[360] setEnabled($on) → native OK');
    } catch (e) {
      debugPrint('[360] setEnabled($on) → ERROR: $e');
    }
  }

  Future<void> applyAll(SpatialDspParams p) async {
    await _ch.invokeMethod('setUpmix',
        {'enabled': p.upmixEnabled, 'layoutMode': p.layoutMode});
    await _ch.invokeMethod('setUpmixGains', {
      'masterGain': p.masterGain,
      'speakerDistance': p.speakerDistance,
      'outputLevel': p.outputLevel,
    });
    await _ch.invokeMethod('setHrtf',
        {'enabled': p.hrtfEnabled, 'group': p.hrtfGroup, 'outputGain': p.hrtfGain});
    await _ch.invokeMethod('setEq', {'enabled': p.eqEnabled, 'gains': p.eqGains});
    await _ch.invokeMethod('setHfShelf', {'gainDb': p.hfShelfDb});
    await _ch.invokeMethod('setDeesser', {
      'enabled': p.deesserEnabled,
      'thresholdDb': p.deesserThresholdDb,
      'ratio': p.deesserRatio,
    });
    await _ch.invokeMethod('setReverb', {
      'enabled': p.reverbEnabled,
      'rt60': p.reverbRt60,
      'roomSize': p.reverbRoom,
      'damping': 0.5,
      'diffusion': 0.7,
      'preDelayMs': 20.0,
      'gainDb': p.reverbGainDb,
    });
    // 追踪模式: 1=sensor 立即启动, 2=XY 手动 (无传感器)
    if (p.trackingMode == 1) {
      await _ch.invokeMethod('startTracking');
    } else {
      await _ch.invokeMethod('stopTracking');
    }
  }

  /// XY 手动拖拽 (trackingMode=2 时)
  Future<void> setHeadRotation(double yaw, double pitch, {bool active = true}) =>
      _ch.invokeMethod('setHeadRotation', {'yaw': yaw, 'pitch': pitch, 'active': active});

  Future<Map<Object?, Object?>> getDefaults() async =>
      await _ch.invokeMethod('getDefaults') as Map<Object?, Object?>? ?? {};
}
