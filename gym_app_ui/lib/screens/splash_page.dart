
import 'package:flutter/material.dart';

import '../utils/constants.dart';
import 'homepage.dart';

class SplashPage extends StatelessWidget {
  // SignUp-login Button
  InkWell buildbuttonContainer({required Color buttonColor, required String title, context}) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
        );
      },
      child: Container(
        width: 120,
        padding:const  EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              color: AppColor.whiteColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image:  DecorationImage(
            image:  AssetImage("${ImagePath.path}page-1-background.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 70,
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: Image.asset(
                "${ImagePath.path}lock.png",
                fit: BoxFit.contain,
              ),
            ),
            const Text(
              "FLASH",
              style: const TextStyle(
                color: AppColor.whiteColor,
                fontSize: 30,
                fontFamily: 'Jungle-Fever',
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "GYM",
              style: TextStyle(
                color: AppColor.redAccentColor,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Get in shape quickly",
              style: const TextStyle(
                color: AppColor.whiteColor,
                fontSize: 8,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            buildbuttonContainer(
              buttonColor: AppColor.redAccentColor,
              title: "Sign Up",
              context: context,
            ),
            const SizedBox(
              height: 20,
            ),
            buildbuttonContainer(
              buttonColor: AppColor.greyColor.withOpacity(0.5),
              title: "Login",
              context: context,
            ),
          ],
        ),
      ),
    );
  }
}
