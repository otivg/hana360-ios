import 'package:flutter/material.dart';

import '../../../l10n/app_localizations.dart';
import '../../../theme/hanamimi_theme.dart';
import '../../../theme/theme_tokens.dart';

class NavItem {
  const NavItem(this.label, this.icon, this.activeIcon);
  final String label;
  final IconData icon;
  final IconData activeIcon;
}

List<NavItem> _navItems(BuildContext context) {
  final l10n = AppLocalizations.of(context)!;
  return [
    NavItem(l10n.navHome, Icons.home_outlined, Icons.home_rounded),
    NavItem(l10n.navLibrary, Icons.music_note_outlined, Icons.music_note_outlined),
    NavItem(l10n.navPlaying, Icons.play_circle_outline, Icons.play_circle),
    NavItem(l10n.navYou, Icons.pets_outlined, Icons.pets_outlined),
  ];
}

/// Wide-window nav rail (adaptive shell): the same destinations as
/// [HanamimiBottomNav], stood up as a left rail. In the three-pane
/// layout Now Playing lives in its own permanent panel, so [showPlaying]
/// drops that destination (index 2) from the rail.
class HanamimiSideRail extends StatelessWidget {
  const HanamimiSideRail({
    super.key,
    required this.activeIndex,
    required this.onChanged,
    required this.theme,
    this.showPlaying = true,
  });

  final int activeIndex;
  final ValueChanged<int> onChanged;
  final HanamimiTheme theme;
  final bool showPlaying;

  @override
  Widget build(BuildContext context) {
    final items = _navItems(context);
    return Container(
      width: 76,
      decoration: BoxDecoration(
        // Opaque so a light album backdrop can't wash the rail pale and
        // hide its icons on a dark theme.
        color: theme.surface,
        border: Border(
            right: BorderSide(
                color: theme.divider.withValues(alpha: 0.4), width: 0.5)),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (var i = 0; i < items.length; i++)
              if (showPlaying || i != 2)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: Space.s3),
                  child: InkResponse(
                    onTap: () => onChanged(i),
                    radius: 34,
                    child: Column(
                      children: [
                        Icon(
                          i == activeIndex
                              ? items[i].activeIcon
                              : items[i].icon,
                          size: 24,
                          color: i == activeIndex
                              ? theme.primary
                              : theme.textMuted,
                        ),
                        const SizedBox(height: 3),
                        AnimatedDefaultTextStyle(
                          duration: Anim.minTransition,
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 10,
                            fontWeight: i == activeIndex
                                ? FontWeight.w700
                                : FontWeight.w500,
                            color: i == activeIndex
                                ? theme.primary
                                : theme.textMuted.withValues(alpha: 0.85),
                          ),
                          child: Text(items[i].label),
                        ),
                      ],
                    ),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}

class HanamimiBottomNav extends StatelessWidget {
  const HanamimiBottomNav({
    super.key,
    required this.activeIndex,
    required this.onChanged,
    required this.theme,
  });

  final int activeIndex;
  final ValueChanged<int> onChanged;
  final HanamimiTheme theme;

  @override
  Widget build(BuildContext context) {
    final items = _navItems(context);
    return Container(
      decoration: BoxDecoration(
        color: theme.surface,
        border: Border(top: BorderSide(color: theme.divider, width: 0.5)),
      ),
      child: SafeArea(
        top: false,
        child: SizedBox(
          height: Sizes.bottomNavHeight,
          child: Row(
            children: [
              for (var i = 0; i < items.length; i++)
                Expanded(
                  child: InkResponse(
                    onTap: () => onChanged(i),
                    radius: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          i == activeIndex
                              ? items[i].activeIcon
                              : items[i].icon,
                          size: 24,
                          color: i == activeIndex
                              ? theme.primary
                              : theme.textMuted,
                        ),
                        const SizedBox(height: 3),
                        AnimatedDefaultTextStyle(
                          duration: Anim.minTransition,
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 10,
                            fontWeight: i == activeIndex
                                ? FontWeight.w700
                                : FontWeight.w500,
                            color: i == activeIndex
                                ? theme.primary
                                : theme.textMuted.withValues(alpha: 0.85),
                          ),
                          child: Text(items[i].label),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
