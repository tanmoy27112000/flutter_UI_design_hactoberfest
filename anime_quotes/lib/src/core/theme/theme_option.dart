import 'package:flutter/material.dart';

const _basePath = 'assets/images/theme';

class ThemeOption {
  final String name;
  final String activeImage;
  final String inactiveImage;
  final ThemeMode themeMode;

  ThemeOption({
    required this.name,
    required this.themeMode,
  })  : activeImage = '$_basePath/${name}1.png',
        inactiveImage = '$_basePath/${name}0.png';
}
