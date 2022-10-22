import 'package:flutter/material.dart';

import 'package:random_anime_quotes/src/core/extensions/text_theme_styles_x.dart';

class SettingsLabel extends StatelessWidget {
  const SettingsLabel(
    this.label, {
    Key? key,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(label, style: context.subtitle2);
  }
}
