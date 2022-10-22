import 'dart:async';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';

class FingerPrintVerify extends StatefulWidget {
  const FingerPrintVerify({Key? key}) : super(key: key);

  @override
  _FingerPrintVerifyState createState() => _FingerPrintVerifyState();
}

class _FingerPrintVerifyState extends State<FingerPrintVerify> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.25),
            child: Lottie.asset("assets/fingerprint_submit.zip", repeat: false),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 18.0),
            child: Text(
              "Verify Successfully",
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 22,
                color: Color.fromARGB(255, 37, 58, 245),
              ),
            ),
          )
        ],
      ),
    );
  }
}
