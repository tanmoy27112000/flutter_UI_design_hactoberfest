import 'package:flutter/material.dart';
import 'package:login_register/views/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Login and Register',
      debugShowCheckedModeBanner: false,
      home: LoginView(),
    );
  }
}
