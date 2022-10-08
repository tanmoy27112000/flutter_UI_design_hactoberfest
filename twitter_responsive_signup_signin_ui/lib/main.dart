import 'package:flutter/material.dart';
import 'package:twitter_clone/app/routes/routes.dart';
import 'package:twitter_clone/app/shared/colors.dart';
import 'package:twitter_clone/meta/widgets/views/splash.view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(Core());
}

class Core extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Lava();
  }
}

class Lava extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        textTheme: TextTheme(
          headline2: TextStyle(
            fontFamily: 'MontserratB',
            color: whiteColor,
            fontSize: 60.0,
            fontWeight: FontWeight.bold,
          ),
          headline4: TextStyle(
            fontFamily: 'MontserratB',
            fontSize: 30.0,
            color: whiteColor,
            fontWeight: FontWeight.bold,
          ),
          bodyText1: TextStyle(
            fontFamily: 'Montserrat',
            color: whiteColor,
            fontWeight: FontWeight.bold,
            fontSize: 14.0,
          ),
          headline3: TextStyle(
            fontFamily: 'Montserrat',
            color: textColor,
            fontWeight: FontWeight.bold,
            fontSize: 14.0,
          ),
          headline6: TextStyle(
            fontFamily: 'Montserrat',
            color: blueColor,
            fontWeight: FontWeight.bold,
            fontSize: 14.0,
          ),
          headline5: TextStyle(
              fontSize: 26.0,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.bold,
              color: whiteColor),
          bodyText2: TextStyle(
            fontFamily: 'Montserrat',
            color: whiteColor,
            fontSize: 16.0,
          ),
        ),
        brightness: Brightness.dark,
        backgroundColor: bgColor,
        primaryColor: Colors.black,
        fontFamily: 'Montserrat',
      ),
      home: SplashView(),
      initialRoute: SplashRoute,
      routes: routes,
    );
  }
}
