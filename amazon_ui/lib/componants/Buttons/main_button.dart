import 'package:amazon_clone/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../utils/size_config.dart';

class MainButton extends StatelessWidget {
  MainButton({
    Key? key,
    required this.text,
    required this.buttonColor,
    required this.fontWeight,
    required this.fontSize,
    required this.fontColor,
  }) : super(key: key);
  String text;
  Color? buttonColor;
  FontWeight? fontWeight;
  double? fontSize;
  Color? fontColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: SizedBox(
        width: MySizeConfig.safeBlockHorizontal! * 87,
        height: MySizeConfig.safeBlockVerticalWithAppBar! * 6.6,
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(buttonColor!),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          child: Text(
            text,
            style: TextStyle(
                color: fontColor, fontSize: fontSize, fontWeight: fontWeight),
          ),
        ),
      ),
    );
  }
}
