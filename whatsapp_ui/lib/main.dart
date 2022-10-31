import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'WhatsApp UI',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
