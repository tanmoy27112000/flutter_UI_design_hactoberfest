import 'package:drsimple/view/login%20screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../variables/ui_variables.dart';

class TOLoginScreenButton extends StatelessWidget {
  const TOLoginScreenButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.86,
        height: MediaQuery.of(context).size.height * 0.06,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: mainThemeSecondryColor, elevation: 0),
          onPressed: () {
            Get.to(() => const LoginScreen());
          },
          child: Text("Anmelden",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                fontWeight: FontWeight.w400,
                color: myTextColor,
                fontSize: MediaQuery.of(context).size.height * 0.020,
              ))),
        ));
  }
}
