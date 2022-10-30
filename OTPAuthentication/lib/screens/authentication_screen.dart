import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:otp_authentication/providers/auth_provider.dart';
import 'package:otp_authentication/widgets/authenticate_button.dart';
import 'package:provider/provider.dart';

class AuthenticationScreen extends StatefulWidget {
  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  int selectedIndex = 0;
  TextEditingController phoneTextController = TextEditingController();
  String countryCode = '+91';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 17),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFE2E2E2)),
                    borderRadius: const BorderRadius.all(Radius.circular(35)),
                  ),
                  child: FlutterToggleTab(
                      height: 35,
                      width: 40,
                      isScroll: false,
                      isShadowEnable: false,
                      selectedBackgroundColors: const [Color(0xFFBFFB62)],
                      unSelectedBackgroundColors: const [Colors.transparent],
                      labels: const ['SignIn', 'SignUp'],
                      selectedTextStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                      unSelectedTextStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                      selectedLabelIndex: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      selectedIndex: selectedIndex),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  selectedIndex == 0 ? 'Welcome Back!!' : 'Welcome to App',
                  style: GoogleFonts.lora(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 30,
                  width: double.infinity,
                ),
                Text(
                  selectedIndex == 0
                      ? 'Please login with your phone number.'
                      : 'Please signup with your phone number to get registered',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //Input field for phone number
                IntlPhoneField(
                  controller: phoneTextController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  initialCountryCode: 'IN',
                  onChanged: (phone) {},
                  onCountryChanged: (country) {
                    countryCode = country.dialCode;
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                Material(
                  color: const Color(0xFFBFFB62),
                  borderRadius: const BorderRadius.all(Radius.circular(35)),
                  child: InkWell(
                    onTap: () async {
                      String phoneNumber =
                          '+' + countryCode + phoneTextController.text;
                      await Provider.of<AuthProvider>(context, listen: false)
                          .verifyPhone(phoneNumber, context);
                      Navigator.pushNamed(context, 'OTPScreen',
                          arguments: {'phoneNumber': phoneNumber});
                    },
                    borderRadius: const BorderRadius.all(Radius.circular(35)),
                    child: Container(
                      width: double.infinity,
                      height: 48,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(35)),
                        color: Colors.transparent,
                      ),
                      child: const Center(
                        child: Text(
                          'Continue',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 36,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Expanded(
                      child: Divider(
                        indent: 20.0,
                        endIndent: 10.0,
                        thickness: 1,
                      ),
                    ),
                    Text(
                      "OR",
                    ),
                    Expanded(
                      child: Divider(
                        indent: 10.0,
                        endIndent: 20.0,
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 36,
                ),
                AuthenticationButton(
                  title: 'Metatask',
                  color: const Color(0xFFF5FFF3),
                  imageAddress: "images/metamask.png",
                ),
                const SizedBox(
                  height: 10,
                ),
                AuthenticationButton(
                  title: 'Google',
                  color: const Color(0xFFF5FFF3),
                  imageAddress: "images/google.png",
                ),
                const SizedBox(
                  height: 10,
                ),
                AuthenticationButton(
                  title: 'Apple',
                  color: const Color(0xFF100F0F),
                  imageAddress: "images/apple.png",
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(selectedIndex == 0
                        ? "Don't have an account?"
                        : 'Already have an account?'),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            selectedIndex = selectedIndex == 0 ? 1 : 0;
                          });
                        },
                        style: TextButton.styleFrom(
                            splashFactory: NoSplash.splashFactory),
                        child: Text(
                          selectedIndex == 0 ? 'Signup' : 'SignIn',
                          style: const TextStyle(color: Color(0xFFBFFB62)),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
