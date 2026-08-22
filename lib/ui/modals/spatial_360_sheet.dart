import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../l10n/app_localizations.dart';

import '../../providers/spatial_dsp_provider.dart';
import '../../audio/spatial_dsp_controller.dart';
import '../../providers/theme_provider.dart';
import '../../theme/app_theme.dart';
import '../../theme/hanamimi_theme.dart';
import '../../theme/theme_tokens.dart';
import '../components/shared/pill_tab_bar.dart';

/// 360 空间音效设置底部面板 (5 分区, 全部实时生效)
void showSpatial360Sheet(BuildContext context, WidgetRef ref) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (_) => FractionallySizedBox(
      heightFactor: 0.85,
      child: _Spatial360SheetBody(),
    ),
  );
}

/// 15 组 CIPIC 聚类标签 (4.0.23+: 从 l10n 读取, 中文/英文各自显示)
List<String> hrtfGroupLabels(BuildContext context) {
  final l10n = AppLocalizations.of(context)!;
  return [
    l10n.hrtfGroup0, l10n.hrtfGroup1, l10n.hrtfGroup2,
    l10n.hrtfGroup3, l10n.hrtfGroup4, l10n.hrtfGroup5,
    l10n.hrtfGroup6, l10n.hrtfGroup7, l10n.hrtfGroup8,
    l10n.hrtfGroup9, l10n.hrtfGroup10, l10n.hrtfGroup11,
    l10n.hrtfGroup12, l10n.hrtfGroup13, l10n.hrtfGroup14,
  ];
}

/// EQ 预设 10 段增益曲线 (key 为稳定 id, 显示文案走 l10n)
const eqPresets = <String, List<double>>{
  'music': [1, 2, 1, 0, 0, 1, 1, 2, 1, 0],
  'cinema': [3, 2, 1, 0, 0, 0, 1, 2, 2, 1],
  'game': [0, 0, 1, 2, 3, 2, 1, 0, 0, 0],
  'voice': [0, 0, 0, 1, 2, 3, 2, 1, 0, 0],
};

String _eqPresetLabel(BuildContext context, String id) {
  final l10n = AppLocalizations.of(context)!;
  return switch (id) {
    'music' => l10n.eqPresetMusic,
    'cinema' => l10n.eqPresetCinema,
    'game' => l10n.eqPresetGame,
    'voice' => l10n.eqPresetVoice,
    _ => id,
  };
}
const eqFreqLabels = <String>[
  '31', '62', '125', '250', '500', '1k', '2k', '4k', '8k', '16k',
];

