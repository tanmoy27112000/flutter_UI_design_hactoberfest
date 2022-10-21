import 'package:drsimple/variables/ui_variables.dart';
import 'package:drsimple/widgets/welcome_screen_widgets.dart';
import 'package:flutter/material.dart';
import '../../widgets/customapp_widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const AppLogo(),
                  const TOLoginScreenButton(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  const RegisterText()
                ],
              )
            ],
          )),
    );
  }
}
