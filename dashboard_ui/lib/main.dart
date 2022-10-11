import 'package:sexy_dash/pages/note_page.dart';
import 'package:sexy_dash/utils/colors.dart';
import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(EasyDynamicThemeWidget(child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sexy UI',
      theme: ThemeData(
        fontFamily: 'Quicksand',
        primaryColor: MyColors.primary,
        brightness: Brightness.light,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: MyColors.accent),
      ),
      darkTheme: ThemeData(
        fontFamily: 'Quicksand',
        primaryColor: MyColors.primary,
        brightness: Brightness.dark,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: MyColors.accent),
      ),
      themeMode: EasyDynamicTheme.of(context).themeMode,
      home: MyNotePage(),
    );
  }
}
