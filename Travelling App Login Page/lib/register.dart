import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(top: 90, left: 50),
              child: Text(
                "Create",
                style: TextStyle(
                    fontFamily: 'LE',
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 138, left: 50),
              child: Text(
                "Account",
                style: TextStyle(
                    fontFamily: 'LE',
                    color: Color(0xff858585),
                    fontSize: 48,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.4,
                  left: 50,
                  right: 50,
                ),
                child: Column(
                  children: [
                    TextField(
                      cursorColor: Color(0xff858585),
                      decoration: InputDecoration(
                          prefixIcon:
                              Icon(Icons.person, color: Color(0xff858585)),
                          fillColor: Color(0xffE1E1E1),
                          filled: true,
                          hintText: "Username",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      cursorColor: Color(0xff858585),
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email_rounded,
                              color: Color(0xff858585)),
                          fillColor: Color(0xffE1E1E1),
                          filled: true,
                          hintText: "Email",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      cursorColor: Color(0xff858585),
                      obscureText: true,
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Color(0xff858585),
                          ),
                          fillColor: Color(0xffE1E1E1),
                          filled: true,
                          hintText: "Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 28,
                            fontFamily: 'LE',
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: Color(0xff858585),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "login");
                          },
                          child: Text(
                            "Sign in",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 18,
                              fontFamily: 'LE',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/img/bg.jpg'), fit: BoxFit.cover)),
    );
  }
}
