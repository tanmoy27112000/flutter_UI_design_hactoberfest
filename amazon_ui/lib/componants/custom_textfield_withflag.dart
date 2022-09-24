import 'package:flutter/material.dart';
import 'package:flag/flag.dart';

import '../utils/size_config.dart';

// Foooor Text with flag ::

class CustomTextFlagField extends StatelessWidget {
  CustomTextFlagField({
    Key? key,
    this.text,
    this.icon,
    this.iconSize,
    // this.flag,
  }) : super(key: key);
  String? text;
  dynamic icon;
  double? iconSize;
  // Flag? flag;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 30,
      ),
      child: Center(
        child: Container(
          width: MySizeConfig.screenWidth! * 0.94,
          height: MySizeConfig.safeBlockVerticalWithOutAppBar! * 6.4,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Colors.white,
              border: Border.all(
                width: 0.4,
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 82, 80, 80).withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 3,
                  offset: Offset(0.0, 0.9),
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      text!,
                      style: TextStyle(fontSize: 18),
                    ),
                    //flaaaag @@@@@@
                    SizedBox(
                      width: 14,
                    ),
                    Flag.fromCode(
                      FlagsCode.US,
                      height:
                          MySizeConfig.safeBlockVerticalWithOutAppBar! * 2.5,
                      width: MySizeConfig.screenWidth! * 0.07,
                      fit: BoxFit.fill,
                      flagSize: FlagSize.size_1x1,
                      borderRadius: 2,
                    )
                  ],
                ),

                // SvgPicture.asset(
                //   'assets/icons/scanicon1.svg',
                //   width: 25,
                //   // color: Colors.grey,
                // ),

                Icon(
                  icon,
                  size: iconSize,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
