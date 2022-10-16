import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_register/utils/colors.dart';
import 'package:login_register/utils/icons.dart';
import 'package:login_register/utils/utility_function.dart';
import 'package:login_register/views/register_view.dart';
import 'package:login_register/widgets/my_button.dart';
import 'package:login_register/widgets/my_textfield.dart';
import 'package:lottie/lottie.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool switched = false;

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.red,
            Colors.orange,
            Color.fromARGB(255, 252, 203, 58),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SafeArea(
            child: Container(
              height: MediaQuery.of(context).size.height - 50,
              padding: const EdgeInsets.only(top: 25, left: 30, right: 30),
              child: Column(
                children: [
                  FadeInDown(
                      delay: const Duration(milliseconds: 3800),
                      child: Lottie.asset(MyIcons.login, height: 250)),
                  FadeInDown(
                    delay: const Duration(milliseconds: 3400),
                    child: const Text("LOGIN",
                        style: TextStyle(
                            color: MyColors.basicWhite,
                            fontSize: 28,
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(height: 15),
                  FadeInRight(
                    delay: const Duration(milliseconds: 3300),
                    child: MyTextField(
                      controller: emailController,
                      hintText: "Email",
                      prefixIcon: const Icon(Icons.mail_outline,
                          color: MyColors.iconColor),
                    ),
                  ),
                  const SizedBox(height: 12),
                  FadeInLeft(
                    delay: const Duration(milliseconds: 3200),
                    child: MyTextField(
                      controller: passwordController,
                      hintText: "Password",
                      prefixIcon: const Icon(Icons.lock_outline,
                          color: MyColors.iconColor),
                      suffixIcon: const Icon(Icons.remove_red_eye,
                          color: MyColors.iconColor),
                    ),
                  ),
                  const SizedBox(height: 13),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FadeInLeft(
                        delay: const Duration(milliseconds: 3200),
                        child: Row(
                          children: [
                            Transform.scale(
                              scale: 0.7,
                              child: CupertinoSwitch(
                                value: switched,
                                onChanged: (v) {},
                                activeColor: MyColors.basicWhite,
                                thumbColor: (!switched)
                                    ? Colors.grey
                                    // ignore: dead_code
                                    : MyColors.basicBlack,
                                trackColor: Colors.white,
                              ),
                            ),
                            const Text(
                              "Remember Me",
                              style: TextStyle(
                                color: MyColors.basicWhite,
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                      FadeInRight(
                        delay: const Duration(milliseconds: 3300),
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: MyColors.basicWhite,
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FadeInUp(
                    delay: const Duration(milliseconds: 2350),
                    child: MyButton(
                        onPressed: () {
                          String email = emailController.text;
                          String password = passwordController.text;
                          if (email.length > 10 && password.length > 4) {
                            UtilityFunctions.getMyToast(
                                message: "Register first!");
                          } else {
                            UtilityFunctions.getMyToast(
                                message: "Email or password invalid!");
                          }
                        },
                        buttonText: "LOGIN"),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  FadeInUp(
                    delay: const Duration(milliseconds: 2400),
                    child: const Text("OR",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: MyColors.basicWhite,
                          fontSize: 22,
                        )),
                  ),
                  FadeInUp(
                    delay: const Duration(milliseconds: 2450),
                    child: const Text("Log in with",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: MyColors.basicWhite,
                          fontSize: 18,
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FadeInUp(
                    delay: const Duration(milliseconds: 2200),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 52,
                          width: 52,
                          decoration: BoxDecoration(
                              color: MyColors.basicWhite,
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(child: SvgPicture.asset(MyIcons.apple)),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 52,
                          width: 52,
                          decoration: BoxDecoration(
                              color: MyColors.basicWhite,
                              borderRadius: BorderRadius.circular(50)),
                          child:
                              Center(child: SvgPicture.asset(MyIcons.facebook)),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 52,
                          width: 52,
                          decoration: BoxDecoration(
                              color: MyColors.basicWhite,
                              borderRadius: BorderRadius.circular(50)),
                          child:
                              Center(child: SvgPicture.asset(MyIcons.google)),
                        ),
                      ],
                    ),
                  ),
                  FadeInUp(
                    delay: const Duration(milliseconds: 2200),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const RegisterView()));
                      },
                      child: const Text("Don’t have an account? Register now",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: MyColors.basicWhite,
                              fontSize: 12,
                              fontStyle: FontStyle.italic)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
