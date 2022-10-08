import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/app/routes/routes.dart';
import 'package:twitter_clone/app/shared/colors.dart';
import 'package:twitter_clone/app/shared/dimensions.dart';

class LandingImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
      width: size.width * 0.5,
      height: size.height,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/landingbg.png",
              ),
              fit: BoxFit.cover)),
    );
  }
}

class LandingSideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width > 1000 ? size.width * 0.5 : size.width,
      height: size.height,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            vSizedBox4,
            Icon(
              EvaIcons.twitter,
              size: 60,
              color: blueColor,
            ),
            vSizedBox4,
            vSizedBox3,
            Text("Happening Now.",
                style: Theme.of(context).textTheme.headline2),
            vSizedBox3,
            Text("Join Twitter now!",
                style: Theme.of(context).textTheme.headline4),
            vSizedBox2,
            TextButton(
                onPressed: () => Navigator.of(context).pushNamed(LoginRoute),
                child: const Text("Login")),
            vSizedBox1,
            TextButton(
                onPressed: () => Navigator.of(context).pushNamed(SignupRoute),
                child: const Text("Sign Up")),
          ],
        ),
      ),
    );
  }
}
