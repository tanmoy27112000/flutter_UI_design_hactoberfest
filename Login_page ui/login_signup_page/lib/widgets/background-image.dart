import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    Key? key, required this.image,
  }) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect) => LinearGradient(
          begin: Alignment.bottomCenter,
          end:Alignment.center,
          colors: [Colors.black,Colors.transparent]
      ).createShader(rect),
      blendMode: BlendMode.darken,
      child: Container(
        decoration: BoxDecoration(image:  DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black54,BlendMode.darken),

        ),
        ),
      ),
    );
  }
}
