import 'package:drsimple/variables/ui_variables.dart';
import 'package:drsimple/widgets/customapp_widgets.dart';
import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';


class SubmatedScreen extends StatefulWidget {
  const SubmatedScreen({Key? key}) : super(key: key);

  @override
  _SubmatedScreenState createState() => _SubmatedScreenState();
}

class _SubmatedScreenState extends State<SubmatedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: screenbackgroundColor,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.06,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.28,
                width: MediaQuery.of(context).size.width * 0.54,
                margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.025,
                    top: MediaQuery.of(context).size.height * 0.15),
                child: Lottie.asset("assets/done.zip", repeat: false),
              ),
              CustomText(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * 0.01,
                ),
                text: "Erfolgreich Gesendet! ",
                fontWeigth: FontWeight.w500,
                alignment: Alignment.center,
                fontSize: 0.035,
                textColor: myTextColor,
                // Wir melden uns in den nächsten 1-2 Wektagen per Anfruf oder NachrichtDanke für Ihre Geduld!",
              ),
              CustomText(
                alignment: Alignment.center,
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.05,
                    bottom: MediaQuery.of(context).size.height * 0.02),
                text:
                    "Wir melden uns in den nächsten 1-2 Wektagen per Anfruf oder Nachricht",
                fontWeigth: FontWeight.w400,

                textAlign: TextAlign.center,
                textColor: myTextColor,
                fontSize: 0.018,

                // Wir melden uns in den nächsten 1-2 Wektagen per Anfruf oder NachrichtDanke für Ihre Geduld!",
              ),
              CustomText(
                alignment: Alignment.center,
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.05),
                text: "Danke für Ihre Geduld!",
                fontWeigth: FontWeight.w600,

                textAlign: TextAlign.center,
                textColor: mainThemeColor,
                fontSize: 0.018,

                // Wir melden uns in den nächsten 1-2 Wektagen per Anfruf oder NachrichtDanke für Ihre Geduld!",
              ),
              CustomAppButton(
                Onclick: () {
                  if (true) {
                    // Get.offAll(() => const ForgetPasswordScreen(),
                    //     transition: Transition.downToUp);
                  }
                },
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.01),
                text: "Hier zurück zum Menu",
                textColor: mainThemeSecondryColor,
                color: mainThemeColor,
              ),
              CustomAppButton(
                Onclick: () {
                  if (true) {
                    // Get.offAll(() => const ForgetPasswordScreen(),
                    //     transition: Transition.downToUp);
                  }
                },
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.01),
                text: "Hier zum Status der Anfrage",
                textColor: myTextColor,
                color: mainThemeSecondryColor,
                elevation: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
