import 'package:flutter/material.dart';
import 'package:twitter_clone/app/shared/colors.dart';
import 'package:twitter_clone/meta/widgets/views/landing_view/landing.widgets.dart';

class LandingView extends StatefulWidget {
  @override
  _LandingViewState createState() => _LandingViewState();
}

class _LandingViewState extends State<LandingView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: blackColor,
        body: Row(
          children: [if (size.width > 1000) LandingImage(), LandingSideBar()],
        ));
  }
}
