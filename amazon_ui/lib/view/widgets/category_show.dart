import 'package:amazon_clone/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../utils/size_config.dart';

// ignore: must_be_immutable
class CategoryShowWedget extends StatelessWidget {
  String? title;
  List<String>? imageUrl;
  String? buttonText;
  // int? crossCount;
  // double? crossAxisSpacing;
  // double? childAspectRatio;
  // double? mainAxisSpacing;
  CategoryShowWedget({
    Key? key,
    this.title,
    this.imageUrl,
    this.buttonText,
    // required this.crossCount,
    // this.crossAxisSpacing,
    // this.childAspectRatio,
    // this.mainAxisSpacing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //MediaQueryData mediaQuery = const MediaQueryData();
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Container(
        width: MySizeConfig.safeBlockHorizontal! * 100,
        height: MySizeConfig.safeBlockVerticalWithAppBar! * 65,
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title!,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w100),
                  ),
                  SizedBox(
                    height: MySizeConfig.safeBlockVerticalWithAppBar! * 1,
                  ),
                  SizedBox(
                    width: MySizeConfig.safeBlockHorizontal! * 97,
                    height: MySizeConfig.safeBlockVerticalWithAppBar! * 52,
                    child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 3,
                        childAspectRatio: 1,
                        mainAxisSpacing: 3,
                      ),
                      children: [
                        // if you have image without background
                        // Container(
                        //     width: 50,
                        //     height: 50,
                        //     color: Colors.grey[300],

                        Image.asset(imageUrl![0]),
                        Image.asset(imageUrl![1]),
                        Image.asset(imageUrl![2]),
                        Image.asset(imageUrl![3]),
                        Image.asset(imageUrl![4]),
                        Image.asset(imageUrl![5]),
                        Image.asset(imageUrl![6]),
                        Image.asset(imageUrl![7]),
                        Image.asset(imageUrl![8]),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 7),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    buttonText!,
                    style: TextStyle(
                        color: MyColors.mainColor, fontWeight: FontWeight.w100),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


/*
Column(
          children: [
            Column(
              children: [
                Text(
                  'Heals & Beauty Products',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w100),
                ),
                GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  children: [
                    Image.asset('assets/images/p1.png'),
                    Image.asset('assets/images/p2.png'),
                    Image.asset('assets/images/p3.png'),
                    Image.asset('assets/images/p4.png'),
                    Image.asset('assets/images/p5.png'),
                    Image.asset('assets/images/p6.png'),
                    Image.asset('assets/images/p7.png'),
                    Image.asset('assets/images/p8.png'),
                    Image.asset('assets/images/p9.png'),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'See more',
                  style: TextStyle(
                      color: MyColors.mainColor, fontWeight: FontWeight.w100),
                ),
              ),
            ),
          ],
        ),
 */