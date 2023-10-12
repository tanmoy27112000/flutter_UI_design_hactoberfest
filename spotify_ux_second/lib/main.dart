

import 'package:flutter/material.dart';
import 'package:spotify_ux_second/splash.dart';

import 'package:google_fonts/google_fonts.dart';


import 'category.dart';
import 'musicplayer.dart';



final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 131, 57, 0),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home:Splash(),
    );
  }
}