
import 'package:flutter/material.dart';

import '../utils/constants.dart';

class TitleText extends StatelessWidget {
  final String title;

  const TitleText({Key? key, required this.title}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      child: Text(
        title,
        style: const TextStyle(
          color: AppColor.redAccentColor,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
