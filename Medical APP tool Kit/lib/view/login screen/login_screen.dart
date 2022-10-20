import 'package:drsimple/main.dart';
import 'package:drsimple/variables/ui_variables.dart';
import 'package:drsimple/widgets/loginscreen_wigets.dart';
import 'package:flutter/material.dart';

import '../../widgets/customapp_widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  /// Text Editing Controllers
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // form validation key
  final formValidationkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: screenbackgroundColor,
          body: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width *
                    screenPaddingHorizontal),
            child: Form(
              key: formValidationkey,
              child: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.031,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.2,
                          ),
                          child: const PrimaryHeading(
                            text: "Anmelden",
                          ),
                        ),
                        const CustomText(
                          text:
                              "Geben Sie Ihre Handynummer und Ihr Passwort an",
                          fontSize: 0.018,
                        ),
                        LoginPhoneFeild(
                            initialValue:
                                sharedPreferences.getString('nextloginn'),
                            phoneNumber: _phoneController),
                        EnterPasssword(passwordController: _passwordController),
                        const ForgetPasswordButton(),
                        CountinoueButton(
                          formKey: formValidationkey,
                          phone: _phoneController.text.trim(),
                          password: _passwordController.text,
                        ),
                        RegisterText(
                          primaryColor: mainThemeColor,
                          secondryColor: secondryTextColor,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
