import 'package:crypto_app/constants.dart';
import 'package:crypto_app/view/home_view/assets_screen.dart';
import 'package:crypto_app/view/home_view/notification_screen.dart';
import 'package:crypto_app/view/home_view/profile_screen.dart';
import 'package:flutter/material.dart';
import '../home_view/home_screen.dart';

class NavBarView extends StatefulWidget {
  const NavBarView({super.key});

  @override
  State<NavBarView> createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarView> {
  int _currentIndex = 0;

  List<Widget> pages = [
    const HomeScreen(),
    const AssetsScreen(),
    const NotificationScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor1,
        body: pages.elementAt(_currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: backgroundColor1,
          currentIndex: _currentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: backgroundColor2,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          onTap: (value) => setState(() {
            _currentIndex = value;
          }),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/1.1.png',
                height: size.height * 0.05,
                color: Colors.grey,
              ),
              label: '',
              activeIcon: Image.asset(
                'assets/icons/1.2.png',
                height: size.height * 0.05,
                color: backgroundColor2,
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/2.1.png',
                height: size.height * 0.05,
                color: Colors.grey,
              ),
              label: '',
              activeIcon: Image.asset(
                'assets/icons/2.2.png',
                height: size.height * 0.05,
                color: backgroundColor2,
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/3.1.png',
                height: size.height * 0.05,
                color: Colors.grey,
              ),
              label: '',
              activeIcon: Image.asset(
                'assets/icons/3.2.png',
                height: size.height * 0.05,
                color: backgroundColor2,
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/4.1.png',
                height: size.height * 0.05,
                color: Colors.grey,
              ),
              label: '',
              activeIcon: Image.asset(
                'assets/icons/4.2.png',
                height: size.height * 0.05,
                color: backgroundColor2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
