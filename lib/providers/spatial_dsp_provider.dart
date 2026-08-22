import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../audio/spatial_dsp_controller.dart';

/// 360 空间音效状态 (Riverpod)
class SpatialDspState {
  final bool enabled; // 总开关 (DSP bypass)
  final SpatialDspParams params;

  const SpatialDspState({required this.enabled, required this.params});
}

/// enabled + 参数实时下发 native
class SpatialDspControllerNotifier extends Notifier<SpatialDspState> {
  late final SpatialDspController _dsp;

  @override
  SpatialDspState build() {
    _dsp = SpatialDspController();
    return SpatialDspState(enabled: false, params: const SpatialDspParams());
  }

  /// 总开关 — 立即下发, 不打断播放
  Future<void> toggleEnabled(bool on) async {
    await _dsp.setEnabled(on);
    state = SpatialDspState(enabled: on, params: state.params);
    if (on) await _dsp.applyAll(state.params); // 全量参数 + 追踪模式
  }

  Future<void> update(SpatialDspParams next) async {
    state = SpatialDspState(enabled: state.enabled, params: next);
    if (state.enabled) await _dsp.applyAll(next);
  }

  Future<void> setUpmixEnabled(bool on) => update(state.params.copyWith(upmixEnabled: on));
  Future<void> setHrtfEnabled(bool on) => update(state.params.copyWith(hrtfEnabled: on));
  Future<void> setLayoutMode(int mode) => update(state.params.copyWith(layoutMode: mode));
  Future<void> setMasterGain(double v) => update(state.params.copyWith(masterGain: v));
  Future<void> setSpeakerDistance(double v) => update(state.params.copyWith(speakerDistance: v));
  Future<void> setOutputLevel(double v) => update(state.params.copyWith(outputLevel: v));
  Future<void> setHrtfGroup(int g) => update(state.params.copyWith(hrtfGroup: g));
  Future<void> setHrtfGain(double v) => update(state.params.copyWith(hrtfGain: v));
  Future<void> setEqEnabled(bool on) => update(state.params.copyWith(eqEnabled: on));
  Future<void> setEqGains(List<double> g) => update(state.params.copyWith(eqGains: g));
  Future<void> setReverbEnabled(bool on) => update(state.params.copyWith(reverbEnabled: on));
  Future<void> setReverbRt60(double v) => update(state.params.copyWith(reverbRt60: v));
  Future<void> setReverbRoom(double v) => update(state.params.copyWith(reverbRoom: v));
  Future<void> setReverbGainDb(double v) => update(state.params.copyWith(reverbGainDb: v));
  Future<void> setTrackingMode(int m) => update(state.params.copyWith(trackingMode: m));

  /// XY 手动追踪 (trackingMode=2)
  Future<void> setManualRotation(double yaw, double pitch) =>
      _dsp.setHeadRotation(yaw, pitch);
}

final spatialDspProvider =
    NotifierProvider<SpatialDspControllerNotifier, SpatialDspState>(
        SpatialDspControllerNotifier.new);
