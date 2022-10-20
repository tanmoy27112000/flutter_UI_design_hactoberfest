import 'package:drsimple/services/login_service.dart';
import 'package:drsimple/view/homepage/widgets/home_page_widgets.dart';
import 'package:drsimple/widgets/customapp_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../variables/ui_variables.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Get.find<LoginAPiService>().checkLoginStatus();
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: screenbackgroundColor,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              const Positioned(
                top: 0,
                child: MainContainer(),
              ),
              homepageMainCard(context),
              Positioned(
                left: MediaQuery.of(context).size.width * 0.065,
                top: MediaQuery.of(context).size.height * 0.36,
                child: const CustomText(
                  text: 'Leistungen',
                  textColor: myTextColor,
                  fontSize: 0.024,
                  fontWeigth: FontWeight.w600,
                ),
              ),
              homePageGrideContainer(context)
            ],
          ),
        ),
      ),
    );
  }
}
