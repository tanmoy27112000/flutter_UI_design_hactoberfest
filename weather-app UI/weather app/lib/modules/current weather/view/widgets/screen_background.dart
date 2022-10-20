import 'package:flutter/material.dart';

class ScreenBackground extends StatelessWidget {
  final String? weatherType;
  const ScreenBackground({Key? key, required this.weatherType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (weatherType == "haze") {
      return _buildBackgroundImage(imagePath: "assets/haze.jpg");
    } else if (weatherType == "smoke") {
      return _buildBackgroundImage(imagePath: "assets/smoke.jpg");
    } else if (weatherType == "mist") {
      return _buildBackgroundImage(imagePath: "assets/mist.jpg");
    } else if (weatherType == "clear") {
      return _buildBackgroundImage(imagePath: "assets/clear.jpg");
    } else if (weatherType == "clouds") {
      return _buildBackgroundImage(imagePath: "assets/cloud.jpg");
    } else {
      return _buildBackgroundImage(imagePath: "assets/night.jpg");
    }
  }
}

Widget _buildBackgroundImage({required String imagePath}) {
  return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
    image: AssetImage(
      imagePath,
    ),
    fit: BoxFit.cover,
  )));
}
