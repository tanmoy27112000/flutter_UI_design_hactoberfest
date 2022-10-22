part of '../providers.dart';

class TranslateCodeNotifier extends StateNotifier<String> {
  TranslateCodeNotifier({
    required this.localDataSource,
  }) : super(localDataSource.getTranslateCode());

  final ISettingsLocalDataSource localDataSource;

  void saveTranslateCode(String code) {
    state = code;
    localDataSource.saveTranslateCode(code);
  }
}
