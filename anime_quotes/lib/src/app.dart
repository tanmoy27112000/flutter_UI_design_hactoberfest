import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'core/constants/constants.dart' show appName;
import 'core/theme/app_theme.dart';
import 'features/quotes/view/quote_page.dart';
import 'features/settings/logic/providers.dart';

class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);
    final themeColor = ref.watch(themeColorProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const QuotesPage(),
      title: appName,
      themeMode: themeMode,
      theme: AppTheme.light(themeColor),
      darkTheme: AppTheme.dark(themeColor),
    );
  }
}
