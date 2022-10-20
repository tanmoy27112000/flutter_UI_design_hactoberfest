import 'dart:developer';

import 'package:drsimple/main.dart';
import 'package:drsimple/variables/ui_variables.dart';
import 'package:drsimple/view/profile_information/user%20profile/change%20password/enter_new_password.dart';
import 'package:drsimple/widgets/customapp_widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:pinput/pin_put/pin_put.dart';

class OTPforPasswordReset extends StatefulWidget {
  const OTPforPasswordReset({Key? key}) : super(key: key);

  @override
  State<OTPforPasswordReset> createState() => _OTPforPasswordResetState();
}

class _OTPforPasswordResetState extends State<OTPforPasswordReset> {
  late String _verificationCode;
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  final BoxDecoration pinPutDecoration = BoxDecoration(
    color: inputFeildColor,
    shape: BoxShape.circle,
    border: Border.all(
      color: Colors.grey.withOpacity(0.6),
    ),
  );
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

                    //  const LoginScreenHeading(),
                    ////////////////
                    PinPut(
                      fieldsCount: 6,
                      textStyle: TextStyle(
                          fontSize: 25.0, color: Colors.black.withOpacity(0.6)),
                      eachFieldWidth: MediaQuery.of(context).size.height * 0.06,
                      eachFieldHeight:
                          MediaQuery.of(context).size.height * 0.06,
                      focusNode: _pinPutFocusNode,
                      controller: _pinPutController,
                      submittedFieldDecoration: pinPutDecoration,
                      selectedFieldDecoration: pinPutDecoration,
                      followingFieldDecoration: pinPutDecoration,
                      pinAnimationType: PinAnimationType.fade,
                      onSubmit: (pin) async {
                        try {
                          await FirebaseAuth.instance
                              .signInWithCredential(
                                  PhoneAuthProvider.credential(
                                      verificationId: _verificationCode,
                                      smsCode: pin))
                              .then((value) async {
                            if (value.user != null) {
                              Get.offAll(
                                () => const EnterNewPasswordScreen(),
                              );
                            }
                          });
                        } catch (e) {
                          FocusScope.of(context).unfocus();
                        }
                      },
                    ),
                    //////////////////////////
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.031,
                    ),

                    CustomAppButton(
                      Onclick: () {
                        if (true) {
                          // Get.offAll(() => const ForgetPasswordScreen(),
                          //     transition: Transition.downToUp);
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

  _verifyPhone(phoneNumber) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: "$phoneNumber",
        verificationCompleted: (PhoneAuthCredential credential) async {
          await FirebaseAuth.instance
              .signInWithCredential(credential)
              .then((value) async {
            if (value.user != null) {
              Get.offAll(
                () => const EnterNewPasswordScreen(),
              );
            }
          });
        },
        verificationFailed: (FirebaseAuthException e) {
          inspect("${e.message}");
          Fluttertoast.showToast(msg: "${e.message}");
        },
        codeSent: (verficationID, resendToken) {
          setState(() {
            _verificationCode = verficationID;
          });
        },
        codeAutoRetrievalTimeout: (verificationID) {
          setState(() {
            _verificationCode = verificationID;
          });
        },
        timeout: const Duration(seconds: 120));
  }

  @override
  void initState() {
    super.initState();
    final phoneNumber = sharedPreferences.getString("number");
    Fluttertoast.showToast(msg: "Sent to $phoneNumber");
    _verifyPhone(phoneNumber);
  }
}
