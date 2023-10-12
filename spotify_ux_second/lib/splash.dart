import 'package:flutter/material.dart';

import 'category.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  void select(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (ctx) => CategoryScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Music For Everyone',
              style: TextStyle(color: Colors.white, fontSize: 40),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(26.0),
              child: Center(child: Image.asset('assets/images/logo.png')),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    select(
                        context); // You need to call the select function with the context
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: Text(
                    "Lets Get Started",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}