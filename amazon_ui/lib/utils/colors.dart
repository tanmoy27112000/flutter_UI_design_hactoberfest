import 'package:flutter/material.dart';

class MyColors {
  static Color backgroundList = Colors.white;
  static Color background = Color.fromARGB(100, 193, 199, 199);
  static Color mainColor = Color.fromARGB(255, 42, 136, 152);
  static Color buttonColor = Color.fromARGB(255, 253, 216, 13);
  static LinearGradient  gradientColor = LinearGradient(
    
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromARGB(255, 131, 217, 226),
                    Color.fromARGB(150, 164, 229, 207),
                    Color.fromARGB(100, 233, 248, 243),
                    // Color(0x0086d9e0),
                    // Color(0x00a3e6cf),
                  ],
                );
  //static Color appbar = Color.fromRGBO(r, g, b, opacity)
}
