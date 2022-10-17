import 'package:flutter/material.dart';
import 'package:gmail_ui/screens/mails_list.dart';
import 'package:gmail_ui/screens/meet.dart';

class Pages extends StatefulWidget {
  Pages({super.key});

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  PageController _pageController = PageController();

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 500),
            curve: Curves.decelerate,
          );
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.mail,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.meeting_room,
            ),
            label: '',
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        children: const [
          HomePage(),
          Gmeet(),
        ],
      ),
    );
  }
}
