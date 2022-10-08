import 'package:flutter/material.dart';
import 'package:movie_bloc/src/ui/HomeScreen/genre_card.dart';

class Genres extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<String> genres = [
      "Action",
      "Crime",
      "Comedy",
      "Drama",
      "Horror",
      "Animation"
    ];
    return Container(
      height: size.height*0.035,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: genres.length,
        itemBuilder: (context, index) => GenreCard(genre: genres[index]),
      ),
    );
  }
}
