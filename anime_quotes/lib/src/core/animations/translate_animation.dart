import 'package:flutter/material.dart';

class TranslateAnimation extends StatelessWidget {
  const TranslateAnimation({
    Key? key,
    required this.child,
    required this.x,
    required this.y,
  }) : super(key: key);

  final Widget child;
  final double x;
  final double y;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: x > 0 ? 0 : 1, end: x > 0 ? 1 : 0),
      duration: Duration(milliseconds: x > 0 ? 750 : 400),
      curve: Curves.easeInOutBack,
      builder: (_, value, child) => Transform.translate(
        offset: Offset(x * value, y * value),
        child: child,
      ),
      child: child,
    );
  }
}
