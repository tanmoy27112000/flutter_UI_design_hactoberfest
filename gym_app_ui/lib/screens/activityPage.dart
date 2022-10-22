
import 'package:flutter/material.dart';
import 'package:gym_app_ui/widgets/CalenderContainer.dart';

import '../utils/constants.dart';
import '../widgets/title_text.dart';

class ActivityPage extends StatelessWidget {
  final List<String> days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];
  final List<int> date = [8, 9, 10, 11, 12, 13, 14];

  ActivityPage({Key? key}) : super(key: key);

  Scaffold buildMain(double width) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.redAccentColor,
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleText(title: "Weekly Activity"),
              const SizedBox(height: 20),
              buildWeekCalendar(),
              const SizedBox(height: 10),
              const TitleText(title: "Weekly Points"),
              const SizedBox(height: 10),
              buildPointPart(width),
              const SizedBox(height: 20),
              buildBottomPart()
            ],
          ),
        ),
      ),
    );
  }

  Container buildWeekCalendar() {
    return Container(
      height: 70,
      color: Colors.transparent,
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(width: 20),
        itemBuilder: (BuildContext context, int index) {
          return CalenderContainer(
            date: date[index],
            day: "${days[index]}",
          );
        },
        itemCount: 7,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Column buildPointPart(double width) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColor.greyColor,
            borderRadius: BorderRadius.circular(5),
          ),
          height: 5,
          width: width,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColor.redAccentColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                width: width * 0.9 - 50,
                height: 5,
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "1780 pts",
              style: const TextStyle(color: AppColor.redAccentColor),
            ),
            const Text(
              "2000 pts",
              style: const TextStyle(color: AppColor.greyColor),
            ),
          ],
        )
      ],
    );
  }

  Expanded buildBottomPart() {
    return Expanded(
      child: ListView(physics: const BouncingScrollPhysics(), children: [
        BottomContainer(
          image: "running.png",
          exerciseName: "Running",
          subTitle: "30",
          trailing: " min",
        ),
        const SizedBox(height: 20),
        BottomContainer(
          image: "ball-exercise.png",
          exerciseName: "Ball Exercise",
          subTitle: "15 x",
        ),
        const SizedBox(height: 20),
        BottomContainer(
          image: "planking.png",
          exerciseName: "Planking",
          subTitle: "5",
          trailing: " min",
        ),
        const SizedBox(height: 20),
        BottomContainer(
          image: "push-up.png",
          exerciseName: "Push up",
          subTitle: "20 x",
        ),
        const SizedBox(height: 20),
        BottomContainer(
          image: "push-up.png",
          exerciseName: "Push up",
          subTitle: "20 x",
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return buildMain(width);
  }
}

// Bottom Part Container class carrying details of exercise
// parent widget is container
// this has a height of 60
class BottomContainer extends StatelessWidget {
  final String image;
  final String exerciseName;
  final String subTitle;
  final String? trailing;

  const BottomContainer({Key? key, 
    required this.image,
    required this.exerciseName,
    required this.subTitle,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColor.whiteColor,
                ),
                child: Image.asset(
                  ImagePath.path + image,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    exerciseName,
                    style: const TextStyle(
                      color: AppColor.greyColor,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        subTitle,
                        style: const TextStyle(
                          color: AppColor.redAccentColor,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        trailing ?? "",
                        style: const TextStyle(
                          color: AppColor.greyColor,
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
          Row(
            children: [
              const Icon(Icons.timer, color: AppColor.greyColor),
              const SizedBox(
                width: 10,
              ),
              const Icon(Icons.save_alt, color: AppColor.greyColor),
              const SizedBox(
                width: 10,
              ),
              const Icon(Icons.star, color: AppColor.greyColor),
            ],
          )
        ],
      ),
    );
  }
}
