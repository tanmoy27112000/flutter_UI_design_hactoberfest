import 'package:flutter/material.dart';
import 'dart:math';

class CustomCarousel extends StatefulWidget {
  const CustomCarousel({super.key});

  @override
  State<CustomCarousel> createState() => _CustomCarouselState();
}

class _CustomCarouselState extends State<CustomCarousel> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 1, viewportFraction: 0.8);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: PageView.builder(
          itemCount: 4,
          controller: _pageController,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return carouselWidget(index);
          }),
    );
  }

  Widget carouselWidget(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 0.0;
        if (_pageController.position.haveDimensions) {
          value = index.toDouble() - (_pageController.page ?? 0);
          value = (value * 0.038).clamp(-1, 1);
        }
        return Transform.rotate(
          angle: pi * value,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Card(
              //elevation: 20,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              clipBehavior: Clip.antiAlias,
              child: const Image(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/weekend.jpg'),
              ),
            ),
          ),
        );
      },
    );
  }
}
