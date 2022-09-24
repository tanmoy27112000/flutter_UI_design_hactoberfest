import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/size_config.dart';

class CategoryList extends StatelessWidget {
  CategoryList({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);
  String? text;
  String? image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 9),
      child: Container(
        width: MySizeConfig.safeBlockHorizontal! * 34,
        decoration: BoxDecoration(
          color: MyColors.backgroundList,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MySizeConfig.safeBlockVerticalWithAppBar! * 5,
                alignment: Alignment.centerLeft,
                child: Text(
                  text!,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(6),
                    bottomRight: Radius.circular(6)),
                child: Image.asset(
                  image!,
                  // width: MySizeConfig.safeBlockHorizontal! * 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
