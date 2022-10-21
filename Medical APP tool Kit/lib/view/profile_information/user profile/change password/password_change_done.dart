import 'package:drsimple/variables/ui_variables.dart';
import 'package:drsimple/view/app%20essentionals/bottom_nav.dart';
import 'package:drsimple/widgets/customapp_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class PasswordChangeDone extends StatefulWidget {
  const PasswordChangeDone({Key? key}) : super(key: key);

  @override
  _PasswordChangeDoneState createState() => _PasswordChangeDoneState();
}

class _PasswordChangeDoneState extends State<PasswordChangeDone> {
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
                alignment: Alignment.center,
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.02,
                    bottom: MediaQuery.of(context).size.height * 0.05),
                text: "Ihr Passwort wurde erfolgreich geändert!",
                fontWeigth: FontWeight.w500,
                textAlign: TextAlign.center,
                textColor: myTextColor,
                fontSize: 0.028,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05,
                ),
                child: CustomAppButton(
                  Onclick: () {
                    Get.offAll(() => const MyNavigationBar(),
                        transition: Transition.downToUp);
                  },
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.01),
                  text: "Hier zurück zum Menü",
                  textColor: mainThemeSecondryColor,
                  color: mainThemeColor,
                  elevation: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
