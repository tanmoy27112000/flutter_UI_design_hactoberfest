import 'package:flutter/material.dart';
import 'package:login/widgets/calls.dart';
import 'package:login/widgets/chat.dart';
import 'package:login/widgets/settings.dart';
import 'package:login/widgets/settings/about.dart';
import 'package:login/widgets/settings/invite.dart';

import 'package:login/widgets/story.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Mychat"),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text("Chats"),
              ),
              Tab(
                child: Text("Stories"),
              ),
              Tab(
                child: Text("Groups"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 20.0,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    chat("Mashood Hussain", "hey!", 0,
                        "https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8dXNlcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                    chat("Arslan", "bye", 5,
                        "https://images.unsplash.com/photo-1612923283356-0197f319d603?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHNtYWxsJTIwc2l6ZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                    chat("Arslan", "whats is the time of today class", 0,
                        "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80"),
                    chat("James", "whats the plan?", 0,
                        "https://media.istockphoto.com/photos/middle-age-man-portrait-picture-id1285124274?b=1&k=20&m=1285124274&s=170667a&w=0&h=tdCWjbu8NxR_vhU3Tri7mZcfUH6WdcYWS1aurF4bbKI="),
                    chat("Fariz", "whats is the time of today class", 0,
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQI7yc6O1qMOWbBGzLjgelQXAfYs73w0LBcRw&usqp=CAU"),
                    chat("James", "whats the plan?", 1,
                        "https://media.istockphoto.com/photos/middle-age-man-portrait-picture-id1285124274?b=1&k=20&m=1285124274&s=170667a&w=0&h=tdCWjbu8NxR_vhU3Tri7mZcfUH6WdcYWS1aurF4bbKI="),
                    chat("Zakir", "whats is the time of today class", 0,
                        "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80"),
                    chat("Jamshid", "whats the plan?", 0,
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNhZQEeJ39QftT7-IGn7vQyI54y6NxvZ9FWg&usqp=CAU"),
                    chat("David", "be on time", 0,
                        "https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHVzZXJ8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                    chat("Hamza", "bye", 0,
                        "https://images.unsplash.com/photo-1612923283356-0197f319d603?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHNtYWxsJTIwc2l6ZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 20.0,
              ),
              color: Colors.white,
              child: Column(
                children: [
                  story(),
                ],
              ),
            ),
            Container(
              color: Colors.grey,
              height: 20,
              width: MediaQuery.of(context).size.width,
              child: Column(),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Control Panel'),
              ),
              Settings(),
              Calls(),
              Invite(),
              About(),
              Divider(
                height: 1,
                thickness: 1,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    "Version 1.0.2",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
