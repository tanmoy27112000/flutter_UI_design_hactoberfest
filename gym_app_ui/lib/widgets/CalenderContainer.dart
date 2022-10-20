import 'package:flutter/material.dart';

import '../utils/constants.dart';

class CalenderContainer extends StatefulWidget {
  final String day;
  final int date;

  CalenderContainer({
   required this.date,
   required this.day,
  });

  @override
  _CalenderContainerState createState() => _CalenderContainerState();
}

class _CalenderContainerState extends State<CalenderContainer> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
        print(isSelected);
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 12),
        width: 40,
        padding: EdgeInsets.all(5),
        decoration: isSelected
            ? BoxDecoration(
                color: AppColor.redAccentColor,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(2, 6),
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 6,
                  ),
                ],
              )
            : null,
        child: Column(
          children: [
            Text(
              widget.day,
              style: TextStyle(
                color: isSelected ? AppColor.whiteColor : AppColor.greyColor,
              ),
            ),
            Text(
              "${widget.date}",
              style: TextStyle(
                color: isSelected ? AppColor.whiteColor : AppColor.greyColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
