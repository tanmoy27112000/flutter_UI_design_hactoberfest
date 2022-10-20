import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:random_anime_quotes/src/features/quotes/logic/providers.dart';

import 'src/core/constants/constants.dart';
import 'src/features/settings/logic/providers.dart';
import 'src/app.dart';

Future<void> main() async {
  // Initialize hive
  await Hive.initFlutter();
  // Open Boxes
  final quotesBox = await Hive.openBox(quotesBoxName);
  final settingsBox = await Hive.openBox(settingsBoxName);
  runApp(
    ProviderScope(
      overrides: [
        quotesBoxProvider.overrideWithValue(quotesBox),
        settingsBoxProvider.overrideWithValue(settingsBox)
      ],
      child: const App(),
    ),
  );
}
