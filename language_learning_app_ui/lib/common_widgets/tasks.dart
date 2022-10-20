import 'package:flutter/material.dart';

import '../screens/lesson_page.dart';
import '../utils/colors.dart';

class Tasks extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final String taskCompleted;

  const Tasks({Key? key, required this.title, required this.icon, required  this.color, required this.taskCompleted});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LessonPage(),
          ),
        );
        print("pressed");
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 15,
              color: Colors.grey.withOpacity(0.7),
              offset: const Offset(0, 12),
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 15,
                    offset: const Offset(0, 9),
                    color: Colors.grey.withOpacity(0.7),
                  ),
                ],
              ),
              child: Icon(
                icon,
                color: color,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 20,
                color: AppColor.textGreyColor.withOpacity(0.8),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "$taskCompleted /",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    color: AppColor.textGreyColor.withOpacity(0.8),
                  ),
                ),
                Text(
                  " 5",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    color: AppColor.textGreyColor.withOpacity(0.8),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Divider(
              color: color,
              thickness: 10,
              indent: 10,
              endIndent: 10,
            )
          ],
        ),
      ),
    );
  }
}
