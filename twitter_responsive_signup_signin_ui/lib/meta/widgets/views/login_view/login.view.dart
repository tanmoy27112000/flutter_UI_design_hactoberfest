import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/app/shared/colors.dart';
import 'package:twitter_clone/app/shared/dimensions.dart';
import 'package:twitter_clone/meta/widgets/views/login_view/login.widgets.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
          Text("Login to Twitter.",
              style: Theme.of(context).textTheme.headline4),
          vSizedBox2,
          LoginCredentialsBox()
        ],
      )),
    );
  }
}
