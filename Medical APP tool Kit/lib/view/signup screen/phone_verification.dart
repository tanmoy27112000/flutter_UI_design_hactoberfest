import 'package:drsimple/view/login%20screen/forget%20password/forgetpasswordOTP.dart';
import 'package:drsimple/view/signup%20screen/otp_screen.dart';
import 'package:drsimple/widgets/customapp_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../variables/ui_variables.dart';
import '../../widgets/loginscreen_wigets.dart';

class PhoneVerificationStep1 extends StatefulWidget {
  const PhoneVerificationStep1({Key? key}) : super(key: key);

  @override
  State<PhoneVerificationStep1> createState() => _PhoneVerificationStep1State();
}

class _PhoneVerificationStep1State extends State<PhoneVerificationStep1> {
  final TextEditingController _phoneController =
      TextEditingController(text: "+49");
  final formValidationkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: screenbackgroundColor,
          appBar: myAppbar(),
          body: Form(
            key: formValidationkey,
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width *
                        screenPaddingHorizontal),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    PrimaryHeading(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.035),
                      text: "SMS-Verifizierungs",
                    ),
                    const CustomText(
                      text: "Geben Sie Ihre Handynummer ein",
                      fontSize: 0.021,
                    ),
                    CustomText(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.height * 0.05),
                      text: "Ohne Schrägstrich oder Bindestrich eingeben",
                      fontSize: 0.019,
                    ),
                    PhoneFeild(phoneNumber: _phoneController),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.031,
                    ),
                    CustomAppButton(
                      Onclick: () {
                        Get.to(() => const RegisterOtpScreen(),
                            transition: Transition.downToUp,
                            arguments: [_phoneController.text]);
                      },
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.39),
                      text: "Weiter",
                      textColor: mainThemeSecondryColor,
                      color: mainThemeColor,
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
