import 'package:drsimple/main.dart';
import 'package:drsimple/services/get_services.dart';
import 'package:drsimple/view/notification/notification_page.dart';
import 'package:drsimple/widgets/customapp_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../variables/ui_variables.dart';

Widget settingOptionIcon(context) {
  return SizedBox(
      height: MediaQuery.of(context).size.height * 0.072,
      width: MediaQuery.of(context).size.width * 0.13,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/icons/goto_icon.png',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height * 0.02,
            alignment: Alignment.center,
          ),
        ],
      ));
}

Widget settingsButtons(context, text, icon) {
  return Padding(
    padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.015,
        left: MediaQuery.of(context).size.width * 0.05),
    // outer padding

    child: Row(
      children: [
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: mainThemeSecondryColor,
              boxShadow: [
                BoxShadow(
                  color:
                      const Color.fromARGB(255, 208, 208, 208).withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            //setting name CONTAINER HEIGTH AND WITH
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width * 0.04,
                      MediaQuery.of(context).size.height * 0.02,
                      0,
                      0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                right:
                                    MediaQuery.of(context).size.width * 0.03),
                            child: Icon(
                              icon,
                              color: mainThemeColor,
                              size: MediaQuery.of(context).size.height * 0.041,
                            ),
                          ),
                          Text("$text",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: myTextColor,
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.020,
                              ))),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width * 0.05),
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: myTextColor,
                          size: MediaQuery.of(context).size.height * 0.025,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
        //  settingOptionIcon(context)
      ],
    ),
  );
}

class ProfilePageContainer extends StatelessWidget {
  const ProfilePageContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.26,
        decoration: const BoxDecoration(
          color: mainThemeColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03,
                  left: MediaQuery.of(context).size.width * 0.06,
                  right: MediaQuery.of(context).size.width * 0.06),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Wrap(
                    children: [
                      Image.asset('assets/images/logo.png'),
                      const Text("Dr.Simple",
                          style: TextStyle(
                              fontSize: 30,
                              color: mainThemeSecondryColor,
                              fontFamily: 'Inter')),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const NotificationPage());
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.12,
                      decoration: BoxDecoration(
                          color: mainThemeSecondryColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(
                        Icons.notifications,
                        color: mainThemeColor,
                        size: MediaQuery.of(context).size.height * 0.042,
                      ),
                    ),
                  )
                ],
              ),
            ),
            sharedPreferences.getString("name") != null
                ? CustomText(
                    alignment: Alignment.centerLeft,
                    textAlign: TextAlign.start,
                    fontSize: 0.03,
                    textColor: mainThemeSecondryColor,
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.04,
                      left: MediaQuery.of(context).size.width * 0.1,
                    ),
                    text: "Hallo ${sharedPreferences.getString("name")}",
                  )
                : FutureBuilder(
                    future: Get.find<GetAPIServices>().getUserInfo(),
                    builder: (context, AsyncSnapshot snapshot) {
                      if (snapshot.hasError) {
                        return CustomText(
                          alignment: Alignment.centerLeft,
                          textAlign: TextAlign.start,
                          fontSize: 0.027,
                          textColor: mainThemeSecondryColor,
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.04,
                            left: MediaQuery.of(context).size.width * 0.1,
                          ),
                          text: "",
                        );
                      } else if (snapshot.connectionState ==
                          ConnectionState.waiting) {
                        return CustomText(
                          alignment: Alignment.centerLeft,
                          textAlign: TextAlign.start,
                          fontSize: 0.027,
                          textColor: mainThemeSecondryColor,
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.04,
                            left: MediaQuery.of(context).size.width * 0.1,
                          ),
                          text: "",
                        );
                      } else {
                        return CustomText(
                          alignment: Alignment.centerLeft,
                          textAlign: TextAlign.start,
                          fontSize: 0.03,
                          textColor: mainThemeSecondryColor,
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.04,
                            left: MediaQuery.of(context).size.width * 0.1,
                          ),
                          text:
                              "Hallo ${sharedPreferences.getString("name") ?? snapshot.data[0]["name"] ?? ""}",
                        );
                      }
                    })
          ],
        ));
  }
}
