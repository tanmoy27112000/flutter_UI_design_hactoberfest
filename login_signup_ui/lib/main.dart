import 'package:flutter/material.dart';
import 'package:login/screen1.dart';
import 'package:login/tasksInput.dart';
import 'package:login/todo.dart';
import 'package:intl/intl.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            appBarTheme: AppBarTheme(
          color: const Color(0xff6903a3),
        )),
        debugShowCheckedModeBanner: false,
        home: Todo());
  }
}
