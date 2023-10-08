import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/loading.dart';
import 'screens/location.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => LoadingScr(),
      '/2': (context) => Home(),
      '/3': (context) => LocationScr(),
    },
  ));
}
