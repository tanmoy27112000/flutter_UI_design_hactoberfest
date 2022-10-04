import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:movie_bloc/src/models/item_model.dart';
import '../blocs/movies_bloc.dart';

class AllMovies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bloc.fetchAllMovies();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: HexColor("#25262d")),onPressed: () => Navigator.pop(context)),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("All Movies",style:
        TextStyle(fontSize: 20.0,fontFamily: 'ProductSans',color: HexColor("#40cde8"),fontWeight: FontWeight.bold))
      ),
      body: StreamBuilder(
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
    return GridView.builder(
        itemCount: snapshot.data!.results!.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
              padding: EdgeInsets.all(10),
              child:Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage('https://image.tmdb.org/t/p/w185${snapshot.data!
                        .results![index].posterPath}'),
                  ),
                 ),
          )
          );
        }
        );
  }
}