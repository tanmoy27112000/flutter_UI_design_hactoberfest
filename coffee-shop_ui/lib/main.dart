import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'coffee_tiles.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: const PageWidget(),
    );
  }
}

class PageWidget extends StatefulWidget {
  const PageWidget({Key? key}) : super(key: key);

  @override
  State<PageWidget> createState() => _PageWidgetState();
}

class _PageWidgetState extends State<PageWidget> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Container(
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey)),
            child: const Icon(Icons.person),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentindex,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.brown,
          unselectedItemColor: Colors.grey,
          onTap: (value) => setState(() {
                currentindex = value;
              }),
          items: const [
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.home,
                size: 32,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.backpack,
                size: 32,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.headset_rounded,
                size: 32,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.notifications,
                size: 32,
              ),
            ),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Find the best \ncoffee for you',
              style: GoogleFonts.kanit(fontSize: 40),
            ),
            const SizedBox(
              height: 48,
            ),
            //search bar :
            Container(
              height: 55,
              decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: const BorderRadius.all(Radius.circular(18))),
              child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Row(children: const [
                    Icon(Icons.search, color: Colors.grey),
                    SizedBox(width: 8),
                    Text(
                      'Find Your Coffee..',
                      style: TextStyle(color: Colors.grey),
                    )
                  ])),
            ),
            const SizedBox(height: 32),
            //categories :
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cappuccino',
                  style: GoogleFonts.kanit(color: Colors.orange, fontSize: 16),
                ),
                Text(
                  'Expresso',
                  style: GoogleFonts.kanit(color: Colors.grey, fontSize: 16),
                ),
                Text(
                  'Latto',
                  style: GoogleFonts.kanit(color: Colors.grey, fontSize: 16),
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            //horizontal list of coffee tiles :
            Expanded(
                child: ListView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: const [CoffeeTile(), CoffeeTile(), CoffeeTile()],
            )),
          ],
        ),
      ),
    );
  }
}
