import 'package:flutter/material.dart';
import 'package:tictactoe/screens/game_screen.dart';
import 'screens/home.dart';

void main() => runApp(const TicTacToe());

class TicTacToe extends StatelessWidget {
  const TicTacToe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(backgroundColor: Colors.black),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        '/game-screen': (context) => GameScreen(),
      },
    );
  }
}
