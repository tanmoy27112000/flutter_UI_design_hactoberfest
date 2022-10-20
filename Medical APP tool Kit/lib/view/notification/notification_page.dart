import 'package:drsimple/services/get_services.dart';
import 'package:drsimple/variables/ui_variables.dart';
import 'package:drsimple/widgets/customapp_widgets.dart';
import 'package:drsimple/widgets/globalwidgets/global_container1.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/globalwidgets/global_text.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        color: screenbackgroundColor,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Stack(
            children: [
              const Positioned(
                child: GlobalConatainer1(
                  containerheight: 0.22,
                  textSize: 30,
                  textFamily: 'Intel',
                  textColor: mainThemeSecondryColor,
                  textValue: " Nachrichten",
                ),
              ),
              FutureBuilder(
                  future: Get.find<GetAPIServices>().getnNotifocation(),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.hasError) {
                      return Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.51),
                        child: loading(context),
                      );
                    } else if (snapshot.data == null) {
                      return Container();
                    } else if (snapshot.connectionState ==
                        ConnectionState.waiting) {
                      return Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.41),
                        child: loading(context),
                      );
                    } else {
                      return Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.15,
                        ),
                        child: ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: snapshot.data.length,
                          itemBuilder: (context, index) {
                            return Container(
                              //   height: MediaQuery.of(context).size.height * 0.12,
                              margin: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width * 0.04),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: mainThemeSecondryColor,
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        const Color.fromARGB(255, 185, 184, 184)
                                            .withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: ExpandablePanel(
                                  header: Row(
                                    children: [
                                      const NotificationCircularIcon(
                                          image: 'assets/images/message.png'),
                                      CustomText(
                                        text: snapshot.data[index]
                                            ["created_at"],
                                        textColor: myTextColor,
                                        fontSize: 0.02,
                                      ),
                                    ],
                                  ),
                                  expanded: CustomText(
                                    fontSize: 0.021,
                                    text: snapshot.data[index]["message"],
                                    textColor:
                                        Color.fromARGB(255, 105, 105, 105),
                                    padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          0.24,
                                      right: MediaQuery.of(context).size.width *
                                          0.04,
                                      bottom:
                                          MediaQuery.of(context).size.height *
                                              0.013,
                                    ),
                                  ),
                                  collapsed: Container()),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                              height: 15,
                            );
                          },
                        ),
                      );
                    }
                  }),
            ],
          ),
        ),
      ),
    ));
  }
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class NotificationTiles extends StatelessWidget {
  const NotificationTiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: mainThemeSecondryColor,
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 185, 184, 184).withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: ListTile(
          leading:
              const NotificationCircularIcon(image: 'assets/images/doc.png'),
          title: textWidget(
            textValue: 'Das Rezept ist fertig ',
            colorValue: myTextColor,
            familyValue: 'Intel',
          ),
          subtitle: textWidget(
              textValue: 'Das Rezept ist fertig ',
              colorValue: Color(
                contentGrey,
              ),
              familyValue: 'Intel'),
          trailing: Wrap(
            children: [
              Column(
                children: [
                  const Image(image: AssetImage('assets/images/arrowDown.png')),
                  const SizedBox(height: 10),
                  textWidget(
                      textValue: "8:00",
                      colorValue: Color(
                        contentGrey,
                      ),
                      familyValue: 'Intel')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NotificationCircularIcon extends StatelessWidget {
  const NotificationCircularIcon({Key? key, required this.image})
      : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.01,
        bottom: MediaQuery.of(context).size.height * 0.01,
        left: MediaQuery.of(context).size.width * 0.04,
        right: MediaQuery.of(context).size.width * 0.04,
      ),
      child: Stack(
        children: [
          CircleAvatar(
            backgroundColor: mainThemeColor.withOpacity(0.24),
            radius: MediaQuery.of(context).size.height * 0.038,
          ),
          Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.02,
                top: MediaQuery.of(context).size.height * 0.011,
              ),
              child: Image(
                image: AssetImage(image),
                height: MediaQuery.of(context).size.height * 0.055,
              )),
        ],
      ),
    );
  }
}
