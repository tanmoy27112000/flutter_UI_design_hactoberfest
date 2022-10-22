import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:language_learning_app_ui/utils/common_utils.dart';

import '../utils/colors.dart';

class LessonPage extends StatelessWidget {
  Expanded buildTopPart(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("${path}page3-bg.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Column(
            children: [
              buildAppBar(context),
              SizedBox(
                height: 15,
              ),
              buildHeading(),
              SizedBox(
                height: 20,
              ),
              buildPhraseContainer(),
            ],
          ),
        ],
      ),
    );
  }

  Expanded buildBottomPart() {
    return Expanded(
      child: Column(
        children: [
          buildDots(),
          buildAnswerPart(),
        ],
      ),
    );
  }

  Row buildAppBar(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          padding: EdgeInsets.all(0),
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.white,
          ),
        ),
        Text(
          "Lesson",
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Karla',
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Icon(
            Icons.info,
            color: Colors.white,
          ),
        )
      ],
    );
  }

  Container buildHeading() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: Text(
        "Translate these phrases to english",
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
          fontFamily: 'Karla',
          color: Colors.white,
        ),
      ),
    );
  }

  Container buildPhraseContainer() {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 10, 10, 0),
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 9),
            blurRadius: 12,
            color: AppColor.textLightGreyColor.withOpacity(0.8),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                '"',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              Icon(
                Icons.message,
                color: Colors.blue,
                size: 40,
              ),
            ],
          ),
          Text(
            "Buenas noches, ? coma estuvo su dia ?",
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'Karla',
              color: AppColor.textGreyColor,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '"',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Container buildDots() {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: DotsIndicator(
        dotsCount: 5,
        position: 0,
        decorator: const DotsDecorator(
          color: Colors.grey, // Inactive color
          activeColor: Colors.blue,
        ),
      ),
    );
  }

  Container buildAnswerPart() {
    return Container(
      height: 130,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextFormField(
        decoration: const InputDecoration(
          hintText: "Your answer....",
          border: InputBorder.none,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: null,
          child: Icon(
            Icons.check,
            color: Colors.green,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        backgroundColor: AppColor.appBackgroundColor,
        body: ListView(
          children: [
            buildTopPart(context),
            buildBottomPart(),
          ],
        ),
      ),
    );
  }
}
