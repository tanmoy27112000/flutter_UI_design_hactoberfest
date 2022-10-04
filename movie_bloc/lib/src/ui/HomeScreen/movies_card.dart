import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:movie_bloc/src/models/item_model.dart';
import 'package:movie_bloc/src/ui/detail_page.dart';
import 'package:animations/animations.dart';

class MovieCard extends StatelessWidget {
  final Result result;

  const MovieCard({Key? key, required this.result}) : super(key: key);
  @override

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: OpenContainer(
        closedElevation: 0,
        openElevation: 0,
        closedBuilder: (context, action) => buildMovieCard(context,size.height*0.5),
        openBuilder: (context, action) => Detailpage(result: result),
      ),
    );
  }

  Column buildMovieCard(BuildContext context,double x) {
    return Column(
      children: <Widget>[
        Container(
            height: x,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              boxShadow: [BoxShadow(
                offset: Offset(0, 4),
                blurRadius: 4,
                color: Colors.black26,
              )],
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage("https://image.tmdb.org/t/p/w185${result.posterPath}"),
              ),
            ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: x*0.3,
                child: Text(
                    result.title,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: x*0.05,
                        fontFamily: 'ProductSans',
                        fontWeight: FontWeight.bold,
                        color: HexColor("#25262d")
                    )
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: x*0.19,
                  height: x*0.060,
                  decoration: BoxDecoration(
                    borderRadius:  BorderRadius.circular(6),
                    color: HexColor("#091945")
                  ),
                  child: Center(
                    child: Text(
                        "IMDB ${result.voteAverage}",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'ProductSans',
                            color: Colors.white
                        )
                    ),
                  ),
                )
              ],
            )
          ],
        ),

      ],
    );
  }
}
