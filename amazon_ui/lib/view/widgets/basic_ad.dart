import 'package:amazon_clone/utils/size_config.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BasicAd extends StatelessWidget {
  BasicAd({Key? key, this.imageUrl}) : super(key: key);
  String? imageUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Container(
        width: MySizeConfig.safeBlockHorizontal! * 100,
        height: MySizeConfig.safeBlockVerticalWithAppBar! * 17,
        color: Colors.white,

        // borderRadius: BorderRadius.only(
        //     topLeft: Radius.elliptical(100, 130),
        //     bottomLeft: Radius.elliptical(100, 130)),
        child: Image.asset(
          imageUrl!,
          fit: BoxFit.fill,
          scale: 0.3,
          // height: MySizeConfig.safeBlockVerticalWithAppBar! * 10,
        ),
      ),
    );
  }
}
