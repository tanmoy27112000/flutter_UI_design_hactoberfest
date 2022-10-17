import 'package:flutter/material.dart';

class Xoro extends StatefulWidget {
  final String imageUrl;
  String url() {
    return imageUrl;
  }

  Xoro(this.imageUrl);

  @override
  State<Xoro> createState() => _XoroState();
}

class _XoroState extends State<Xoro> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/game-screen');
        },
        child: Image.network(
          widget.imageUrl,
        ),
      ),
    );
  }
}
//https://www.kindpng.com/picc/m/3-31596_letter-o-png-transparent-png.png - X