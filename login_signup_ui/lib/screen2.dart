import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  String text;
  Screen2({required this.text});

  @override
  _Screen2State createState() => _Screen2State(text);
}

class _Screen2State extends State<Screen2> {
  String text;
  _Screen2State(this.text);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(text),
      ),
    );
  }
}
