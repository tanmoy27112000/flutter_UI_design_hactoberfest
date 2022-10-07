import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Screens/Screens.dart';

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
      initialRoute: '/',
      routes:{
        "/":(context)=>LoginScreen(),
        'ForgotPassword':(context)=>ForgotPassword(),
        'CreateNewAccount':(context)=>CreateNewAccount(),
      }
      //body

    );
  }
}

