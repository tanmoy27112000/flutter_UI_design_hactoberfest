import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:random_anime_quotes/src/core/theme/app_theme.dart';

import 'color_option.dart';

class ColorOptions extends StatelessWidget {
  const ColorOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: AppTheme.colors
            .map((color) => ColorOption(color))
            .toList(growable: false),
      ),
    );
  }
}
