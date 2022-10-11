import 'dart:developer';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/Authentication/login.dart';
import 'package:news_app/Authentication/signup.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:news_app/Models/article.dart';
import 'package:news_app/newsfocus.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  List<article> business = [];
  List<article> entertainment = [];
  List<article> health = [];
  List<article> science = [];
  List<article> sports = [];
  List<article> technology = [];
  List<article> indian = [];
  bool isloading = true;
  void getnews() async {
    setState(() {
      isloading = true;
    });
    String key = "259b828085b847dfb8f883f0b866d5c4";

    var res = await http.get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?category=business&apiKey=${key}"));
    var res1 = await http.get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?category=entertainment&apiKey=${key}"));
    var res2 = await http.get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?category=health&apiKey=${key}"));
    var res3 = await http.get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?category=science&apiKey=${key}"));
    var res4 = await http.get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?category=sports&apiKey=${key}"));
    var res5 = await http.get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?category=technology&apiKey=${key}"));
    var res6 = await http.get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=in&apiKey=${key}"));

    if (res != null) {
      var res1 = jsonDecode(res.body);
      setState(() {
        res1["articles"].forEach((val) {
          business.add(article.fromJson(val));
        });
      });
    }

    if (res1 != null) {
      var resx = jsonDecode(res1.body);
      setState(() {
        resx["articles"].forEach((val) {
          entertainment.add(article.fromJson(val));
        });
      });
    }
    if (res2 != null) {
      var resx = jsonDecode(res2.body);
      setState(() {
        resx["articles"].forEach((val) {
          health.add(article.fromJson(val));
        });
      });
    }
    if (res3 != null) {
      var resx = jsonDecode(res3.body);
      setState(() {
        resx["articles"].forEach((val) {
          science.add(article.fromJson(val));
        });
      });
    }
    if (res4 != null) {
      var resx = jsonDecode(res4.body);
      setState(() {
        resx["articles"].forEach((val) {
          sports.add(article.fromJson(val));
        });
      });
    }
    if (res5 != null) {
      var resx = jsonDecode(res5.body);
      setState(() {
        resx["articles"].forEach((val) {
          technology.add(article.fromJson(val));
        });
      });
    }
    if (res6 != null) {
      var resx = jsonDecode(res6.body);
      setState(() {
        resx["articles"].forEach((val) {
          indian.add(article.fromJson(val));
        });
      });
    }
    // log("${news1}");
    setState(() {
      isloading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    getnews();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[200],
        title: isloading ? Text("Loading Your News Feed") : Text("Latest News"),
      ),
      body: isloading
          ? Center(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 270,
                  width: 270,
                  child: Lottie.asset('assets/waiting.json'),
                ),
                CircularProgressIndicator(),
              ],
            ))
          : Row(
              children: [
                SizedBox(width: w * 0.03),
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text("Business News",
                          style: GoogleFonts.raleway(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff14A989))),
                      builder(w, h, business),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Entertainment News",
                          style: GoogleFonts.raleway(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff14A989))),
                      builder(w, h, entertainment),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Health News",
                          style: GoogleFonts.raleway(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff14A989))),
                      builder(w, h, health),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Science News",
                          style: GoogleFonts.raleway(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff14A989))),
                      builder(w, h, science),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Sports News",
                          style: GoogleFonts.raleway(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff14A989))),
                      builder(w, h, sports),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Technology News",
                          style: GoogleFonts.raleway(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff14A989))),
                      builder(w, h, technology),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Indian News",
                          style: GoogleFonts.raleway(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff14A989))),
                      builder(w, h, indian),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }

  SizedBox builder(double w, double h, List news) {
    return SizedBox(
        height: 200,
        width: w / 1.07,
        child: ListView.builder(
            itemCount: news.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              newsfocus(index: index, news: news)));
                },
                child: Container(
                  height: 100,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          foregroundDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              colors: [
                                Colors.black,
                                Colors.transparent,
                                // Colors.transparent,
                                // Colors.black
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              stops: [0.2, 0.5],
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage("${news[index].urlToImage}"),
                              fit: BoxFit.fill,
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(bottom: 8.0, left: 10),
                            child: Text(
                              "${news[index].title}",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}
