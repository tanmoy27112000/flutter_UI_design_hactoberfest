import 'package:animated_listview/AnimatedListView1.dart';
import 'package:animated_listview/AnimatedListView2.dart';
import 'package:animated_listview/AnimatedListView4.dart';
import 'package:flutter/material.dart';

import 'AnimatedListView3.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: ()=>  Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>AnimatedListView1()),
          ),
              child: Text('Animation 1')),
          SizedBox(
            height: 10,
          ),

          ElevatedButton(onPressed: ()=>  Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>AnimatedListView2()),
          ),
              child: Text('Animation 2')),
          SizedBox(
            height: 10,
          ),

          ElevatedButton(onPressed: ()=>  Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>AnimatedListView3()),
          ),
              child: Text('Animation 3')),
          SizedBox(
            height: 10,
          ),

          ElevatedButton(onPressed: ()=>  Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>AnimatedListView4()),
          ),
              child: Text('Animation 4')),
        ],
      ),
    );
  }
}
