import 'package:flutter/material.dart';
import 'package:furrl_ui/UI/Colors/custom_colors.dart';
class HashTags extends StatelessWidget {
  final String tag;
  const HashTags({Key? key, required this.tag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('#$tag' , style: const TextStyle(color: CustomColors.purple,fontSize: 17),);
  }
}
