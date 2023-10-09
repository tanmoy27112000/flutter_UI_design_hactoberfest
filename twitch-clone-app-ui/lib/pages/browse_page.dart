
import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:twitch_app/json/browse_json.dart';
import 'package:twitch_app/json/following_json.dart';
import 'package:twitch_app/theme/colors.dart';

class BrowsePage extends StatefulWidget {
  const BrowsePage({ Key? key }) : super(key: key);

  @override
  State<BrowsePage> createState() => _BrowsePageState();
}

class _BrowsePageState extends State<BrowsePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: PreferredSize(child: getAppBar(),preferredSize: Size.fromHeight(90),),
        body: getBody(),
      ),
    );
  }
  Widget getAppBar(){
    return AppBar(
      elevation: 0,
      backgroundColor: bgColor,
      flexibleSpace: Padding(
        padding: const EdgeInsets.only(left: 10,right:10),
        child: Row(
          children: [
            Text("Browse",style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: white
            ),),

          ],
        ),
      ),
      bottom: PreferredSize(child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: TabBar(
            indicatorColor: primary,
            indicatorWeight: 3,
            isScrollable: true,
            tabs: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text("Categories",style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600
                ),),
              ),
               Padding(
                 padding: const EdgeInsets.all(12.0),
                 child: Text("Live Channels",style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600
              ),),
               )
            ],
          ),
        ),
      ), 
      
      preferredSize: Size.fromHeight(40)),
    );
  }
  Widget getBody(){
    return TabBarView(children: [
      getCategories(),
      getLiveChannels()
    ]);
  }
  Widget getCategories(){
    return SingleChildScrollView(
      child: Column(
        children: List.generate(categories.length, (index) {
          List tags = categories[index]['tags'];
          return Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,bottom: 10),
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 80,
                  decoration: BoxDecoration(
                    color: primary,
                    image: DecorationImage(image: NetworkImage(categories[index]['img_video']),fit: BoxFit.cover)
                  ),
                ),
                SizedBox(width: 15,),
                Flexible(
                  child: Container(
                    height: 80,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5,bottom: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Text(categories[index]['name'],style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: white
                            ),maxLines: 1,),
                             Text("${categories[index]['viewers']} viewers",style: TextStyle(
                              fontSize: 14,
                             
                              color: white.withOpacity(0.5)
                            ),maxLines: 1,),
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
            ),
          );
        }),
      ),
    );
  }
 
   Widget getLiveChannels() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
   
      child: Column(
        children: List.generate(following_json.length, (index) {
          List tags = following_json[index]['tags'];
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: size.width,
                  height: 200,
                 
                  decoration: BoxDecoration(color: primary),
                  child: Stack(
                    children: [
                      Container(
                        width: size.width,
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    following_json[index]['img_video']),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        width: size.width,
                        height: 200,
                        decoration: BoxDecoration(color: black.withOpacity(0.2)),
                      ),
                      Container(
                        width: size.width,
                        height: 200,
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
                                    "${following_json[index]['viewers']} viewers",
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
                
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         CircleAvatar(
                        backgroundImage: NetworkImage(
                      following_json[index]['img_profile'],
                    )),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          following_json[index]['name'],
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
                            following_json[index]['title'],
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
                          following_json[index]['type'],
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
                      ],
                    ),
                    Icon(
                      Entypo.dots_three_vertical,
                      color: white.withOpacity(0.5),
                      size: 20,
                    )
                  ],
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}