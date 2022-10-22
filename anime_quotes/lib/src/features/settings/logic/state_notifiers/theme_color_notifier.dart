part of '../providers.dart';

class ThemeColorNotifier extends StateNotifier<Color> {
  ThemeColorNotifier({
    required this.localDataSource,
  }) : super(localDataSource.getThemeColor());

  final ISettingsLocalDataSource localDataSource;

  setThemeColor(Color color) {
    state = color;
    localDataSource.saveThemeColor(color);
  }
}
