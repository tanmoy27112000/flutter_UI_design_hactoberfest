import 'package:drsimple/main.dart';
import 'package:drsimple/services/profile_update_service.dart';
import 'package:drsimple/variables/ui_variables.dart';
import 'package:drsimple/view/login%20screen/forget%20password/forgetpasswordOTP.dart';
import 'package:drsimple/view/profile_information/user%20profile/change%20number/sms_for_number_change.dart';
import 'package:drsimple/view/signup%20screen/otp_screen.dart';
import 'package:drsimple/widgets/customapp_widgets.dart';
import 'package:drsimple/widgets/loginscreen_wigets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordForNumberChange extends StatefulWidget {
  const PasswordForNumberChange({Key? key}) : super(key: key);

  @override
  State<PasswordForNumberChange> createState() =>
      _PasswordForNumberChangeState();
}

class _PasswordForNumberChangeState extends State<PasswordForNumberChange> {
  final TextEditingController _passwordController = TextEditingController();
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
                    const PrimaryHeading(
                      text: "Passwort",
                    ),
                    CustomText(
                      text: "Bitte geben Sie Ihr Passwort ein",
                      fontSize: 0.018,
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.height * 0.01),
                    ),
                    EnterPasssword(passwordController: _passwordController),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.031,
                    ),
                    CustomAppButton(
                      Onclick: () {
                        if (formValidationkey.currentState!.validate()) {
                          Get.find<UpdateprofileService>()
                              .checkPasswordforNumberChange(
                                  phone: sharedPreferences
                                      .getString("number")
                                      .toString(),
                                  password: _passwordController.text);
                        }
                      },
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.49),
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
