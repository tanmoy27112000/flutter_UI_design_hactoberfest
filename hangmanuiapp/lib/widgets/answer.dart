import 'package:flutter/material.dart';

class AnswerBox extends StatelessWidget {
  final String letter;
  const AnswerBox({
    required this.letter,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // color: Colors.white,
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.black,
            width: 3,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Center(
          child: Text(
            letter,
            style: const TextStyle(fontSize: 30),
          ),
        ),
        // color: Colors.white,
      ),
    );
  }
}
