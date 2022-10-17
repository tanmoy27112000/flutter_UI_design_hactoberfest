import 'package:calculator/pages/Advanced.dart';
import 'package:calculator/pages/Scientific.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: Firstpage()));

class Firstpage extends StatelessWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Pre Defining the Variable
    Color shadowColor = Colors.red;

    return MaterialApp(
      title: 'Calculator',
      home: Scaffold(
          body: Column(
        //Multiple Widgets In A Coloum
        children: <Widget>[
          Container(
              padding: const EdgeInsets.fromLTRB(60, 100, 55, 12),
              color: Colors.black,
              child: Text('Calculator',
                  style: TextStyle(
                      fontSize: 60.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                      color: Colors.white70,
                      //For Blurring Effects
                      shadows: [
                        Shadow(
                          color: shadowColor,
                          blurRadius: 20,
                        ),
                        Shadow(
                          color: shadowColor,
                          blurRadius: 40,
                        ),
                      ]))),
          //Inserting an Image
          const Center(
            child: Image(
              image: AssetImage('android/Assets/IMG_20220609_163850.jpg'),
            ),
          ),

          //Inserting Buttons
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                //List of Widgets In A Row

                Container(
                  padding: const EdgeInsets.fromLTRB(63.1, 60, 0.1, 84.857),
                  color: Colors.black,
                  child: TextButton(
                      onPressed: () {
                        //Navigation to Another Screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) {
                            return const Calculator();
                          }),
                        );
                      },
                      style: TextButton.styleFrom(
                          side: const BorderSide(color: Colors.red, width: 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                      child: Text(
                        'Scientific',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2.0,
                            color: Colors.white70,
                            shadows: [
                              Shadow(
                                color: shadowColor,
                                blurRadius: 20,
                              ),
                              Shadow(
                                color: shadowColor,
                                blurRadius: 40,
                              ),
                            ]),
                      )),
                ),

                //Inserting Another Button
                Container(
                    padding:
                        const EdgeInsets.fromLTRB(33, 60, 71.22471, 84.857),
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
                        child: (Text('Advanced',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2.0,
                                color: Colors.white70,
                                shadows: [
                                  Shadow(
                                    color: shadowColor,
                                    blurRadius: 20,
                                  ),
                                  Shadow(
                                    color: shadowColor,
                                    blurRadius: 40,
                                  ),
                                ])))))
              ])
        ],
      )),
    );
  }
}
