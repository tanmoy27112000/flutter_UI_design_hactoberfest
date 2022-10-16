import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:login_register/utils/colors.dart';
import 'package:login_register/utils/icons.dart';
import 'package:login_register/utils/utility_function.dart';
import 'package:login_register/views/login_view.dart';
import 'package:login_register/widgets/my_button.dart';
import 'package:login_register/widgets/my_textfield.dart';
import 'package:lottie/lottie.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                      child: Lottie.asset(MyIcons.register, height: 260)),
                  const SizedBox(height: 20),
                  FadeInDown(
                    delay: const Duration(milliseconds: 3400),
                    child: const Text("REGISTER",
                        style: TextStyle(
                            color: MyColors.basicWhite,
                            fontSize: 28,
                            fontWeight: FontWeight.w700)),
                  ),
                  const SizedBox(height: 15),
                  FadeInRight(
                    delay: const Duration(milliseconds: 3200),
                    child: MyTextField(
                      controller: nameController,
                      hintText: "Name",
                      prefixIcon: const Icon(Icons.person_outline,
                          color: MyColors.iconColor),
                    ),
                  ),
                  const SizedBox(height: 12),
                  FadeInLeft(
                    delay: const Duration(milliseconds: 3200),
                    child: MyTextField(
                      controller: emailController,
                      hintText: "Email",
                      prefixIcon: const Icon(Icons.email_outlined,
                          color: MyColors.iconColor),
                    ),
                  ),
                  const SizedBox(height: 12),
                  FadeInRight(
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
                  const SizedBox(height: 12),
                  FadeInLeft(
                    delay: const Duration(milliseconds: 3200),
                    child: MyTextField(
                      controller: confirmController,
                      hintText: "Confirm Password",
                      prefixIcon: const Icon(Icons.lock_outline,
                          color: MyColors.iconColor),
                      suffixIcon: const Icon(Icons.remove_red_eye,
                          color: MyColors.iconColor),
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  FadeInUp(
                    delay: const Duration(milliseconds: 4000),
                    child: MyButton(
                      onPressed: () {
                        var name = nameController.text;
                        var email = emailController.text;
                        var password = passwordController.text;
                        var confirm = confirmController.text;

                        if (name.isNotEmpty &&
                            email.isNotEmpty &&
                            password.isNotEmpty &&
                            confirm.isNotEmpty) {
                          UtilityFunctions.getMyToast(
                              message: "Successfully registered");
                        } else {
                          UtilityFunctions.getMyToast(
                              message: "You must all fields");
                        }
                      },
                      buttonText: "REGISTER",
                    ),
                  ),
                  FadeInUp(
                    delay: const Duration(milliseconds: 4500),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const LoginView()));
                      },
                      child: const Text("Already have an account? Login now",
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
