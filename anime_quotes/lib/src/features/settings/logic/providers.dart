import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:random_anime_quotes/src/features/settings/data/datasource/settings_local_datasource.dart';
import 'package:translator/translator.dart';
import 'translator.dart';

part './state_notifiers/theme_color_notifier.dart';
part './state_notifiers/theme_mode_notifier.dart';
part './state_notifiers/translate_code_notifier.dart';

//* Settings Box
final settingsBoxProvider = Provider<Box>((ref) => throw UnimplementedError());

//* Google Translator
final googleTranslatorProvider = Provider((_) => GoogleTranslator());

//* Local Data Source
final settingsLocalDataSourceProvider = Provider<ISettingsLocalDataSource>(
  (ref) => SettingsLocalDataSource(
    box: ref.watch(settingsBoxProvider),
  ),
);

//* Translator
final translatorProvider = Provider(
  (ref) => Translator(
    settingsLocalDataSource: ref.watch(settingsLocalDataSourceProvider),
    googleTranslator: ref.watch(googleTranslatorProvider),
  ),
);

final translateCodeProvider =
    StateNotifierProvider<TranslateCodeNotifier, String>(
  (ref) => TranslateCodeNotifier(
    localDataSource: ref.watch(settingsLocalDataSourceProvider),
  ),
);

final themeColorProvider = StateNotifierProvider<ThemeColorNotifier, Color>(
  (ref) => ThemeColorNotifier(
    localDataSource: ref.watch(settingsLocalDataSourceProvider),
  ),
);

final themeModeProvider = StateNotifierProvider<ThemeModeNotifier, ThemeMode>(
  (ref) => ThemeModeNotifier(
    localDataSource: ref.watch(settingsLocalDataSourceProvider),
  ),
);
