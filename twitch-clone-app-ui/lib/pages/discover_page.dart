import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:twitch_app/json/discover_json.dart';
import 'package:twitch_app/theme/colors.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: getBody(),
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Discover",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: white),
          ),
          SizedBox(
            height: 15,
          ),
          getSliderLists(),
          SizedBox(
            height: 25,
          ),
          getSectionTwo(),
          SizedBox(
            height: 25,
          ),
          getSectionThree(),
          SizedBox(
            height: 25,
          ),
          getSectionFour(),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }

  Widget getSliderLists() {
    var size = MediaQuery.of(context).size;
    return CarouselSlider(
        items: List.generate(discover_json_one.length, (index) {
          List tags = discover_json_one[index]['tags'];
          return Column(
            children: [
              getSliderImages(discover_json_one[index]),
              Expanded(
                child: Container(
                  width: size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              discover_json_one[index]['name'],
                              style: TextStyle(
                                  color: white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              discover_json_one[index]['type'],
                              style: TextStyle(
                                  fontSize: 16, color: white.withOpacity(0.7)),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: List.generate(tags.length, (index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: white.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8, right: 8, top: 2, bottom: 2),
                                  child: Text(
                                    tags[index],
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        color: white.withOpacity(0.7)),
                                  ),
                                ),
                              ),
                            );
                          }),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          );
        }),
        options: CarouselOptions(height: 240));
  }

  Widget getSliderImages(item) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 180,
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Stack(
        children: [
          Container(
            width: size.width,
            height: 180,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(item['img_video']), fit: BoxFit.cover)),
          ),
          Container(
            width: size.width,
            height: 180,
            decoration: BoxDecoration(color: black.withOpacity(0.2)),
          ),
          Container(
            width: size.width,
            height: 180,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(4)),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        "LIVE",
                        style: TextStyle(
                            color: white, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(4)),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        "${item['viewers']} viewers",
                        style: TextStyle(color: white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget getSectionTwo() {
    var size = MediaQuery.of(context).size;
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: List.generate(discover_icons.length, (index) {
        return Container(
          width: (size.width - 32) / 2,
          height: 40,
          decoration: BoxDecoration(
              color: primary, borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  discover_icons[index]['label'],
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold, color: white),
                ),
                Icon(
                  discover_icons[index]['icon'],
                  color: white,
                  size: 20,
                )
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget getSectionThree() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Live channels we think you'll like",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: white),
        ),
        SizedBox(
          height: 15,
        ),
        getSectionThreeLists()
      ],
    );
  }

  Widget getSectionThreeLists() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(discover_json_three.length, (index) {
          List tags = discover_json_three[index]['tags'];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: size.width * 0.7,
                height: 150,
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(color: primary),
                child: Stack(
                  children: [
                    Container(
                      width: size.width,
                      height: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  discover_json_three[index]['img_video']),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      width: size.width,
                      height: 150,
                      decoration: BoxDecoration(color: black.withOpacity(0.2)),
                    ),
                    Container(
                      width: size.width,
                      height: 150,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.circular(4)),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  "LIVE",
                                  style: TextStyle(
                                      color: white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: black.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(4)),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text(
                                  "${discover_json_three[index]['viewers']} viewers",
                                  style: TextStyle(color: white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                      backgroundImage: NetworkImage(
                    discover_json_three[index]['img_profile'],
                  )),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        discover_json_three[index]['name'],
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: white),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Container(
                        width: 200,
                        child: Text(
                          discover_json_three[index]['title'],
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 15,
                              overflow: TextOverflow.clip,
                              color: white.withOpacity(0.5)),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        discover_json_three[index]['type'],
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 15,
                            overflow: TextOverflow.clip,
                            color: white.withOpacity(0.5)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: List.generate(tags.length, (index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: white.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 8, right: 8, top: 2, bottom: 2),
                                child: Text(
                                  tags[index],
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: white.withOpacity(0.7)),
                                ),
                              ),
                            ),
                          );
                        }),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Entypo.dots_three_vertical,
                    color: white.withOpacity(0.5),
                    size: 20,
                  )
                ],
              )
            ],
          );
        }),
      ),
    );
  }

  Widget getSectionFour() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Categories we think you'll like",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: white),
        ),
        SizedBox(
          height: 15,
        ),
        getSectionFourLists()
      ],
    );
  }

  Widget getSectionFourLists() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(discover_json_four.length, (index) {
          List tags = discover_json_four[index]['tags'];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  width: size.width/3,
                  height: 180,
                  decoration: BoxDecoration(
                    color: primary,
                    image: DecorationImage(image: NetworkImage(discover_json_four[index]['img_video']),fit: BoxFit.cover)
                  ),
                ),
                SizedBox(height: 8,),
                Text(discover_json_four[index]['name'],style: TextStyle(
                  fontSize: 17,
                  color: white,
                  fontWeight:FontWeight.bold
                ),),
                 SizedBox(height: 2,),
                 Row(children: [
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.redAccent
                    ),
                  ),
                  SizedBox(width: 5,),
                  Text(discover_json_four[index]['viewers'],style: TextStyle(
                    color: white.withOpacity(0.5)
                  ),),
                 
                 
                 ],),
                 SizedBox(height: 5,),
                   Container(
                    width: size.width/3,
                     child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                       child: Row(
                              children: List.generate(tags.length, (index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: white.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(12)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8, right: 8, top: 2, bottom: 2),
                                      child: Text(
                                        tags[index],
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            color: white.withOpacity(0.7)),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                            ),
                     ),
                   )
            ],
          );
        }),
      ),
    );
  }
}
