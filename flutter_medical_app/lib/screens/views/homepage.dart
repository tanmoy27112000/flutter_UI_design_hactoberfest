import 'package:flutter/material.dart';
import 'package:flutter_medical_app/screens/views/video_player_page.dart';
import 'package:flutter_medical_app/utils/colors.dart';

class HomePage extends StatelessWidget {
  final List videos = [
    {'name': "Medical Device video1", 'type': "Training Lesson"},
    {'name': "Medical Device video2", 'type': "Training Lesson"},
    {'name': "Medical Device video3", 'type': "Training Lesson"},
  ];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          _buildTopPart(height),
          _buildBottomPart(height, width),
        ],
      ),
    );
  }

  Positioned _buildBottomPart(double height, double width) {
    return Positioned(
      top: height * 0.35 - 20,
      left: 0.0,
      right: 0.0,
      bottom: 0.0,
      child: Container(
        height: height * 0.65,
        padding: EdgeInsets.only(top: 20, left: 10, right: 10),
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Medical procedure",
                    style: TextStyle(
                      color: AppColor.darkBlue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      color: AppColor.teal,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomContainer(
                    text: "Medical Learning 1",
                    color1: AppColor.teal,
                    color2: AppColor.lightTeal,
                    icon: Icons.post_add_outlined,
                  ),
                  CustomContainer(
                    text: "Surgical Procedure",
                    color1: AppColor.darkOrange2,
                    color2: AppColor.darkOrange1,
                    icon: Icons.post_add_outlined,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomContainer(
                    text: "Training Lesson",
                    color1: AppColor.lightOrange2,
                    color2: AppColor.lightOrange1,
                    icon: Icons.post_add_outlined,
                  ),
                  CustomContainer(
                    text: "Daily Workshop",
                    color1: Colors.blue,
                    color2: Colors.blue.shade300,
                    icon: Icons.post_add_outlined,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Videos",
                      style: TextStyle(
                        color: AppColor.darkBlue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                        color: AppColor.teal,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                height: 130,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 20);
                  },
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => VideoPlayer()));
                      },
                      child: Container(
                        padding: EdgeInsets.only(
                          left: 10,
                          bottom: 20,
                        ),
                        alignment: Alignment.bottomLeft,
                        width: width - 100,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.arrow_right,
                                color: AppColor.darkOrange2,
                                size: 40,
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  videos[index]['name'],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  videos[index]['type'],
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Positioned _buildTopPart(double height) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      bottom: height * 0.65,
      child: Container(
        height: height * 0.3,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/header_background.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 10,
            right: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                  ),
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Icon(
                        Icons.notifications,
                        color: Colors.grey.shade400,
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Hi, Good Evening",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                "Genevieve Jalin",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 40,
                child: TextField(
                  showCursor: false,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                    hintText: "Enter your Keyword",
                    suffixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    hintStyle: TextStyle(
                      fontSize: 12,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final Color color1;
  final Color color2;
  final String text;
  final IconData icon;
  const CustomContainer({
    required this.color1,
    required this.color2,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [color1, color2],
        ),
      ),
      height: height * 0.2,
      // width = half of its width - 15 means padding on left is 10 and 5 on right
      width: width / 2 - 15,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(0.1),
            ),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
