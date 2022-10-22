import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:random_anime_quotes/src/core/theme/theme_option.dart';
import 'package:random_anime_quotes/src/features/settings/logic/providers.dart';

import 'theme_option_card_name.dart';

class ThemeOptionCard extends ConsumerWidget {
  const ThemeOptionCard(
    this.themeOption, {
    Key? key,
  }) : super(key: key);

  final ThemeOption themeOption;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);
    final themeColor = ref.watch(themeColorProvider);
    final isSelected = themeMode == themeOption.themeMode;

    return InkWell(
      onTap: () => ref
          .read(themeModeProvider.notifier)
          .setThemeMode(themeOption.themeMode),
      borderRadius: const BorderRadius.all(Radius.circular(25)),
      child: AnimatedScale(
        scale: isSelected ? 1.1 : 1,
        duration: const Duration(milliseconds: 150),
        child: Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                isSelected
                    ? themeOption.activeImage
                    : themeOption.inactiveImage,
              ),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(25)),
            border: Border.all(
              color: isSelected ? themeColor : Colors.transparent,
              width: 3,
            ),
          ),
          child: ThemeOptionCardName(name: themeOption.name),
        ),
      ),
    );
  }
}
