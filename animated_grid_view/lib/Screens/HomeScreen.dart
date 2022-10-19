import 'package:animated_grid_view/Screens/AnimatedGridView1.dart';
import 'package:animated_grid_view/Screens/AnimatedGridView2.dart';
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
          ElevatedButton(onPressed: ()=>  Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>AnimatedGridView1()),
          ),
              child: Text('Animation 1')),
          SizedBox(
            height: 10,
          ),

          ElevatedButton(onPressed: ()=>  Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>AnimatedGridView2()),
          ),
              child: Text('Animation 2')),
        ],
      ),
    );
  }
}
