import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:random_anime_quotes/src/core/animations/rotate_animation.dart';
import 'package:random_anime_quotes/src/core/extensions/text_theme_styles_x.dart';

import 'widgets/widgets.dart';

class SettingsBottomSheet extends StatelessWidget {
  const SettingsBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: theme.scaffoldBackgroundColor,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const RotateAnimation(
            child: Icon(CupertinoIcons.chevron_compact_down),
          ),
          Text(
            'Hi, Senpai!',
            style: context.headline4.copyWith(color: theme.primaryColor),
          ),
          const SettingsLabel('Theme'),
          const ThemeOptions(),
          const SettingsLabel('Primary Color'),
          const ColorOptions(),
          const SettingsLabel('Translate to'),
          const TranslationDropDown(),
          const SettingsLabel('Quotes'),
          const LikedQuotesOption(),
        ],
      ),
    );
  }
}
