import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Categorylist extends StatefulWidget {
  @override
  _CategorylistState createState() => _CategorylistState();
}

class _CategorylistState extends State<Categorylist> {
  int selectedCategory = 0;
  List<String> categories = ["In Theater", "Box Office", "Coming Soon","Block"];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index, context),
      ),
    );
  }

  Padding buildCategory(int index, BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedCategory = index;
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: 'ProductSans',
                color: index ==
                    selectedCategory ? Color(0xFF12153D) : Colors.black.withOpacity(0.4),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              height: 6,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: index == selectedCategory
                    ? HexColor("#40cde8")
                    : Colors.transparent,
              ),
            )
          ],
        ),
      ),
    );
  }
}
