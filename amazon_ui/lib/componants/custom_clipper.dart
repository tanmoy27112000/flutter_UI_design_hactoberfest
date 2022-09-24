import 'package:flutter/material.dart';
// this is a custom clipper if you want 
class MycustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double w = size.width;
    double h = size.height;
    //@@ test
    path.moveTo(size.width * 0.6786034, size.height * 0.3202429);
    path.lineTo(size.width * 0.6785259, size.height * 0.6089286);
    path.quadraticBezierTo(size.width * 0.5326121, size.height * 0.6083286,
        size.width * 0.4833276, size.height * 0.6081000);
    path.cubicTo(
        size.width * 0.4830345,
        size.height * 0.6083429,
        size.width * 0.4295776,
        size.height * 0.5312143,
        size.width * 0.4300517,
        size.height * 0.4693286);
    path.cubicTo(
        size.width * 0.4297586,
        size.height * 0.3959286,
        size.width * 0.4641466,
        size.height * 0.3315571,
        size.width * 0.4815172,
        size.height * 0.3199571);
    path.quadraticBezierTo(size.width * 0.5311552, size.height * 0.3200143,
        size.width * 0.6786034, size.height * 0.3202429);
    path.close();

    //@@ end test
    // path.moveTo(w, 100); // point 1
    // path.lineTo(0, h); // point 2
    // path.quadraticBezierTo(
    //   w * 0.5, // point 3
    //   // from 50%  go to -100
    //   h - 100, // point 3
    //   w, // point 4
    //   h, //point 4
    // );
    // path.lineTo(w, 0); // point 5
    //star
    // ..moveTo(size.width / 2, 0) // moving to topCenter 1st, then draw the path
    // ..lineTo(size.width, size.height * .25)
    // ..lineTo(size.width, size.height * .75)
    // ..lineTo(size.width * .5, size.height)
    // ..lineTo(0, size.height * .75)
    // ..lineTo(0, size.height * .25)
    // ..close();

    // custom design :         size.width, size.height, size.width / 7, size.height / 7); // path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
