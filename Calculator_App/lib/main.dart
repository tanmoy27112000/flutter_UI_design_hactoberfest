import 'package:calculator/pages/Scientific.dart';
import 'package:calculator/pages/Advanced.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: Firstpage()));

class Firstpage extends StatelessWidget {
  const Firstpage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //Pre Defining the Variable
    Color shadowColor = Colors.red;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MaterialApp(
      title: 'Calculator',
      home: Scaffold(

          //Multiple Widgets In A Coloum
          body: Column(
        children: <Widget>[
          //Just a Container For Text
          Flexible(
              child: Container(
                  height: height / 3,
                  width: width,
                  padding: EdgeInsets.fromLTRB(
                      width / 6, height / 8, (width / 6), height / 8),
                  color: Colors.black,
                  child: Center(
                      child: Text('Calculator',
                          style: TextStyle(
                              fontSize: 55,
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
                              ]))))),

          //Inserting an Image
          // ignore: sized_box_for_whitespace
          Flexible(
              child: Container(
                  color: Colors.black,
                  height: (height / 3),
                  width: width,
                  child: const Expanded(
                    child: Center(
                      child: Image(
                        image: AssetImage(
                            'android/Assets/IMG_20220609_163850.jpg'),
                      ),
                    ),
                  ))),

          //Inserting Buttons
          Flexible(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                //List of Widgets In A Row

                Container(
                  height: height / 3,
                  width: width / 2,
                  color: Colors.black,
                  padding: EdgeInsets.fromLTRB(15, height / 8, 15, height / 8),
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
                          side: const BorderSide(
                              color: Colors.redAccent, width: 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                      child: Text(
                        'Normal',
                        style: TextStyle(
                            fontSize: 20.2,
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
                    height: height / 3,
                    width: width / 2,
                    padding:
                        EdgeInsets.fromLTRB(15, height / 8, 15, height / 8),
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
                            side: const BorderSide(
                                color: Colors.redAccent, width: 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        child: (Text('Advanced',
                            style: TextStyle(
                                fontSize: 21.0,
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
              ]))
        ],
      )),
    );
  }
}

