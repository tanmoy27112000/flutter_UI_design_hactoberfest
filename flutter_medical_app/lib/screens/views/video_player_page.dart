import 'package:flutter/material.dart';
import 'package:flutter_medical_app/utils/colors.dart';

class VideoPlayer extends StatelessWidget {
  final List _videos = [
    {
      'name': "Young Handsome Physician in a medical robe",
      'time': "10 min",
    },
    {
      'name': "Introduction to surgical products",
      'time': "10 min",
    },
    {
      'name': "How to become a Medical Editor",
      'time': "10 min",
    },
    {
      'name': "Getinge Launches New Surgical Lighting",
      'time': "10 min",
    },
    {
      'name': "Introduction to surgical products",
      'time': "10 min",
    },
    {
      'name': "Young Handsome Physician in a medical robe",
      'time': "10 min",
    },
    {
      'name': "Young Handsome Physician in a medical robe",
      'time': "10 min",
    },
    {
      'name': "Young Handsome Physician in a medical robe",
      'time': "10 min",
    },
    {
      'name': "Young Handsome Physician in a medical robe",
      'time': "10 min",
    },
    {
      'name': "Young Handsome Physician in a medical robe",
      'time': "10 min",
    },
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            height: size.height * 0.3,
            width: size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://st2.depositphotos.com/4126039/8433/i/600/depositphotos_84339184-stock-photo-group-of-veterinarian-surgery-in.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 10),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.keyboard_arrow_left_outlined,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(10),
                  height: 100,
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              _videos[index]['name'],
                              style: TextStyle(
                                color: AppColor.greyBlack,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(_videos[index]['time']
                                // style: TextStyle(

                                //   fontSize: 18,
                                //   fontWeight: FontWeight.bold,
                                // ),
                                )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.fromLTRB(40, 0, 10, 0),
        width: size.width,
        height: 50,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColor.darkOrange2,
              AppColor.darkOrange1,
            ],
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Text(
          "Next Video",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
