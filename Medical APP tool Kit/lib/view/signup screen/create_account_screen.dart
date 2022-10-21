import 'package:drsimple/services/login_service.dart';
import 'package:drsimple/widgets/loginscreen_wigets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../variables/ui_variables.dart';
import '../../widgets/create_account_widgets.dart';
import '../../widgets/customapp_widgets.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  TextEditingController _FirtName = TextEditingController();
  TextEditingController _LastName = TextEditingController();
  final _phonenumber = Get.arguments[0];

  TextEditingController _password = TextEditingController();
  TextEditingController _confirmPassword = TextEditingController();
  TextEditingController _birthday = TextEditingController();
  final _formValidationkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: screenbackgroundColor,
          appBar: myAppbar(),
          body: SingleChildScrollView(
            child: Form(
              key: _formValidationkey,
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
                        text: "Registrieren",
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).size.height * 0.05),
                        child: const CustomText(
                          text: "Geben Sie Ihre Daten an",
                          fontSize: 0.018,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Customfeild(
                            textController: _FirtName,
                            width: MediaQuery.of(context).size.width * 0.42,
                            hintText: "Vorname",
                          ),
                          Customfeild(
                            textController: _LastName,
                            width: MediaQuery.of(context).size.width * 0.42,
                            hintText: "Nachname",
                          ),
                        ],
                      ),
                      VisibleNumberFeild(
                        isreadonly: true,
                        hintText: Get.arguments[0].toString(),
                        inputType: TextInputType.phone,
                      ),
                      EnterPasssword(passwordController: _password),
                      ConfirmPassword(
                          confirmPassword: _confirmPassword,
                          passwordController: _password),
                      MyDatePickerFeild(
                        hintText: "Geburtstag",
                        controller: _birthday,
                      ),
                      CustomAppButton(
                        Onclick: () {
                          if (_formValidationkey.currentState!.validate()) {
                            Get.find<LoginAPiService>().createUserAccount(
                                dob: _birthday.text,
                                name: _FirtName.text.trim() +
                                    " " +
                                    _LastName.text.trim(),
                                password: _password.text,
                                phone: _phonenumber);
                          }
                        },
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.05),
                        text: "Weiter",
                        textColor: mainThemeSecondryColor,
                        color: mainThemeColor,
                      ),
                      LoginAccountText(
                        primaryColor: mainThemeColor,
                        secondryColor: secondryTextColor,
                      )
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
