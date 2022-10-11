import 'package:flutter/material.dart';
import 'package:zoom_ui/tabs/contacts_tab.dart';
import 'package:zoom_ui/tabs/meet_chat_tab.dart';
import 'package:zoom_ui/tabs/meetings_tab.dart';
import 'package:zoom_ui/tabs/more_tab.dart';
import 'package:zoom_ui/utils/colors.dart';
import 'package:zoom_ui/widgets/custom_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  List<Widget> pages = [
    const MeetingScreen(),
    const MeetingsTab(),
    const ContactsTab(),
    const LogOut(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Meet & Chat'),
        centerTitle: true,
        backgroundColor: backgroundColor,
      ),
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: footerColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          onTap: onPageChanged,
          currentIndex: _page,
          type: BottomNavigationBarType.fixed,
          unselectedFontSize: 14,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.comment_bank),
              label: 'Meet & Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_time),
              label: 'Meetings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contacts_outlined),
              label: 'Contacts',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: 'More',
            ),
          ]),
    );
  }
}
