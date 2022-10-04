import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:movie_bloc/src/blocs/movies_bloc.dart';
import 'package:date_format/date_format.dart';
import 'package:movie_bloc/src/models/item_model.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class Detailpage extends StatefulWidget {

  final Result result;

  const Detailpage({Key? key, required this.result}) : super(key: key);

  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {

  late int voteCount;
  late String title;
  late String language;
  late String path;
  late double popularity;
  late String overview;
  late var releaseDate ;

  @override
  void initState()
  {
    super.initState();
    voteCount = widget.result.voteCount;
    title = widget.result.title;
    path = widget.result.posterPath;
    overview = widget.result.overview;
    language = widget.result.originalLanguage;
    popularity = widget.result.popularity;
    releaseDate = formatDate(widget.result.releaseDate, [dd, ', ', MM, ' ', yyyy]);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bloc.fetchAllMovies();
    return Scaffold(
      backgroundColor: Colors.white,//HexColor("#25262d"),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child : Text("Movies++",style:
        TextStyle(fontSize: 20.0,fontFamily: 'ProductSans',color: HexColor("#40cde8"),fontWeight: FontWeight.bold))),
        elevation: 0,
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: size.height*0.55,
                  width: size.width*0.95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage("https://image.tmdb.org/t/p/w185${path}"),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8),
              Row(
                  children: [
                    Text('${voteCount*1000}',style:
                    TextStyle(fontFamily: 'ProductSans',fontSize: 15,color: Colors.grey)
                    ),
                    SizedBox(width: 4),
                    Row(
                      children: [
                        Icon(Icons.star,color: HexColor("#40cde8"),size: 15),
                        Icon(Icons.star,color: HexColor("#40cde8"),size: 15),
                        Icon(Icons.star,color: HexColor("#40cde8"),size: 15),
                        Icon(Icons.star,color: HexColor("#40cde8"),size: 15),
                        Icon(Icons.star,color: HexColor("#40cde8"),size: 15)
                      ],
                    )
                  ],
                ),
              SizedBox(height: 10),
              Text('${title}',style: TextStyle(fontFamily: 'ProductSans',fontSize: 25,color: HexColor("#25262d"),fontWeight: FontWeight.bold)),
              SizedBox(height: 5),
              Text('${overview}',style: TextStyle(fontFamily: 'ProductSans',fontSize: 15,color: Colors.grey),textAlign: TextAlign.justify,),
              SizedBox(height: 15),
              Row(
                children: [
                  Text('Language : ',style: TextStyle(fontFamily: 'ProductSans',fontSize: 16,color: HexColor("#40cde8"))),
                  Text('${language}',style: TextStyle(fontFamily: 'ProductSans',fontSize: 16,color: HexColor("#25262d").withOpacity(0.8))),
                ],
              ),
              SizedBox(height: 3),
              Row(
                children: [
                  Text('Popularity : ',style: TextStyle(fontFamily: 'ProductSans',fontSize: 16,color: HexColor("#40cde8"))),
                  Text('${popularity}',style: TextStyle(fontFamily: 'ProductSans',fontSize: 16,color: HexColor("#25262d").withOpacity(0.8))),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text('Release Date: ',style: TextStyle(fontFamily: 'ProductSans',fontSize: 16,color: HexColor("#40cde8"))),
                  Text('${releaseDate}',style: TextStyle(fontFamily: 'ProductSans',fontSize: 16,color: HexColor("#25262d").withOpacity(0.8))),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Row(
                      children: [
                        Icon(Icons.arrow_back_ios,size: 16,color:HexColor("#25262d")),
                        Text('Go Back ',style: TextStyle(fontFamily: 'ProductSans',fontWeight:FontWeight.bold,fontSize: 18,color: HexColor("#25262d").withOpacity(0.7))),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => send(title),
                    child: Container(
                      height: size.height*0.05,
                      width: size.width*0.30,
                      decoration: BoxDecoration(
                        color: HexColor("#40cde8"),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(child: Text("Share",style: TextStyle(fontFamily: 'ProductSans',fontSize: 16,color: HexColor("#ffffff")))),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10)
            ],
          ),
        ),
      ),
    );
  }

  Future<void> send ( String name ) async{

    final url = Uri.parse('https://www.google.com/search?q='
        '${name}+movie&rlz=1C1CHBD_enIN1022IN1022&oq='
        '${name}+movie&aqs=chrome.0.0i271j46i131i433i512j0i131i433i512l2j0i512j69i60l3.2389j0j7&sourceid=chrome&ie=UTF-8');

    await Share.share('Enjoy the movie ! \n\n$url');
  }

}
