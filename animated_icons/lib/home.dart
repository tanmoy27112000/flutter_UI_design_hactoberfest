import 'package:animated_icons/animated_heartIcon.dart';
import 'package:animated_icons/animated_icons.dart';
import 'package:flutter/material.dart';

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

          Center(
            child: ElevatedButton(onPressed: () =>Navigator.push(
              context,
            MaterialPageRoute(builder: (context) =>HeartIcons()),
            ),
                child: const Text('Heart animated Icon')),
          ),

          Center(
            child: ElevatedButton(onPressed: ()=>Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>CustomizeIcons()),
            ),
                child: const Text('Animated Icons')),
          ),
        ],
      ),
    );
  }
}
