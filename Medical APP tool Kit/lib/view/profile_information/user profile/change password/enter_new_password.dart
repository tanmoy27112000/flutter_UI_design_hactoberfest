import 'package:drsimple/main.dart';
import 'package:drsimple/services/profile_update_service.dart';
import 'package:drsimple/view/homepage/home_page.dart';
import 'package:drsimple/view/profile_information/user%20profile/change%20password/password_change_done.dart';
import 'package:drsimple/widgets/customapp_widgets.dart';
import 'package:drsimple/widgets/loginscreen_wigets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../variables/ui_variables.dart';

class EnterNewPasswordScreen extends StatefulWidget {
  const EnterNewPasswordScreen({Key? key}) : super(key: key);

  @override
  State<EnterNewPasswordScreen> createState() => _EnterNewPasswordScreenState();
}

class _EnterNewPasswordScreenState extends State<EnterNewPasswordScreen> {
  final TextEditingController _confirmpasswordController =
      TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _currentPassword = TextEditingController();
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
                    EnterPasssword(
                        hintText: "Jetziges Passwort",
                        passwordController: _currentPassword),
                    EnterPasssword(passwordController: _passwordController),
                    ConfirmPassword(
                        confirmPassword: _confirmpasswordController,
                        passwordController: _passwordController),
                    CustomAppButton(
                      Onclick: () {
                        if (formValidationkey.currentState!.validate()) {
                          Get.find<UpdateprofileService>().updatePassword(
                              phone: sharedPreferences.getString("number"),
                              currentPassword: _currentPassword.text,
                              confirmPassword: _confirmpasswordController.text,
                              password: _passwordController.text);
                        }
                      },
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.35),
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
