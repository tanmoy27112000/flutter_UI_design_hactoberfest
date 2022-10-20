import 'dart:math';

import 'package:flutter/material.dart';

class RotateAnimation extends StatelessWidget {
  const RotateAnimation({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 1.5, end: 0),
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOutBack,
      builder: (_, value, child) => Transform.rotate(
        angle: pi * value,
        child: child,
      ),
      child: child,
    );
  }
}
