import 'package:flutter/material.dart';

class Advanced extends StatelessWidget {
  const Advanced({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(

            //This Entire Page Is Just For Text

            body: Column(
      children: <Widget>[
        Container(
            padding: EdgeInsets.fromLTRB(60, 275, 55, 252.0),
            color: Colors.black,
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return const Advanced();
                    }),
                  );
                },
                style: TextButton.styleFrom(
                    side: const BorderSide(color: Colors.red, width: 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                child: const Text(
                    'This Needs To Be Developed Using High Level Maths. \nHave to Wait!!',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.0,
                        color: Colors.white70,
                        shadows: [
                          Shadow(
                            color: Colors.redAccent,
                            blurRadius: 20,
                          ),
                          Shadow(
                            color: Colors.redAccent,
                            blurRadius: 40,
                          ),
                        ]))))
      ],
    )));
  }
}
