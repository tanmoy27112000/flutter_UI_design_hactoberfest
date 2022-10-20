import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:random_anime_quotes/src/core/theme/app_theme.dart';

import 'theme_option_card.dart';

class ThemeOptions extends ConsumerWidget {
  const ThemeOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: AppTheme.options
            .map((option) => ThemeOptionCard(option))
            .toList(growable: false),
      ),
    );
  }
}
