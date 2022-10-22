import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'package:random_anime_quotes/src/core/animations/animations.dart';

class _ContainerShimmer extends StatelessWidget {
  const _ContainerShimmer({
    Key? key,
    this.height = 25,
    this.padding = EdgeInsets.zero,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}

class _BaseShimmer extends StatelessWidget {
  const _BaseShimmer({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade200,
      highlightColor: Colors.white,
      child: child,
    );
  }
}

class QuoteShimmer extends StatelessWidget {
  const QuoteShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _BaseShimmer(
      child: Column(
        children: [
          const TranslateAnimation(
            x: 250,
            y: 0,
            child: Icon(
              Icons.format_quote_rounded,
              size: 45,
              color: Colors.white,
            ),
          ),
          ...List.generate(
            6,
            (i) => _ContainerShimmer(
              height: 30,
              width: MediaQuery.of(context).size.width - (i.isOdd ? 150 : 100),
            ),
          )
        ],
      ),
    );
  }
}

class AnimeCharacterShimmer extends StatelessWidget {
  const AnimeCharacterShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _BaseShimmer(
      child: Column(
        children: const [
          _ContainerShimmer(height: 25, width: 250),
          _ContainerShimmer(height: 22, width: 200),
        ],
      ),
    );
  }
}
