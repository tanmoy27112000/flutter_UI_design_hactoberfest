import 'package:flutter/material.dart';
import 'package:language_learning_app_ui/common_widgets/circular_percent_indicator.dart';

import '../screens/course_page.dart';

class CourseCard extends StatelessWidget {
  final String language;
  final String level;
  final Color bgColor;
  final String percentage;
  final double progress;

  CourseCard(
      {required this.progress,
      required this.language,
      required this.level,
      required this.bgColor,
       required this.percentage});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CoursePage(
              progress: progress,
              percentage: percentage,
            ),
          ),
        );
      },
      child: Container(
        height: 140,
        padding: const EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width * 0.4,
        margin: const EdgeInsets.only(left: 20, right: 0),
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
               BoxShadow(
                blurRadius: 7,
                color: Colors.grey,
                offset: Offset(2, 4),
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              language,
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            Text(
              level,
              style: const TextStyle(
                fontFamily: 'Karla',
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircularPercentIndicator(
                  progress: progress,
                  percentage: percentage,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
