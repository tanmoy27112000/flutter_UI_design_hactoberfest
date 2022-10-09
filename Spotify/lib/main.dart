import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        padding: EdgeInsets.fromLTRB(15, 10, 10, 0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF594367),
                Color(0xFF493954),
                Colors.black,
              ]),
        ),
        child: SpotifyUI(),
      ),
    );
  }
}

class SpotifyUI extends StatefulWidget {
  @override
  State<SpotifyUI> createState() => _SpotifyUIState();
}

class _SpotifyUIState extends State<SpotifyUI> {
  int selectedIndex = 0;
  late String search;
  final textEditingController = TextEditingController();

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_sharp),
            label: 'Search',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: 'Library',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money),
            label: 'Premium',
            backgroundColor: Colors.black,
          ),
        ],
      ),
      backgroundColor: Colors.transparent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 4,
                          child: SizedBox(
                            height: 50,
                            child: Center(
                              child: TextFormField(
                                controller: textEditingController,
                                onChanged: (value) {
                                  search = value;
                                },
                                textInputAction: TextInputAction.done,
                                onFieldSubmitted: (value) {
                                  launch('https://open.spotify.com/');
                                  textEditingController.clear();
                                },
                                textAlignVertical: TextAlignVertical.center,
                                cursorColor: Colors.white,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  prefixIcon:
                                      Icon(Icons.search, color: Colors.white),
                                  hintText: 'Find your Playlist',
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                  filled: true,
                                  fillColor: Color(0xFF5c4c69),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5.00),
                                      ),
                                      borderSide: BorderSide.none),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          flex: 1,
                          child: MaterialButton(
                            elevation: 0.0,
                            height: 50,
                            color: Color(0xFF5c4c69),
                            onPressed: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) => Menu());
                            },
                            child: Text(
                              'Sort',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('images/music.jpg'),
                          width: 170,
                          height: 170,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Your Weekly Floor Filters, Cover all hits by Pranjal Dubey',
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        Image(
                          image: AssetImage('images/Spotify_icon.svg.png'),
                          height: 20,
                          width: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Spotify',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.00,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      '119,087 likes.3h 49min',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 25,
                        ),
                        SizedBox(width: 30),
                        Icon(Icons.more_vert, color: Colors.white, size: 25),
                        SizedBox(width: 250),
                        Icon(Icons.play_circle,
                            color: Color(0xFF1dd661), size: 45)
                      ],
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: [
                        Songs('images/shershaah.jpg', 'Raatan Lambiya',
                            'Song by Aees Kaur, Jubin Nautiyal'),
                        SizedBox(height: 10.00),
                        Songs('images/all.jpg', 'All is Well',
                            'Song by Sonu Nigam and Shaan'),
                        SizedBox(height: 10.00),
                        Songs('images/idiots.jpg', 'Dekhte Dekhte',
                            'Song by Atif Aslam'),
                        SizedBox(height: 10.00),
                        Songs('images/adhuri.jpg', 'Hamari Adhuri Kahani',
                            'Song by Arijit Singh'),
                        SizedBox(height: 10.00),
                        Songs('images/kabira.jpg', 'Kabira',
                            'Song by Jubin Nautiyal'),
                        SizedBox(height: 10.00),
                        Songs(
                            'images/bhool.jpg',
                            'Bhool Bhulaiya 2 Title Track',
                            'Song by Neeraj Sridhar'),
                        SizedBox(height: 10.00),
                        Songs('images/din.webp', 'Woh din bhi kya din the',
                            'Song by Arijit Singh'),
                        SizedBox(height: 10.00),
                        Songs('images/bol.jpg', 'Bol Bachchan',
                            'Song by Himesh Reshamiya and Atul Ajay'),
                        SizedBox(height: 10.00),
                        Songs('images/kaabil.jpg', 'Kaabil title track',
                            'Song by Jubin Nautiyal and Palak'),
                        SizedBox(height: 10.00),
                        Songs('images/channa.webp', 'Channa mereya',
                            'Song by Arijit Singh'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Songs extends StatelessWidget {
  Songs(this.imageSource, this.name, this.description);
  final String imageSource;
  final String name;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image(
          image: AssetImage(imageSource),
          height: 50,
          width: 50,
        ),
        SizedBox(width: 10),
        SizedBox(
          width: 220,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                description,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 70),
        Icon(
          Icons.more_vert,
          color: Colors.grey,
          size: 30,
        ),
      ],
    );
  }
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
      color: Color(0xFF282828),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Text(
            'Sort by',
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Item('Title'),
          Item('Recently Added'),
          Item('Artist'),
          Item('Album'),
          Row(
            children: [
              SizedBox(
                width: 360,
                child: Item('Custom'),
              ),
              Icon(
                Icons.check,
                color: Colors.green,
                size: 25,
              )
            ],
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

class Item extends StatelessWidget {
  Item(this.item);
  final String item;
  @override
  Widget build(BuildContext context) {
    return Text(
      item,
      style: TextStyle(
          fontWeight: FontWeight.normal, fontSize: 20, color: Colors.white),
    );
  }
}
