import 'package:flutter/material.dart';

import 'screens/main_page.dart';
// import 'package:hangman/screens/hangman.dart';
// import 'package:hangman/screens/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Hangman(),
      // routes: {
      //   '/hangman-2': (context) => const Hangman2(),
      // },
    );
  }
}
