import 'package:flutter/material.dart';
import 'package:furrl_ui/UI/Colors/custom_colors.dart';
import 'package:furrl_ui/UI/Screens/profile.dart';
import 'Constants/named_routes.dart';
import 'UI/Screens/edit_frame.dart';
import 'UI/Screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Furrl',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: CustomColors.purple,
        ),
      ),
      initialRoute: NamedRoutes.home,
      routes: {
        NamedRoutes.home: (context) => const Home(),
        NamedRoutes.edit: (context) => const EditFrame(),
        NamedRoutes.profile: (context) => const Profile()
      },
    );
  }
}
