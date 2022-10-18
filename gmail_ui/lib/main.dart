import 'package:flutter/material.dart';
import 'package:gmail_ui/screens/mail_view_screen.dart';
import './screens/home_page.dart';

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
      theme: ThemeData.dark(),
      home: Pages(),
      routes: {
        '/mail-view': (context) => const MailViewScreen(),
      },
    );
  }
}
