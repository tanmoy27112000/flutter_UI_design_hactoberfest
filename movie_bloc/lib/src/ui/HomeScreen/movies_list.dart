import 'package:flutter/material.dart';
import 'package:movie_bloc/src/blocs/movies_bloc.dart';
import 'package:movie_bloc/src/models/item_model.dart';
import 'package:movie_bloc/src/ui/HomeScreen/movies_widget.dart';


class MoviesList extends StatelessWidget {
  const MoviesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size =  MediaQuery.of(context).size;
    bloc.fetchAllMovies();
    return Container(
      height: size.height*0.8,
      width: size.width,
      child: StreamBuilder(
            stream: bloc.allMovies,
            builder: (context, AsyncSnapshot<ItemModel> snapshot) {
              if (snapshot.hasData) {
                return buildList(snapshot);
              } else if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              }
              return Center(child: CircularProgressIndicator());
            },
      ),
    );
  }
  Widget buildList(AsyncSnapshot<ItemModel> snapshot) {
    return MoviesWidget(snapshot: snapshot);

  }
}
