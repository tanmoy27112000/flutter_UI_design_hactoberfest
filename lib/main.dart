import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:news_app/Authentication/login.dart';
import 'package:news_app/Authentication/signup.dart';

// import 'firestore';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: signup(),
    ),
    title: "its my app",
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
    ),
  ));
}
