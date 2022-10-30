import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_authentication/providers/auth_provider.dart';
import 'package:otp_authentication/screens/authentication_screen.dart';
import 'package:otp_authentication/screens/home_screen.dart';
import 'package:otp_authentication/screens/otp_screen.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AuthProvider(),
      child: MaterialApp(
        theme: ThemeData(
          textTheme: TextTheme(
            bodyText1: GoogleFonts.nunito(),
            bodyText2: GoogleFonts.nunito(),
          ).apply(
            bodyColor: Colors.black,
            displayColor: Colors.black,
          ),
        ),
        initialRoute: 'AuthScreen',
        routes: {
          'HomeScreen': (context) => HomeScreen(),
          'AuthScreen': (context) => AuthenticationScreen(),
          'OTPScreen': (context) => OTPScreen(),
        },
      ),
    );
  }
}
