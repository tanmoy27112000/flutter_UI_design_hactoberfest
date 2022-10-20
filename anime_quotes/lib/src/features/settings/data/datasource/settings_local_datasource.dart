import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'package:random_anime_quotes/src/core/constants/constants.dart';
import 'package:random_anime_quotes/src/core/theme/app_theme.dart';

abstract class ISettingsLocalDataSource {
  Color getThemeColor();
  void saveThemeColor(Color color);
  ThemeMode getThemeMode();
  void saveThemeMode(ThemeMode themeMode);
  String getTranslateCode();
  void saveTranslateCode(String code);
}

const _themeColorKey = 'themeColorKey';
const _themeModeKey = 'themeDataKey';
const _translateCodeKey = 'translateCodeKey';

class SettingsLocalDataSource implements ISettingsLocalDataSource {
  SettingsLocalDataSource({
    required this.box,
  });

  final Box box;

  @override
  Color getThemeColor() {
    final int value = box.get(
      _themeColorKey,
      defaultValue: primaryColor.value,
    );
    return Color(value);
  }

  @override
  void saveThemeColor(Color color) {
    box.put(_themeColorKey, color.value);
  }

  @override
  ThemeMode getThemeMode() {
    return ThemeMode.values[box.get(_themeModeKey, defaultValue: 1)];
  }

  @override
  void saveThemeMode(ThemeMode themeMode) {
    box.put(_themeModeKey, themeMode.index);
  }

  @override
  String getTranslateCode() {
    return box.get(_translateCodeKey, defaultValue: defaultTranslationCode);
  }

  @override
  void saveTranslateCode(String code) {
    box.put(_translateCodeKey, code);
  }
}
