import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:calculator/screens/calculator_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  static String id = '/WelcomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedTextKit(
              totalRepeatCount: 3,
              animatedTexts: [
                TypewriterAnimatedText(
                  'Welcome to my Calculator App',
                  speed: Duration(milliseconds: 50),
                  textStyle: GoogleFonts.aBeeZee(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, CalculatorScreen.id);
              },
              child: Container(
                height: 60,
                width: 240,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Center(
                  child: Text(
                    "Let's Calculate \u2192",
                    style: GoogleFonts.roboto(
                      color: Colors.blue[800],
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
