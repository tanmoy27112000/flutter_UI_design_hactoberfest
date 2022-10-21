import 'package:drsimple/view/app%20essentionals/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:drsimple/variables/ui_variables.dart';
import 'package:get/get.dart';

class GlobalContainer2 extends StatelessWidget {
  final dynamic textValue1;

  final dynamic textValue2;
  final double containerheight;
  final double fontsize1;
  final double fontsize2;
  final onBack;
  GlobalContainer2(
      {required this.textValue1,
      required this.textValue2,
      required this.containerheight,
      required this.fontsize1,
      required this.fontsize2,
      this.onBack});
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
      child: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.025,
            left: MediaQuery.of(context).size.width * 0.06),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Get.offAll(() => const MyNavigationBar());
              },
              child: const Align(
                alignment: Alignment.topLeft,
                child: Image(image: AssetImage('assets/images/arrowBack.png')),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width * 0.07,
                MediaQuery.of(context).size.height * 0.02,
                MediaQuery.of(context).size.width * 0.2,
                MediaQuery.of(context).size.height * 0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    textValue1!,
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize:
                            MediaQuery.of(context).size.height * fontsize1,
                        color: mainThemeSecondryColor),
                  ),
                  Text(
                    textValue2!,
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize:
                            MediaQuery.of(context).size.height * fontsize2,
                        color: mainThemeSecondryColor),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
