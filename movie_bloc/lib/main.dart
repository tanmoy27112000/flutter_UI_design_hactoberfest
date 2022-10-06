import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie_bloc/src/ui/HomeScreen/home_page.dart';
import 'package:movie_bloc/src/ui/splash.dart';

void main() {

  SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark);
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}

