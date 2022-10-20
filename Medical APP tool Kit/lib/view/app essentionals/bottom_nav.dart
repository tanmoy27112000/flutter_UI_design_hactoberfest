import 'package:drsimple/variables/ui_variables.dart';
import 'package:drsimple/view/homepage/home_page.dart';
import 'package:drsimple/view/profile_information/profile_info.dart';
import 'package:flutter/material.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({Key? key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static const List _widgetOptions = [HomePage(), ProfileInfoScreen()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color:
                    const Color.fromARGB(255, 208, 208, 208).withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: BottomNavigationBar(
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    label: "",
                    icon: Padding(
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.02),
                      child: Icon(Icons.home,
                          size: MediaQuery.of(context).size.height * 0.045),
                    ),
                    backgroundColor: mainThemeSecondryColor),
                BottomNavigationBarItem(
                  icon: Icon(Icons.perm_identity_rounded,
                      size: MediaQuery.of(context).size.height * 0.045),
                  label: "",
                  backgroundColor: mainThemeSecondryColor,
                ),
              ],
              type: BottomNavigationBarType.fixed,
              currentIndex: _selectedIndex,
              selectedItemColor: mainThemeColor,
              iconSize: 42,
              unselectedItemColor: inputTextColor,
              onTap: _onItemTapped,
              elevation: 18),
        ),
      ),
    );
  }
}
