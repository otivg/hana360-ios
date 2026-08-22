import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../l10n/app_localizations.dart';

import '../../../providers/spatial_dsp_provider.dart';
import '../../../theme/app_theme.dart';
import '../../../theme/hanamimi_theme.dart';
import '../../../theme/theme_tokens.dart';
import '../../modals/spatial_360_sheet.dart';

/// 播放页 360 空间音效开关胶囊 (播放控制下方)
/// 点击整个胶囊 = 360 总开关; 右侧文字显示状态。
class SpatialToggle extends ConsumerWidget {
  const SpatialToggle({super.key, required this.theme});

  final HanamimiTheme theme;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(spatialDspProvider);
    final on = state.enabled;

    return InkWell(
      onTap: () async {
        await ref.read(spatialDspProvider.notifier).toggleEnabled(!on);
      },
      borderRadius: BorderRadius.circular(Radii.md),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: Space.s3, vertical: 9),
        decoration: BoxDecoration(
          color: theme.surface,
          borderRadius: BorderRadius.circular(Radii.md),
          border: Border.all(color: theme.divider),
        ),
        child: Row(
          children: [
            Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: on ? theme.accent : theme.textMuted,
              ),
            ),
            const SizedBox(width: Space.s2),
            Text(AppLocalizations.of(context)!.spatialToggleTitle,
                style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: theme.textPrimary)),
            const Spacer(),
            Text(on
                    ? AppLocalizations.of(context)!.spatialOn
                    : AppLocalizations.of(context)!.spatialOff,
                style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 12,
                    color: on ? theme.accent : theme.textMuted)),
          ],
        ),
      ),
    );
  }
}
