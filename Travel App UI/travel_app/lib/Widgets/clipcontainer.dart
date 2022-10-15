import 'package:flutter/material.dart';

class ClippedContainer extends StatelessWidget {
  const ClippedContainer({Key? key, this.height = 400, this.color, this.imgUrl})
      : super(key: key);

  final double height;
  final String? imgUrl;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _CustomClipper(),
      child: Container(
          height: height,
          color: (imgUrl == null ? Colors.amber[700] : null),
          decoration: imgUrl != null
              ? BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(imgUrl!), fit: BoxFit.cover))
              : null),
    );
  }
}

//* To achieve custom shape
class _CustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path(); //* Path object

    //? Creating a line from container upper left corner to thw bottom left corner
    path.lineTo(
      0,
      size.height * 0.7,
    );

    //?Bezier curver method to create a curve that goes from the current point in the bottom left corner to another point and this use a control point that define what the curve look like
    path.quadraticBezierTo(
      size.width * 0.1,
      size.height * 0.85,
      size.width * 0.3,
      size.height * 0.85,
    );

    //? this line goes from the end or first curve to the other side screen. A hroizontal line.
    path.lineTo(
      size.width * 0.7,
      size.height * 0.85,
    );
    path.quadraticBezierTo(
      size.width * 0.9,
      size.height * 0.85,
      size.width * 1,
      size.height * 1,
    );
//? Vertical line
    path.lineTo(
      size.width,
      0,
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
