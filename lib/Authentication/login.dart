import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/Authentication/login.dart';
import 'package:news_app/Authentication/signup.dart';
import 'package:news_app/home.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  bool showpass = true;
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xffEFF1F3),
      // resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(height: h * 0.32),
                  Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: w * 0.09),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 0, right: 220),
                                    child: Text("Log-in",
                                        style: GoogleFonts.playfairDisplay(
                                          fontSize: 35,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ),

                                  SizedBox(
                                    height: 15,
                                  ),
                                  // SizedBox(width: w * 0.09),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 2),
                                    child: Text("Email",
                                        style: GoogleFonts.playfairDisplay(
                                          fontSize: 20,
                                          // fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                      width: w / 1.21,
                                      child: TextFormField(
                                        // enabled: ,
                                        // focusNode: ,
                                        cursorColor: Colors.black,
                                        decoration: InputDecoration(
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey),
                                            // borderRadius: BorderRadius.all(radius:BorderRadius.circular(25.0))
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.black),
                                          ),
                                          hoverColor: Colors.black,
                                          fillColor: Colors.black,
                                          focusColor: Colors.black,
                                          hintText: "Your Email id",
                                        ),
                                      )),

                                  SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 2),
                                    child: Text("Password",
                                        style: GoogleFonts.playfairDisplay(
                                          fontSize: 20,
                                          // fontWeight: FontWeight.bold,
                                        )),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                      width: w / 1.21,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border(
                                            top:
                                                BorderSide(color: Colors.white),
                                            left:
                                                BorderSide(color: Colors.white),
                                            right:
                                                BorderSide(color: Colors.white),
                                          )),
                                      child: TextFormField(
                                        cursorColor: Colors.black,
                                        obscureText: showpass,
                                        decoration: InputDecoration(
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey),
                                              // borderRadius: BorderRadius.all(radius:BorderRadius.circular(25.0))
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.black),
                                            ),
                                            focusColor: Colors.black,
                                            // focusedBorder: OutlineInputBorder(
                                            //   borderSide: const BorderSide(
                                            //       color: Colors.black, width: 2.0),
                                            //   // borderRadius: BorderRadius.circular(25.0),
                                            // ),
                                            hintText: "Password",
                                            suffixIcon: IconButton(
                                              icon: showpass
                                                  ? Icon(
                                                      Icons
                                                          .remove_red_eye_rounded,
                                                      color: Colors.grey,
                                                    )
                                                  : Icon(
                                                      Icons
                                                          .remove_red_eye_rounded,
                                                      color: Colors.blue,
                                                    ),
                                              onPressed: () {
                                                setState(() {
                                                  showpass = !showpass;
                                                });
                                              },
                                            )),
                                      )),

                                  Row(
                                    children: [
                                      SizedBox(
                                        width: w * 0.45,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 2),
                                        child: TextButton(
                                          onPressed: () {},
                                          child: Text("Forgot Password?",
                                              style:
                                                  GoogleFonts.playfairDisplay(
                                                fontSize: 15,
                                                color: Colors.black,
                                                // fontWeight: FontWeight.bold,
                                              )),
                                        ),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    //Center Column contents vertically,
                                    // crossAxisAlignment: CrossAxisAlignment
                                    //     .center, //Center Column contents horizontally,
                                    children: [
                                      SizedBox(width: w * 0.038),
                                      Container(
                                        // alignment: Alignment.center,
                                        // margin: EdgeInsets.all(10),
                                        height: 50.0,
                                        width: w * 0.7,
                                        child: RaisedButton(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30.0),
                                              side: BorderSide(
                                                  color: Color(0xff283C46))),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        home()));
                                          },
                                          // padding: EdgeInsets.only(top: 20.0),
                                          color: Color(0xff283C46),
                                          textColor: Colors.white,
                                          child: Text("Login",
                                              style: TextStyle(fontSize: 15)),
                                        ),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      SizedBox(width: w * 0.038),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 4),
                                        child: TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        login()));
                                          },
                                          child: Text(
                                              "Don't have an account ? Sign-up",
                                              style:
                                                  GoogleFonts.playfairDisplay(
                                                fontSize: 17,
                                                color: Colors.black,
                                                // fontWeight: FontWeight.bold,
                                              )),
                                        ),
                                      ),
                                    ],
                                  ),

                                  // SizedBox(
                                  //   height:
                                  //       MediaQuery.of(context).viewInsets.bottom,
                                  // ),
                                ],
                              ),
                            ],
                          ),
                          Row(children: <Widget>[
                            Expanded(
                              child: new Container(
                                  margin: const EdgeInsets.only(
                                      left: 10.0, right: 15.0),
                                  child: Divider(
                                    color: Colors.grey,
                                    height: 50,
                                  )),
                            ),
                            Text(
                              "OR Login with",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Expanded(
                              child: new Container(
                                  margin: const EdgeInsets.only(
                                      left: 15.0, right: 10.0),
                                  child: Divider(
                                    color: Colors.grey,
                                    height: 50,
                                  )),
                            ),
                          ]),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Container(
                                  child: Image.asset('assets/google.png'),
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Container(
                                  child: Image.asset('assets/facebook.png'),
                                  height: 40,
                                  width: 40,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 50)
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40.0),
                            bottomRight: Radius.circular(40.0),
                            topLeft: Radius.circular(40.0),
                            bottomLeft: Radius.circular(40.0)),
                      )),
                ],
              ),
              Positioned(
                top: 145,
                left: 20,
                child: Container(
                  height: 150,
                  width: 150,
                  child: Lottie.asset('assets/sigup.json'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
