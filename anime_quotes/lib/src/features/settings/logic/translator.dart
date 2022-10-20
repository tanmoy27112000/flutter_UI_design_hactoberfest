import 'package:fluttertoast/fluttertoast.dart';
import 'package:translator/translator.dart';

import '../data/datasource/settings_local_datasource.dart';

class Translator {
  Translator({
    required this.googleTranslator,
    required this.settingsLocalDataSource,
  });

  final GoogleTranslator googleTranslator;
  final ISettingsLocalDataSource settingsLocalDataSource;

  /// Translate a [String] to the specified language.
  Future<String> translateQuote(String text) async {
    try {
      final translation = await googleTranslator.translate(
        text,
        to: settingsLocalDataSource.getTranslateCode(),
      );
      return translation.text;
    } catch (e) {
      await Fluttertoast.showToast(msg: 'Couldn\'t translate');
      rethrow;
    }
  }
}
