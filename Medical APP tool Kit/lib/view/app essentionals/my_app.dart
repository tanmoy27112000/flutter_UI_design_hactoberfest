import 'package:drsimple/main.dart';
import 'package:drsimple/splash.dart';
import 'package:drsimple/view/app%20essentionals/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var phone = sharedPreferences.getString('number');
    return GetMaterialApp(
      title: 'Dr Simple',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ThemeData()
            .colorScheme
            .copyWith(primary: Colors.grey.withOpacity(0.0)),
        checkboxTheme: CheckboxThemeData(
          checkColor: MaterialStateProperty.all(Colors.white),
          fillColor: MaterialStateProperty.all(const Color(0xff5B70AB)),
        ),
        primaryColor: Colors.grey,
      ),
      home: phone != null ? const MyNavigationBar() : const SplashScreen(),
    );
  }
}
