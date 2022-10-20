import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../variables/ui_variables.dart';

class GlobalConatainer1 extends StatelessWidget {
  final double? textSize;
  final String textFamily;
  final Color? textColor;
  final dynamic textValue;
  final double containerheight;
final Onback;
  const GlobalConatainer1(
      {required this.textSize,
       this.Onback,
      required this.textFamily,
      required this.textColor,
      required this.textValue,
      required this.containerheight});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * containerheight,
      decoration: const BoxDecoration(
        color: mainThemeColor,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: Onback?? () {
              Get.back();
            },
            child: Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03,
                  left: MediaQuery.of(context).size.width * 0.06),
              child: const Align(
                alignment: Alignment.topLeft,
                child: Image(image: AssetImage('assets/images/arrowBack.png')),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.02,
                left: MediaQuery.of(context).size.width * 0.08),
            child: Row(
              children: [
                Text(
                  textValue!,
                  style: TextStyle(
                      fontFamily: textFamily, fontSize: 22, color: textColor),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
