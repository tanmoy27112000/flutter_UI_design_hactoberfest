import 'package:amazon_clone/view/search/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({Key? key, this.height, this.width}) : super(key: key);
  double? height;
  double? width;

  @override
  Size get preferredSize => const Size.fromHeight(100);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.teal[200]!,
            Colors.teal[200]!,
            Colors.green[100]!,
            // Color(0x0086d9e0),
            // Color(0x00a3e6cf),
          ],
        ),
      ),
      //@@@@@@@@@
      child: SearchWidget()
    );
  }
}
