import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_authentication/providers/auth_provider.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';

class OTPScreen extends StatefulWidget {
  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  String? phoneNumber;
  bool isTimerVisible = true;
  bool isResendButtonActive = false;
  bool hasFilledOTP = false;
  int seconds = 30;
  late TextEditingController otpTextController;
  late Timer timer;

  @override
  void initState() {
    otpTextController = TextEditingController();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (seconds > 0) {
        setState(() {
          seconds--;
        });
      }
      if (seconds <= 0) {
        isTimerVisible = false;
        isResendButtonActive = true;
        timer.cancel();
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;
    phoneNumber = arguments['phoneNumber'];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Enter OTP',
                  style: GoogleFonts.lora(
                      fontWeight: FontWeight.w600, fontSize: 28),
                ),
                const SizedBox(
                  height: 10,
                  width: double.infinity,
                ),
                Text(
                  'An five digit has been code sent to $phoneNumber',
                  style: const TextStyle(fontSize: 14),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text('Already have an account?'),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: TextButton.styleFrom(
                            splashFactory: NoSplash.splashFactory),
                        child: const Text(
                          'Change Number',
                          style: TextStyle(color: Color(0xFFBFFB62)),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                const SizedBox(
                  height: 20,
                ),
                PinCodeTextField(
                  appContext: context,
                  controller: otpTextController,
                  length: 6,
                  obscureText: false,
                  keyboardType: TextInputType.number,
                  cursorColor: const Color(0xFFBFFB62),
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.underline,
                    fieldWidth: 30,
                    inactiveColor: Colors.black,
                    activeColor: Colors.black,
                    selectedColor: const Color(0xFFBFFB62),
                  ),
                  onCompleted: (v) {
                    setState(() {
                      hasFilledOTP = true;
                      isTimerVisible = false;
                    });
                  },
                  onChanged: (value) {
                    setState(() {
                      if (value.length < 5) {
                        hasFilledOTP = false;
                        isTimerVisible = timer.isActive ? true : false;
                      }
                    });
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                Material(
                  color: hasFilledOTP
                      ? const Color(0xFFBFFB62)
                      : isResendButtonActive
                          ? const Color(0xFFBFFB62)
                          : const Color(0xFFEDFFD0),
                  borderRadius: const BorderRadius.all(Radius.circular(35)),
                  child: InkWell(
                    onTap: hasFilledOTP
                        ? () async {
                            showMessage('Verifying');
                            String message = await Provider.of<AuthProvider>(
                                    context,
                                    listen: false)
                                .verifyOtp(otpTextController.text, context);
                            showMessage(message);
                          }
                        : isResendButtonActive
                            ? () async {
                                //Resend the OTP
                                await Provider.of<AuthProvider>(context,
                                        listen: false)
                                    .verifyPhone(phoneNumber ?? '0', context);
                                setState(() {
                                  setTimer();
                                });
                              }
                            : null,
                    borderRadius: const BorderRadius.all(Radius.circular(35)),
                    child: Container(
                      width: double.infinity,
                      height: 48,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(35)),
                        color: Colors.transparent,
                      ),
                      child: Center(
                        child: Text(
                          hasFilledOTP ? 'Done' : 'Resend OTP',
                          style: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Visibility(
                  visible: isTimerVisible,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Resend OTP in ${seconds}s',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: hasFilledOTP,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text("Don't received any code?"),
                        TextButton(
                            onPressed: !timer.isActive
                                ? () async {
                                    //Resend Code
                                    await Provider.of<AuthProvider>(context,
                                            listen: false)
                                        .verifyPhone(
                                            phoneNumber ?? '0', context);
                                    setState(() {
                                      setTimer();
                                    });
                                  }
                                : null,
                            style: TextButton.styleFrom(
                                primary: Colors.black,
                                splashFactory: NoSplash.splashFactory),
                            child: timer.isActive
                                ? Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Resend OTP in ${seconds}s',
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  )
                                : const Text(
                                    'Re-send Code',
                                    style: TextStyle(color: Color(0xFFBFFB62)),
                                  )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void setTimer() {
    seconds = 30;
    isResendButtonActive = false;
    isTimerVisible = true;
    hasFilledOTP = false;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (seconds > 0) {
        setState(() {
          seconds--;
        });
      }
      if (seconds <= 0) {
        isTimerVisible = false;
        isResendButtonActive = true;
        timer.cancel();
      }
    });
  }

  void showMessage(String msg) {
    SnackBar snackBar = SnackBar(
      content: Text('$msg'),
      duration: const Duration(seconds: 1),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
