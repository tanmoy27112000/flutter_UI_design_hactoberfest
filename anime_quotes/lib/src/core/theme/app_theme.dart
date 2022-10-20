import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'theme_option.dart';

const primaryColor = Color(0xff202053);

class AppTheme {
  AppTheme._();

  static ThemeData light(Color color) => ThemeData.light().copyWith(
        primaryColor: color,
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          iconTheme: const IconThemeData(color: primaryColor),
          titleTextStyle: GoogleFonts.montserrat(
            color: color,
            fontSize: 22,
            fontWeight: FontWeight.w600,
            letterSpacing: .5,
          ),
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
            statusBarColor: Colors.transparent,
          ),
        ),
        scaffoldBackgroundColor: Colors.white,
        textTheme: textTheme(),
        snackBarTheme: const SnackBarThemeData(
          backgroundColor: Colors.white70,
          actionTextColor: Colors.black,
        ),
        iconTheme: const IconThemeData(color: primaryColor),
      );

  static ThemeData dark(Color color) => ThemeData.dark().copyWith(
        primaryColor: color,
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.white),
          titleTextStyle: GoogleFonts.montserrat(
            color: color,
            fontSize: 22,
            fontWeight: FontWeight.w600,
            letterSpacing: .5,
          ),
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light,
            statusBarColor: Colors.transparent,
          ),
        ),
        scaffoldBackgroundColor: Colors.black,
        textTheme: textTheme(Colors.white),
        snackBarTheme: const SnackBarThemeData(
          backgroundColor: Colors.white70,
          actionTextColor: Colors.black,
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      );

  static TextTheme textTheme([Color color = primaryColor]) => TextTheme(
        caption: GoogleFonts.montserrat(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        subtitle1: GoogleFonts.montserrat(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        subtitle2: GoogleFonts.montserrat(
          fontSize: 17,
          fontWeight: FontWeight.w400,
          color: color,
        ),
        bodyText1: GoogleFonts.montserrat(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        bodyText2: GoogleFonts.montserrat(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        headline6: GoogleFonts.montserrat(
            fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
        headline5: GoogleFonts.montserrat(
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
        headline4: GoogleFonts.montserrat(
          fontSize: 28,
          fontWeight: FontWeight.w500,
          color: color,
        ),
        headline3: GoogleFonts.montserrat(
          fontSize: 32,
          fontWeight: FontWeight.w500,
        ),
        headline2: GoogleFonts.montserrat(
          fontSize: 36,
          fontWeight: FontWeight.w500,
        ),
        headline1: GoogleFonts.montserrat(
          fontSize: 50,
          fontWeight: FontWeight.w500,
        ),
      );

  static List<ThemeOption> options = [
    ThemeOption(name: 'Shiro', themeMode: ThemeMode.light),
    ThemeOption(name: 'Kuro', themeMode: ThemeMode.dark),
  ];

  static List<Color> colors = [
    primaryColor,
    Colors.indigoAccent,
    Colors.blueAccent,
    Colors.lightBlueAccent,
    Colors.greenAccent,
    Colors.orangeAccent,
    Colors.redAccent,
    Colors.pinkAccent,
    Colors.deepOrangeAccent,
    Colors.amberAccent,
    Colors.purpleAccent,
    Colors.deepPurpleAccent,
  ];
}
