import 'package:drsimple/variables/ui_variables.dart';
import 'package:drsimple/view/profile_information/user%20profile/change%20number/otp_for_number_change.dart';
import 'package:drsimple/widgets/customapp_widgets.dart';
import 'package:drsimple/widgets/loginscreen_wigets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SMSForNumberChange extends StatefulWidget {
  const SMSForNumberChange({Key? key}) : super(key: key);

  @override
  State<SMSForNumberChange> createState() => _SMSForNumberChangeState();
}

class _SMSForNumberChangeState extends State<SMSForNumberChange> {
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
                        Get.to(() => const OTPForNumberChange(),
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
