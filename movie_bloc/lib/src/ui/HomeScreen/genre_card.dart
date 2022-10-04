import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class GenreCard extends StatelessWidget {
  final String genre;

  const GenreCard({Key? key, required this.genre}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: 20),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20 / 4, // 5 padding top and bottom
      ),
      decoration: BoxDecoration(
        color: HexColor("#40cde8"),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        genre,
        style: TextStyle(color: HexColor("#091945"), fontSize: 15,fontFamily: 'ProductSans'),
      ),
    );
  }
}
