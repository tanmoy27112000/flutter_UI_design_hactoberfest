import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram_ui/feed.dart';
import 'package:instagram_ui/post.dart';
import 'package:instagram_ui/story.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //FEED PAGES
  var _pages = [
    Feed(),
    Feed(),
    Feed(),
    Feed(),
    Feed(),
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      // IMPLEMENTING APP BAR
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFEEEEEE),
        brightness: Brightness.light,
        centerTitle: true,
        title: Text(
          "Instagram",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Feather.camera,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Feather.tv,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesome.send_o,
              color: Colors.black,
            ),
          ),
        ],
      ),

      body: _pages[currentPage],

      // IMPLEMENTING BOTTAM NAVIGATION BAR with functionalities to traveverse btw search ,feed,account pages

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (i) {
          setState(() {
            currentPage = i;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Foundation.home), label: "Feed"),
          BottomNavigationBarItem(icon: Icon(Feather.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Feather.plus_square), label: "Upload"),
          BottomNavigationBarItem(icon: Icon(Feather.heart), label: "Likes"),
          BottomNavigationBarItem(icon: Icon(Feather.user), label: "Account"),
        ],
      ),
    );
  }
}
