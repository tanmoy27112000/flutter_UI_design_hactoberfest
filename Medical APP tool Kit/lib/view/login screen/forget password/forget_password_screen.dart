import 'package:drsimple/services/login_service.dart';
import 'package:drsimple/view/app%20essentionals/bottom_nav.dart';
import 'package:drsimple/view/homepage/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../variables/ui_variables.dart';
import '../../../widgets/customapp_widgets.dart';
import '../../../widgets/loginscreen_wigets.dart';
import '../../signup screen/otp_screen.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final TextEditingController _confirmpasswordController =
      TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  // form validation key
  final formValidationkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: myAppbar(),
          backgroundColor: screenbackgroundColor,
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width *
                      screenPaddingHorizontal),
              child: Form(
                key: formValidationkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const PrimaryHeading(
                      text: "Neues Passwort",
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.height * 0.04),
                      child: const CustomText(
                        text: "Bitte geben Sie Ihr neues Passwort ein",
                        fontSize: 0.018,
                      ),
                    ),
                    EnterPasssword(passwordController: _passwordController),
                    ConfirmPassword(
                        confirmPassword: _confirmpasswordController,
                        passwordController: _passwordController),
                    CustomAppButton(
                      Onclick: () async {
                        if (formValidationkey.currentState!.validate()) {
                          await Get.find<LoginAPiService>().forgetPassword(
                              phone: Get.arguments[0],
                              confirmPassword: _confirmpasswordController.text,
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
