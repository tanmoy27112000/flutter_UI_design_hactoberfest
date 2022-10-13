import 'package:flutter/material.dart';
import 'package:grocery_ui_template/app_theme.dart';
import 'package:grocery_ui_template/dashboard/screens/compostional_dashboard_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: AppTheme.fontName,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CompositionalDashboardPage(),
    );
  }
}
