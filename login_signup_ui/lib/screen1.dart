import 'package:flutter/material.dart';
import 'package:login/screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  var text = "";
  var display = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            onChanged: (value) {
              text = value;
            },
          ),
          Text(" vas $display "),
          TextButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Screen2(text :display)));
                  display = text;
                });
              },
              child: Text("Enter"))
        ],
      ),
    );
  }
}
