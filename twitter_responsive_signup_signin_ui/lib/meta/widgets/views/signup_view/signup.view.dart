import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/app/shared/colors.dart';
import 'package:twitter_clone/app/shared/dimensions.dart';
import 'package:twitter_clone/meta/widgets/views/login_view/login.widgets.dart';
import 'package:twitter_clone/meta/widgets/views/signup_view/signup.widgets.dart';

class SignupView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: blackColor,
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          vSizedBox3,
          Icon(
            EvaIcons.twitter,
            size: 60.0,
            color: blueColor,
          ),
          vSizedBox3,
          vSizedBox1,
          Text("Signup for Twitter.",
              style: Theme.of(context).textTheme.headline4),
          vSizedBox2,
          SignupCredentialsBox()
        ],
      )),
    );
  }
}