class _Spatial360SheetBody extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(currentThemeProvider);
    final dsp = ref.watch(spatialDspProvider);
    final p = dsp.params;

    return Material(
      color: theme.surface,
      borderRadius: const BorderRadius.vertical(top: Radius.circular(Radii.lg)),
      child: SafeArea(
        top: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 头部: 标题 + 总开关
            Padding(
              padding: const EdgeInsets.fromLTRB(Space.s4, Space.s3, Space.s4, 0),
              child: Row(
                children: [
                  Text(AppLocalizations.of(context)!.spatialAudioTitle,
                      style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: theme.textPrimary)),
                  const Spacer(),
                  Text(dsp.enabled ? 'ON' : 'OFF',
                      style: TextStyle(
                          fontSize: 12,
                          color: dsp.enabled ? theme.accent : theme.textMuted)),
                  Switch(
                    value: dsp.enabled,
                    activeThumbColor: theme.accent,
                    onChanged: (v) =>
                        ref.read(spatialDspProvider.notifier).toggleEnabled(v),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(Space.s4, Space.s1, Space.s4, Space.s6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _section(theme, AppLocalizations.of(context)!.secUpmix),
                    _algoSwitchRow(theme, AppLocalizations.of(context)!.algoSwitch, p.upmixEnabled,
                        (v) => ref.read(spatialDspProvider.notifier).setUpmixEnabled(v)),
                    const SizedBox(height: Space.s2),
                    // 布局模式 Music/Cinema/Game — 复用 EQ 预设的"音乐/影院/游戏"
                    // 翻译 (值完全一致, 18 语言均已翻译)
                    PillTabBar(
                      tabs: [
                        AppLocalizations.of(context)!.eqPresetMusic,
                        AppLocalizations.of(context)!.eqPresetCinema,
                        AppLocalizations.of(context)!.eqPresetGame,
                      ],
                      activeIndex: p.layoutMode.clamp(0, 2),
                      onChanged: (i) =>
                          ref.read(spatialDspProvider.notifier).setLayoutMode(i),
                      theme: theme,
                    ),
                    const SizedBox(height: Space.s3),
                    _slider(theme, AppLocalizations.of(context)!.speakerDistance, p.speakerDistance, 1.0, 5.0,
                        (v) => ref.read(spatialDspProvider.notifier).setSpeakerDistance(v)),
                    _slider(theme, AppLocalizations.of(context)!.channelTrim, p.outputLevel, 0.5, 6.0,
                        (v) => ref.read(spatialDspProvider.notifier).setOutputLevel(v)),
                    _slider(theme, AppLocalizations.of(context)!.masterGain, p.masterGain, 0.5, 6.0,
                        (v) => ref.read(spatialDspProvider.notifier).setMasterGain(v)),
                    const SizedBox(height: Space.s2),

                    _section(theme, AppLocalizations.of(context)!.secHrtf),
                    _algoSwitchRow(theme, AppLocalizations.of(context)!.algoSwitch, p.hrtfEnabled,
                        (v) => ref.read(spatialDspProvider.notifier).setHrtfEnabled(v)),
                    const SizedBox(height: Space.s2),
                    SizedBox(
                      height: 32,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: hrtfGroupLabels(context).length,
                        separatorBuilder: (_, __) => const SizedBox(width: 6),
                        itemBuilder: (_, i) {
                          final sel = p.hrtfGroup == i;
                          return InkWell(
                            onTap: () => ref
                                .read(spatialDspProvider.notifier)
                                .setHrtfGroup(i),
                            borderRadius: BorderRadius.circular(Radii.pill),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: Space.s3, vertical: 6),
                              decoration: BoxDecoration(
                                color: sel ? theme.accent : theme.background,
                                borderRadius:
                                    BorderRadius.circular(Radii.pill),
                                border: Border.all(
                                    color: sel ? theme.accent : theme.divider),
                              ),
                              child: Text(hrtfGroupLabels(context)[i],
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: sel
                                          ? theme.background
                                          : theme.textMuted)),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: Space.s3),
                    _slider(theme, AppLocalizations.of(context)!.outputGain, p.hrtfGain, 0.2, 2.0,
                        (v) => ref.read(spatialDspProvider.notifier).setHrtfGain(v)),
                    const SizedBox(height: Space.s2),

                    _section(theme, AppLocalizations.of(context)!.secEq),
                    _algoSwitchRow(theme, AppLocalizations.of(context)!.algoSwitch, p.eqEnabled,
                        (v) => ref.read(spatialDspProvider.notifier).setEqEnabled(v)),
                    const SizedBox(height: Space.s2),
                    _eqPresetRow(context, theme, ref, p),
                    if (p.eqEnabled) ...[
                      const SizedBox(height: Space.s2),
                      _eqBands(theme, ref, p),
                    ],
                    const SizedBox(height: Space.s2),

                    _section(theme, AppLocalizations.of(context)!.secReverb),
                    _algoSwitchRow(theme, AppLocalizations.of(context)!.algoSwitch, p.reverbEnabled,
                        (v) => ref.read(spatialDspProvider.notifier).setReverbEnabled(v)),
                    const SizedBox(height: Space.s2),
                    Row(
                      children: [
                        Expanded(
                          child: _sliderInline(theme, AppLocalizations.of(context)!.roomSize, p.reverbRoom, 1, 20,
                              (v) => ref.read(spatialDspProvider.notifier).setReverbRoom(v)),
                        ),
                        const SizedBox(width: Space.s3),
                        Expanded(
                          child: _sliderInline(theme, 'RT60', p.reverbRt60, 0.1, 3.0,
                              (v) => ref.read(spatialDspProvider.notifier).setReverbRt60(v)),
                        ),
                      ],
                    ),
                    _slider(theme, AppLocalizations.of(context)!.reverbGain, p.reverbGainDb, -30, 0,
                        (v) => ref.read(spatialDspProvider.notifier).setReverbGainDb(v)),
                    const SizedBox(height: Space.s2),

                    _section(theme, AppLocalizations.of(context)!.secTracking),
                    PillTabBar(
                      tabs: [
                        AppLocalizations.of(context)!.trackOff,
                        AppLocalizations.of(context)!.trackSensor,
                        AppLocalizations.of(context)!.trackManual,
                      ],
                      activeIndex: p.trackingMode.clamp(0, 2),
                      onChanged: (i) =>
                          ref.read(spatialDspProvider.notifier).setTrackingMode(i),
                      theme: theme,
                    ),
                    if (p.trackingMode == 2) ...[
                      const SizedBox(height: Space.s3),
                      Text(AppLocalizations.of(context)!.dragHint,
                          style: AppText.caption(theme)),
                    ],
                    const SizedBox(height: Space.s2),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// V3.1.0: 各算法独立开关行 (上混/HRTF/EQ/混响)
  Widget _algoSwitchRow(HanamimiTheme theme, String label, bool value,
      ValueChanged<bool> onChange) {
    return Row(
      children: [
        Text(label,
            style: TextStyle(
                fontFamily: 'Nunito', fontSize: 12, color: theme.textMuted)),
        const Spacer(),
        Switch(
          value: value,
          activeThumbColor: theme.accent,
          onChanged: onChange,
        ),
      ],
    );
  }

  Widget _section(HanamimiTheme theme, String title) => Padding(
        padding: const EdgeInsets.symmetric(vertical: Space.s2),
        child: Text(title,
            style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: theme.secondary)),
      );

  Widget _slider(HanamimiTheme theme, String label, double value, double min,
          double max, ValueChanged<double> onChanged) =>
      Row(
        children: [
          SizedBox(
              width: 64,
              child: Text(label,
                  style: TextStyle(fontSize: 12, color: theme.textMuted))),
          Expanded(
            child: Slider(
              value: value.clamp(min, max),
              min: min,
              max: max,
              activeColor: theme.accent,
              onChanged: onChanged,
            ),
          ),
          SizedBox(
            width: 44,
            child: Text('${value.toStringAsFixed(1)}',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 12, color: theme.textPrimary)),
          ),
        ],
      );

  Widget _sliderInline(HanamimiTheme theme, String label, double value,
          double min, double max, ValueChanged<double> onChanged) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,
              style: TextStyle(fontSize: 12, color: theme.textMuted)),
          Slider(
            value: value.clamp(min, max),
            min: min,
            max: max,
            activeColor: theme.accent,
            onChanged: onChanged,
          ),
        ],
      );

  Widget _eqPresetRow(
      BuildContext context, HanamimiTheme theme, WidgetRef ref,
      SpatialDspParams p) {
    final custom = !eqPresets.values.any((v) => _isPreset(v, p.eqGains));
    return Row(
      children: [
        for (final entry in eqPresets.entries)
          Padding(
            padding: const EdgeInsets.only(right: 6),
            child: _chip(theme, _eqPresetLabel(context, entry.key),
                _isPreset(entry.value, p.eqGains),
                () => ref.read(spatialDspProvider.notifier)
                    .update(p.copyWith(eqEnabled: true, eqGains: entry.value))),
          ),
        _chip(theme, AppLocalizations.of(context)!.customEq, custom,
            () => ref.read(spatialDspProvider.notifier).setEqEnabled(!p.eqEnabled)),
      ],
    );
  }

  bool _isPreset(List<double> preset, [List<double>? current]) {
    final c = current;
    if (c == null) return false;
    if (preset.length != c.length) return false;
    for (var i = 0; i < preset.length; i++) {
      if ((preset[i] - c[i]).abs() > 0.01) return false;
    }
    return true;
  }

  Widget _chip(HanamimiTheme theme, String label, bool sel, VoidCallback onTap) =>
      InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(Radii.pill),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: Space.s3, vertical: 6),
          decoration: BoxDecoration(
            color: sel ? theme.accent : theme.background,
            borderRadius: BorderRadius.circular(Radii.pill),
            border: Border.all(color: sel ? theme.accent : theme.divider),
          ),
          child: Text(label,
              style: TextStyle(
                  fontSize: 11, color: sel ? theme.background : theme.textMuted)),
        ),
      );

  Widget _eqBands(HanamimiTheme theme, WidgetRef ref, SpatialDspParams p) {
    final gains = List<double>.from(p.eqGains);
    return Column(
      children: [
        for (var i = 0; i < 10; i++)
          Row(
            children: [
              SizedBox(
                  width: 40,
                  child: Text('${eqFreqLabels[i]}Hz',
                      style:
                          TextStyle(fontSize: 10, color: theme.textMuted))),
              Expanded(
                child: Slider(
                  value: gains[i].clamp(-12.0, 12.0),
                  min: -12,
                  max: 12,
                  activeColor: theme.accent,
                  onChanged: (v) {
                    gains[i] = v;
                    ref.read(spatialDspProvider.notifier).setEqGains(List.from(gains));
                  },
                ),
              ),
              SizedBox(
                width: 32,
                child: Text('${gains[i] >= 0 ? '+' : ''}${gains[i].toStringAsFixed(1)}',
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 10, color: theme.textPrimary)),
              ),
            ],
          ),
      ],
    );
  }
}
