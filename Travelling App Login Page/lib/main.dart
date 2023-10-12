import 'package:flutter/material.dart';
import 'package:loginpage/login.dart';
import 'package:loginpage/register.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      "login": (context) => const MyLogin(),
      "register": (context) => const register(),
    },
  ));
}
