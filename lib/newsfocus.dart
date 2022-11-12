import 'dart:developer';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:delayed_display/delayed_display.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/Authentication/login.dart';
import 'package:news_app/Authentication/signup.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:news_app/Models/article.dart';

class newsfocus extends StatefulWidget {
  final int index;
  final List news;
  newsfocus({Key? key, required this.index, required this.news})
      : super(key: key);

  @override
  _newsfocusState createState() => _newsfocusState();
}

class _newsfocusState extends State<newsfocus> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey[50],
        body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: widget.news.length - widget.index - 1,
          controller: PageController(
              initialPage: widget.index, keepPage: true, viewportFraction: 1),
          itemBuilder: (BuildContext context, int itemIndex) {
            return Stack(
              children: [
                Column(
                  children: [
                    Container(
                        child: Stack(
                          children: [
                            BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                              child: Container(
                                color: Colors.black.withOpacity(0.2),
                              ),
                            ),
                            Center(
                              child: Container(
                                  height: 250,
                                  width: 350,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "${widget.news[itemIndex].urlToImage}"),
                                      fit: BoxFit.fill,
                                      alignment: Alignment.center,
                                    ),
                                  )),
                            )
                          ],
                        ),
                        height: 300,
                        width: w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: NetworkImage(
                                "${widget.news[itemIndex].urlToImage}"),
                            fit: BoxFit.fill,
                            alignment: Alignment.center,
                          ),
                        )),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        child: Text("${widget.news[itemIndex].title}",
                            style: GoogleFonts.roboto(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        child: Text(
                            "Description- ${widget.news[itemIndex].description}",
                            style: GoogleFonts.roboto(
                                fontSize: 20,
                                // fontWeight: FontWeight,
                                color: Colors.black45)),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 250,
                      color: Colors.blueAccent,
                      child: ListTile(
                          leading: Icon(Icons.link),
                          title: Text(
                              "Source - ${widget.news[itemIndex].source.name}")),
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: DelayedDisplay(
                    delay: Duration(seconds: 5),
                    child: Container(
                      height: 270,
                      width: 270,
                      child: Lottie.asset('assets/swipeup.json'),
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
