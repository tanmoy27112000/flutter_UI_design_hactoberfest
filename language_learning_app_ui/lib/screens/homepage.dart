import 'package:flutter/material.dart';
import 'package:language_learning_app_ui/utils/common_utils.dart';

import '../common_widgets/course_card_widget.dart';
import '../utils/colors.dart';

class HomePage extends StatelessWidget {
  Container buildAppBar() {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.menu),
          SizedBox(
            child: Row(
              children: [
                SizedBox(
                  height: 20,
                  child: Image.asset("${path}english.png"),
                ),
                const Text("English"),
                const Icon(Icons.keyboard_arrow_down)
              ],
            ),
          )
        ],
      ),
    );
  }

  Container buildTitle() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage("${path}bishal.jpeg"),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Bishal Paudel",
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Karla',
                  fontWeight: FontWeight.w700,
                  color: AppColor.textGreyColor,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on,
                    color: AppColor.textLightGreyColor,
                  ),
                  Text(
                    "Ratnanagar-2, Tandi",
                    style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'Karla',
                        color: AppColor.textLightGreyColor),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Container buildWelcomeText() {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: Text(
        "Welcome back!",
        style: TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 35,
          fontFamily: 'Karla',
          color: AppColor.textGreyColor,
        ),
      ),
    );
  }

  Container buildChallengeCard(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(horizontal: 20),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.centerRight,
          fit: BoxFit.fitHeight,
          image: AssetImage("${path}vector-image.png"),
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: AppColor.textLightGreyColor,
            blurRadius: 10,
            offset: Offset(-3, 9),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.lightBlueAccent.withOpacity(0.5),
            ),
            child: Text(
              "Intermediate",
              style: TextStyle(
                fontSize: 10,
                color: Colors.blue,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Today's\nchallenge",
            style: TextStyle(
              fontFamily: 'Karla',
              fontSize: 25,
              color: AppColor.textGreyColor,
            ),
          ),
          Text(
            "German meals",
            style: TextStyle(
              fontSize: 15,
              color: Colors.blue,
              fontFamily: 'Poppins',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                height: 20,
                width: 20,
                child: Image.asset("${path}diamond.png"),
              ),
              Text(
                "Take this lesson to\nearn a new milestone",
                style: TextStyle(
                  color: AppColor.textLightGreyColor,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Container buildCourseTitle() {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
      child: Text(
        "Your courses",
        style: TextStyle(
          color: AppColor.textGreyColor,
          fontSize: 15,
          fontFamily: "Karla",
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget buildCourseCard(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildCourseTitle(),
        Container(
          height: 140,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CourseCard(
                language: "Spanish",
                level: "Begginer",
                percentage: "52 %",
                bgColor: Colors.orange,
                progress: 0.52,
              ),
              CourseCard(
                  language: "Italian",
                  level: "Advanced",
                  percentage: "16 %",
                  bgColor: Colors.green,
                  progress: 0.16),
              CourseCard(
                  language: "Chinese",
                  level: "Intermediate",
                  percentage: "75 %",
                  bgColor: Colors.blue,
                  progress: 0.75),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.appBackgroundColor,
      body: SafeArea(
        child: Container(
          alignment: Alignment.topCenter,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              buildAppBar(),
              buildTitle(),
              buildWelcomeText(),
              buildChallengeCard(context),
              buildCourseCard(context)
            ],
          ),
        ),
      ),
    );
  }
}
