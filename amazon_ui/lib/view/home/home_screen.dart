import 'package:amazon_clone/utils/colors.dart';
import 'package:amazon_clone/view/appBar/custom_appbar.dart';
import 'package:amazon_clone/view/home/body.dart';
import 'package:amazon_clone/view/menu/menu_screen.dart';
import 'package:amazon_clone/view/shop/shop_screen.dart';
import 'package:flutter/material.dart';

import '../../utils/size_config.dart';
import '../profile/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = PageController();
  // @@@@@@@@@@@@@@@@@@@ Nav Bar @@@@@@@@@@@@@@@@@@@
  int selectedIndex = 0;
  bool isSelected = false;
  bool isScrulled = false;
// @@@@@@@@@@@@@@@@@@@ wedgets @@@@@@@@@@@@@@@@@@@
  final List<Widget>? _widgetsList = [
    const HomeBody(),
    const ProfileScreen(),
    const ShopScreen(),
    const MenuScreen(),
  ];

  // @@@@@@@@@@@@@@@@@@@ Icons @@@@@@@@@@@@@@@@@@@
  final List<String> _navIcons = [
    'assets/icons/home.png',
    'assets/icons/profile.png',
    'assets/icons/shop.png',
    'assets/icons/menu.png',
  ];

  //@@@@@@@@@@@@@@@@@@@ functions @@@@@@@@@@@@@@@@@@@
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
      // _widgetsList[index];
      isSelected == true;
    });
    pageController.jumpToPage(index);
  }

//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  @override
  Widget build(BuildContext context) {
    MySizeConfig().init(context);

    return Scaffold(
      appBar: (selectedIndex == 0 || selectedIndex == 2)
          ? //
          PreferredSize(
              preferredSize:
                  Size.fromHeight(MySizeConfig.safeAreaVertical! * 100),
              child: CustomAppBar(
                height: MySizeConfig.screenHeight! * 0.122,
                // width: 0,
              ),
            )
          : null,
      body: SafeArea(
        //for skip notch in page number 4
        top: selectedIndex == 2 ? true : false,
        child: PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            controller: pageController,
            itemBuilder: (_, i) => _widgetsList![i]),
        bottom: false,
      ),
      //bottom nav bar
      bottomNavigationBar: Material(
        elevation: 15,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.grey[300]!),
        ),
        child: SizedBox(
          height: MySizeConfig.safeBlockVerticalWithAppBar! * 12,
          width: MySizeConfig.safeBlockHorizontal! * 100,
          child: ListView.builder(
            itemCount: _navIcons.length,
            itemBuilder: (_, i) => Padding(
              padding: const EdgeInsets.only(
                left: 45,
                bottom: 10,
              ),
              child: GestureDetector(
                onTap: () {
                  onItemTapped(i);
                },
                child: AnimatedContainer(
                  width: MySizeConfig.safeBlockHorizontal! * 12,
                  // decoration: BoxDecoration(
                  // ),
                  child: Column(
                    children: [
                      Container(
                        width: MySizeConfig.safeBlockHorizontal! * 50,
                        height: MySizeConfig.safeBlockVerticalWithAppBar! * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(11),
                              bottomRight: Radius.circular(11),
                            ),
                            color: i == selectedIndex
                                ? MyColors.mainColor
                                : Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Image.asset(
                          _navIcons[i],
                          color: i == selectedIndex ? MyColors.mainColor : null,
                          width: MySizeConfig.safeBlockHorizontal! * 6,
                        ),
                      )
                    ],
                  ),
                  duration: const Duration(
                    milliseconds: 250,
                  ),
                ),
              ),
            ),
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
      /*
      @@@ Defult Nav Bar @@@
      BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            label: '',
          ),
        ],
        
      ),
       */
    );
  }
}
