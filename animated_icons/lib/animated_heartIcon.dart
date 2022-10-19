

import 'package:animator/animator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeartIcons extends StatefulWidget {
  @override
  _HeartIconsState createState() => _HeartIconsState();
}

class _HeartIconsState extends State<HeartIcons> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: _width / 2.7,
                width: _width / 2.7,
                child: Animator<double>(
                  duration: Duration(milliseconds: 1000),
                  cycles: 0,
                  curve: Curves.elasticIn,
                  tween: Tween<double>(begin: 20.0, end: 25.0),
                  builder: (context, animatorState, child) => Icon(
                    Icons.favorite,
                    size: animatorState.value * 5,
                    color: Color(0xFFFF5757),
                  ),
                ),
              ),
              Container(
                height: _width / 2.7,
                width: _width / 2.7,
                child: Animator<double>(
                  duration: Duration(milliseconds: 1000),
                  cycles: 0,
                  curve: Curves.elasticInOut,
                  tween: Tween<double>(begin: 20.0, end: 25.0),
                  builder: (context, animatorState, child) => Icon(
                    Icons.favorite,
                    size: animatorState.value * 5,
                    color: Color(0xFFFF5757),
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: _width / 2.7,
                width: _width / 2.7,
                child: Animator<double>(
                  duration: Duration(milliseconds: 1000),
                  cycles: 0,
                  curve: Curves.bounceOut,
                  tween: Tween<double>(begin: 20.0, end: 25.0),
                  builder: (context, animatorState, child) => Icon(
                    Icons.favorite,
                    size: animatorState.value * 5,
                    color: Color(0xFFFF5757),
                  ),
                ),
              ),
              Container(
                height: _width / 2.7,
                width: _width / 2.7,
                child: Animator<double>(
                  duration: Duration(milliseconds: 1000),
                  cycles: 0,
                  curve: Curves.elasticOut,
                  tween: Tween<double>(begin: 20.0, end: 25.0),
                  builder: (context, animatorState, child) => Icon(
                    Icons.favorite,
                    size: animatorState.value * 5,
                    color: Color(0xFFFF5757),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
