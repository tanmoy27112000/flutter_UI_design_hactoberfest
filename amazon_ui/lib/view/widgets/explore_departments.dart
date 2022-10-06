import 'package:amazon_clone/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../utils/size_config.dart';

// ignore: must_be_immutable
class ExploreDepartments extends StatelessWidget {
  String? title;
  List<String>? imageUrl;
  String? dtitle1;
  String? dtitle2;
  String? dtitle3;
  String? dtitle4;
  String? dtitle5;
  String? dtitle6;
  String? buttonText;

  // Map<String, String>? departmentTitles;

  // int? crossCount;
  // double? crossAxisSpacing;
  // double? childAspectRatio;
  // double? mainAxisSpacing;
  ExploreDepartments({
    Key? key,
    this.title,
    this.imageUrl,
    this.dtitle1,
    this.dtitle2,
    this.dtitle3,
    this.dtitle4,
    this.dtitle5,
    this.dtitle6,
    this.buttonText,
    // this.departmentTitles,

    // required this.crossCount,
    // this.crossAxisSpacing,
    // this.childAspectRatio,
    // this.mainAxisSpacing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: Container(
        width: MySizeConfig.safeBlockHorizontal! * 100,
        height: MySizeConfig.safeBlockVerticalWithAppBar! * 55,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title!,
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.w100),
                ),
                SizedBox(
                  height: MySizeConfig.safeBlockVerticalWithAppBar! * 1,
                ),
                SizedBox(
                  width: MySizeConfig.safeBlockHorizontal! * 95,
                  height: MySizeConfig.safeBlockVerticalWithAppBar! * 40,
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      childAspectRatio: 2,
                      mainAxisSpacing: 7,
                    ),
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(imageUrl![0]),
                          SizedBox(
                            height:
                                MySizeConfig.safeBlockVerticalWithAppBar! * 0.5,
                          ),
                          Text(
                            dtitle1!,
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w100),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(imageUrl![1]),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            dtitle2!,
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w100),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(imageUrl![2]),
                          SizedBox(
                            height:
                                MySizeConfig.safeBlockVerticalWithAppBar! * 0.5,
                          ),
                          Text(
                            dtitle3!,
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w100),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(imageUrl![3]),
                          SizedBox(
                            height:
                                MySizeConfig.safeBlockVerticalWithAppBar! * 0.5,
                          ),
                          Text(
                            dtitle4!,
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w100),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(imageUrl![4]),
                          SizedBox(
                            height:
                                MySizeConfig.safeBlockVerticalWithAppBar! * 0.5,
                          ),
                          Text(
                            dtitle5!,
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w100),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(imageUrl![5]),
                          SizedBox(
                            height:
                                MySizeConfig.safeBlockVerticalWithAppBar! * 0.5,
                          ),
                          Text(
                            dtitle6!,
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w100),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    buttonText!,
                    style: TextStyle(
                        color: MyColors.mainColor, fontWeight: FontWeight.w100),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Map<Image, String> departmentList = {
//   Image.asset(''): '',
//   Image.asset(''): '',
//   Image.asset(''): '',
//   Image.asset(''): '',
//   Image.asset(''): '',
//   Image.asset(''): '',
// };
