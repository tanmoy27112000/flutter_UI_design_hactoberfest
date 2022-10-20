import 'package:drsimple/view/login%20screen/forget%20password/forgetpasswordOTP.dart';

import 'package:drsimple/widgets/customapp_widgets.dart';
import 'package:drsimple/widgets/loginscreen_wigets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../variables/ui_variables.dart';

class EnterPhoneNumberForgetPassword extends StatefulWidget {
  const EnterPhoneNumberForgetPassword({Key? key}) : super(key: key);

  @override
  State<EnterPhoneNumberForgetPassword> createState() =>
      _EnterPhoneNumberForgetPasswordState();
}

class _EnterPhoneNumberForgetPasswordState
    extends State<EnterPhoneNumberForgetPassword> {
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
                      text: "SMS-Verifizierung",
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
                        if (formValidationkey.currentState!.validate()) {
                          Get.to(() => const ForgetPasswordOtp(),
                              arguments: [_phoneController.text],
                              transition: Transition.downToUp);
                        }
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
    ;
  }
}
