// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screen/call_screen.dart';
import 'package:whatsapp_ui/screen/camera_screen.dart';
import 'package:whatsapp_ui/screen/chat_screen.dart';
import 'package:whatsapp_ui/screen/status_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final List<Tab> appTabs = [
    Tab(
      icon: Padding(
        padding: const EdgeInsets.only(top: 3),
        child: Icon(Icons.photo_camera),
      ),
    ),
    Tab(
      text: "CHATS",
    ),
    Tab(text: "STATUS"),
    Tab(
      text: "CALLS",
    )
  ];
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: appTabs.length, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "WhatsApp",
            style: TextStyle(fontSize: 21),
          ),
          backgroundColor: Color(0xff008069),
          bottom: TabBar(
            labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            tabs: appTabs,
            controller: _tabController,
            indicatorColor: Colors.white,
          ),
          actions: [
            Icon(
              Icons.search,
              size: 25,
            ),
            SizedBox(width: 6),
            Padding(
              padding: EdgeInsets.only(left: 4, right: 4),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.more_vert,
                  size: 25,
                ),
              ),
            ),
          ]),
      body: TabBarView(
        controller: _tabController,
        children: [
          CameraScreen(),
          ChatScreen(),
          StatusScreen(),
          CallScreen(),
        ],
      ),
    );
  }
}
