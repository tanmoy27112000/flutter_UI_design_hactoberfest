import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:movie_bloc/src/ui/HomeScreen/category.dart';
import 'package:movie_bloc/src/ui/HomeScreen/genres.dart';
import 'package:movie_bloc/src/ui/HomeScreen/movies_list.dart';
import 'package:movie_bloc/src/ui/allmovie.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child : Text("Movies++",style:
        TextStyle(fontSize: 20.0,fontFamily: 'ProductSans',color: HexColor("#40cde8"),fontWeight: FontWeight.bold))),
        elevation: 0,
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark),
      ),
      body: SafeArea(
        child:SingleChildScrollView(
          child: Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hello Ziziphus !",style:
                          TextStyle(fontSize: 22,fontFamily: 'ProductSans',fontWeight: FontWeight.bold,color: HexColor("#25262d"))),
                          SizedBox(height: 2),
                          Text("Get all your favorite movie and enjoy",style:
                          TextStyle(fontSize: 15,fontFamily: 'ProductSans',color: Colors.grey)),
                        ],
                      ),
                      IconButton(icon:Icon(Icons.movie_filter_sharp,color: HexColor("#25262d"),size: 30),
                          onPressed: () =>  Navigator.push(context,
                              MaterialPageRoute(builder: (context) => AllMovies())))
                    ],
                  ),
                ),
                SizedBox( height: 10),
                Categorylist(),
                SizedBox( height:5),
                Genres(),
                SizedBox( height: 20),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: MoviesList(),
                )
              ],
            ),
        ),
        ),
    );
  }
}
