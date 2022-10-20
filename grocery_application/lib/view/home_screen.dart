import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_application/utils/text_style.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: EdgeInsets.only(top: 97.h),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Combo Packs",
                  textAlign: TextAlign.center,
                  style: MyTextStyle.normalFrankFont.copyWith(
                    fontSize: 68.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff34251F),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  "Nutrients Based Packs To Lead a Happy Life!",
                  textAlign: TextAlign.center,
                  style: MyTextStyle.normalLatoFont.copyWith(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff34251F),
                  ),
                ),
                SizedBox(
                  height: 47.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 151.w, right: 73.w),
                  child: SizedBox(
                    height: 507.h,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: [
                        Positioned(
                          right: 0.w,
                          bottom: 0.h,
                          child: Container(
                            height: 285.h,
                            width: 285.h,
                            decoration: BoxDecoration(
                              color: Color(0xffEEDDCC),
                            ),
                            child: SvgPicture.asset(
                              "assets/images/dotted_rect.svg",
                              height: 107.h,
                              width: 133.w,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0.h,
                          left: 0.w,
                          child: Row(
                            children: [
                              box("PROTEIN RICH",
                                  "assets/images/protein_rich.png"),
                              SizedBox(
                                width: 25.w,
                              ),
                              box("VITAMIN RICH",
                                  "assets/images/vitamin_rich.png"),
                              SizedBox(
                                width: 25.w,
                              ),
                              box("MINERAL RICH",
                                  "assets/images/mineral_rich.png"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 93.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 151.w),
                  child: SizedBox(
                    height: 747.h,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 40.h,
                          left: 62.w,
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(180.r),
                                    ),
                                    child: Image.asset(
                                      "assets/images/soup_recipe.png",
                                      height: 662.h,
                                      width: 470.w,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 662.h,
                                    width: 470.w,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 100.w),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 20.h),
                                            child: Text(
                                              "Recipe Based Recommendation",
                                              style: MyTextStyle.normalLatoFont
                                                  .copyWith(
                                                fontSize: 32.sp,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 25.h),
                                            child: Text(
                                              "Today's Top Recipe",
                                              style: MyTextStyle.normalLatoFont
                                                  .copyWith(
                                                fontSize: 32.sp,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 470.h, left: 50.w),
                                            child: Text(
                                              "Common Recipe",
                                              style: MyTextStyle.normalLatoFont
                                                  .copyWith(
                                                fontSize: 32.sp,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 92.w),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Fast Delivery!",
                                      style:
                                          MyTextStyle.normalFrankFont.copyWith(
                                        fontSize: 68.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff34251F),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 77.h),
                                      child: Text(
                                        "We Offer 10,in Delivery",
                                        style:
                                            MyTextStyle.normalLatoFont.copyWith(
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff34251F),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 25.h),
                                      child: Text(
                                        "We Care For Our Customers!!",
                                        style:
                                            MyTextStyle.normalLatoFont.copyWith(
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff34251F),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 0.h,
                          left: 450.w,
                          child: SvgPicture.asset(
                            "assets/images/dotted_rect.svg",
                            height: 107.h,
                            width: 133.w,
                          ),
                        ),
                        Positioned(
                          left: 0.w,
                          bottom: 0.h,
                          child: Container(
                            height: 182.h,
                            width: 182.w,
                            decoration: BoxDecoration(
                              color: Color(0xffEEDDCC),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 387.w,
                          bottom: 0.h,
                          child: Container(
                            height: 173.h,
                            width: 739.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Row(
                              children: [
                                figures("2018", "FiFash Founded"),
                                figures("8900+", "Product Sold"),
                                figures("3105+", "Best Reviews"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget box(String text, String image) {
    return Container(
      height: 417.h,
      width: 363.w,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            image,
          ),
        ),
      ),
      child: Column(
        children: [
          Spacer(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
            height: 60.h,
            width: 250.w,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Center(
              child: Text(
                text,
                style: MyTextStyle.normalLatoFont.copyWith(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w900,
                  color: Color(0xff34251F),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget figures(String titleText, String text) {
    return Padding(
      padding: EdgeInsets.only(top: 32.h, left: 76.w, right: 76.w),
      child: Column(
        children: [
          Center(
            child: Text(
              titleText,
              style: MyTextStyle.normalFrankFont.copyWith(
                fontSize: 40.sp,
                fontWeight: FontWeight.w700,
                color: Color(0xff34251F),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Center(
            child: Text(
              text,
              style: MyTextStyle.normalLatoFont.copyWith(
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff34251F),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
