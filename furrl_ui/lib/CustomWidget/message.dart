import 'package:flutter/material.dart';
import 'package:furrl_ui/UI/Colors/custom_colors.dart';

class Message extends StatelessWidget {
  final String message;
  const Message({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.purple,
      padding: const EdgeInsets.all(10),
      child: Center(child: Text(message ,style: const TextStyle(color: Colors.white),)),
    );
  }
}
