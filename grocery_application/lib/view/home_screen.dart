import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                style: TextStyle(
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
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff34251F),
                ),
              ),
              SizedBox(
                height: 47.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 151.w),
                child: Row(
                  children: [
                    box(),
                    SizedBox(
                      width: 25.w,
                    ),
                    box(),
                    SizedBox(
                      width: 25.w,
                    ),
                    Stack(
                      children: [
                        Positioned(
                          left: 135.w,
                          bottom: 90.h,
                          child: Container(
                            height: 285.h,
                            width: 285.w,
                            decoration: BoxDecoration(
                              color: Colors.red,
                            ),
                          ),
                        ),
                        // box(),
                      ],
                    ),
                    SizedBox(
                      width: 25.w,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget box() {
    return Stack(
      children: [
        Container(
          height: 417.h,
          width: 363.w,
          decoration: BoxDecoration(
            color: Colors.black,
          ),
        ),
        Positioned(
          left: 23.w,
          bottom: 18.h,
          child: Container(
            height: 60.h,
            width: 317.w,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
