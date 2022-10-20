import 'package:flutter/material.dart';

import 'package:random_anime_quotes/src/core/animations/animations.dart';

class AnimatedQuoteIcon extends StatelessWidget {
  const AnimatedQuoteIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TranslateAnimation(
      x: -100,
      y: 0,
      child: Icon(
        Icons.format_quote_rounded,
        size: 30,
        color: Colors.white,
      ),
    );
  }
}
