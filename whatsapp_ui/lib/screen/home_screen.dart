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
        child: Icon(Icons.group),
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
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          PopupMenuButton(
              color: Colors.white,
              icon: const Icon(Icons.more_vert),
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 1,
                  child: Text("New Group"),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text("New Broadcast"),
                ),
                const PopupMenuItem(
                  value: 3,
                  child: Text("Linked Devices"),
                ),
                const PopupMenuItem(
                  value: 4,
                  child: Text("Starred Messages"),
                ),
                const PopupMenuItem(
                  value: 4,
                  child: Text("Payments"),
                ),
                const PopupMenuItem(
                  value: 4,
                  child: Text("Settings"),
                ),
              ],
    ),]),
      body: TabBarView(
        controller: _tabController,
        children: [
          MyCommunityPage(),
          ChatScreen(),
          StatusScreen(),
          CallScreen(),
        ],
      ),
    );
  }
}
