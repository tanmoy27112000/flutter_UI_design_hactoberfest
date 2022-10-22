import 'package:flutter/material.dart';
import 'package:square_percent_indicater/square_percent_indicater.dart';

class CircularPercentIndicator extends StatelessWidget {
  const CircularPercentIndicator({
    Key? key,
    required this.progress,
    required this.percentage,
    this.height = 50,
    this.width = 50,
    this.radius = 25,
  }) : super(key: key);

  final double progress;
  final String percentage;
  final double height;
  final double width;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return SquarePercentIndicator(
      width: width,
      height: height,
      startAngle: StartAngle.topLeft,
      reverse: false,
      borderRadius: radius,
      shadowWidth: 1.5,
      progressWidth: 5,
      shadowColor: Colors.white70,
      progressColor: Colors.white,
      progress: progress,
      child: Center(
        child: Text(
          percentage,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
