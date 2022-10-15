import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Screens/AnimatedForgotPass.dart';
import 'Screens/AnimatedSignUp.dart';
import 'Screens/Screens.dart';
import 'Screens/animatedLoginUI.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        textTheme: GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),

        
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes:{
        "AnimatedLogin":(context) => AnimatedLoginUI(),
        "AnimatedSignup":(context)=>AnimatedSignup(),
        'AnimatedForgotPass':(context)=>AnimatedForgotPass(),
        "/":(context)=>LoginScreen(),
        'ForgotPassword':(context)=>ForgotPassword(),
        'CreateNewAccount':(context)=>CreateNewAccount(),
      }
      //body

    );
  }
}

