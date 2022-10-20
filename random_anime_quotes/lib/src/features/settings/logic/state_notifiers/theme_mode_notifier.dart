part of '../providers.dart';

class ThemeModeNotifier extends StateNotifier<ThemeMode> {
  ThemeModeNotifier({
    required this.localDataSource,
  }) : super(localDataSource.getThemeMode());

  final ISettingsLocalDataSource localDataSource;

  setThemeMode(ThemeMode themeMode) {
    state = themeMode;
    localDataSource.saveThemeMode(themeMode);
  }
}
