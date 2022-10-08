import 'dart:async';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/app/routes/routes.dart';
import 'package:twitter_clone/app/shared/colors.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(Duration(seconds: 2),
        () => Navigator.of(context).pushNamed(LandingRoute));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: Center(
        child: Icon(
          EvaIcons.twitter,
          size: 130.0,
          color: blueColor,
        ),
      ),
    );
  }
}
