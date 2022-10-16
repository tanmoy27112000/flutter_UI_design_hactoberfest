import 'package:flutter/material.dart';
import 'package:house_estate/page/favorite.dart';
import 'package:house_estate/page/home_page.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentTab = 0;
  Widget currentScreen = const HomePage();
  @override
  Widget build(BuildContext context) {
    Widget mainPage() {
      switch (currentTab) {
        case 0:
          return const HomePage();
        case 1:
          return const FavoritePage();
        case 2:
          return const SizedBox(
            child: Center(child: Text("TV News")),
          );
        case 3:
          return const SizedBox(
            child: Center(child: Text("Settings")),
          );
        default:
          return const HomePage();
      }
    }

    return Scaffold(
      body: mainPage(),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                onPressed: () {
                  setState(() {
                    currentTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icon_home.png',
                      color: currentTab == 0
                          ? const Color(0xffF7AF4B)
                          : const Color(0xffA6A5B1),
                    ),
                    Text(
                      "Discover",
                      style: TextStyle(
                        color: currentTab == 0
                            ? Colors.black
                            : const Color(0xffA6A5B1),
                        fontWeight:
                            currentTab == 0 ? FontWeight.bold : FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    currentTab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icon_fav.png',
                      color: currentTab == 1
                          ? const Color(0xffF7AF4B)
                          : const Color(0xffA6A5B1),
                    ),
                    Text(
                      "Favorites",
                      style: TextStyle(
                        color: currentTab == 1
                            ? Colors.black
                            : const Color(0xffA6A5B1),
                        fontWeight:
                            currentTab == 1 ? FontWeight.bold : FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    currentTab = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icon_tv.png',
                      color: currentTab == 2
                          ? const Color(0xffF7AF4B)
                          : const Color(0xffA6A5B1),
                    ),
                    Text(
                      "TV News",
                      style: TextStyle(
                        color: currentTab == 2
                            ? Colors.black
                            : const Color(0xffA6A5B1),
                        fontWeight:
                            currentTab == 2 ? FontWeight.bold : FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    currentTab = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icon_setting.png',
                      color: currentTab == 3
                          ? const Color(0xffF7AF4B)
                          : const Color(0xffA6A5B1),
                    ),
                    Text(
                      "Settings",
                      style: TextStyle(
                        color: currentTab == 3
                            ? Colors.black
                            : const Color(0xffA6A5B1),
                        fontWeight:
                            currentTab == 3 ? FontWeight.bold : FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
