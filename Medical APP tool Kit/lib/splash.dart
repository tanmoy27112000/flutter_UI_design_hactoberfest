import 'dart:async';
import 'package:drsimple/variables/ui_variables.dart';
import 'package:drsimple/view/login%20screen/welcome_screen.dart';
import 'package:drsimple/widgets/customapp_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    navigation();
  }

  void navigation() async {
// time after which the loginscreen call
    await Future.delayed(const Duration(milliseconds: 03000));
// delay timer for changing screeen
    Timer(
        const Duration(seconds: 0),
        () => Get.offAll(() => const WelcomeScreen(),
            duration: const Duration(milliseconds: 1100),
            transition: Transition.downToUp));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: mainThemeColor,
          extendBodyBehindAppBar: true,
          body: Stack(
            children: [
              const BackGroundGrediant(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  AppLogo(),
                ],
              )
            ],
          )),
    );
  }
}
