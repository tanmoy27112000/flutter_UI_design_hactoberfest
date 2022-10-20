import 'package:apis/data/tour.dart';
import 'package:apis/modules/sevenday%20forcaste/view/seven_day_forcaste_screen.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SevenDayForcasteButton extends StatelessWidget {
  final Tour tourDetail;
  const SevenDayForcasteButton({Key? key, required this.tourDetail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _screenHeigth = MediaQuery.of(context).size.height;
    double _screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Get.to(const SevenDayForcasteScreen(),
            arguments: tourDetail,
            duration: const Duration(milliseconds: 550),
            curve: Curves.easeInOut,
            transition: Transition.fadeIn);
      },
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.transparent),
                color: Colors.white.withOpacity(0.15),
                borderRadius: const BorderRadius.all(Radius.circular(40))),
            margin: EdgeInsets.only(
                top: _screenHeigth * 0.05,
                bottom: _screenHeigth * 0.02,
                left: _screenWidth * 0.06,
                right: _screenWidth * 0.06),
            height: MediaQuery.of(context).size.height * 0.081,
          ),
          Padding(
            padding: EdgeInsets.only(top: _screenHeigth * 0.075),
            child: const Center(
              child: AutoSizeText(
                "7 day Forcaste",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
