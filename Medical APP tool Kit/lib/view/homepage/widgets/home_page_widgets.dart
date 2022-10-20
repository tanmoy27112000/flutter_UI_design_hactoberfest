import 'package:drsimple/view/appoinment%20type/appointment_type.dart';
import 'package:drsimple/view/notification/notification_page.dart';
import 'package:drsimple/view/receipthistory/receipt_history_page.dart';
import 'package:drsimple/view/referral_historypage/referral_history_page.dart';
import 'package:drsimple/view/request%20status/request_status.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../variables/ui_variables.dart';
import '../../../widgets/customapp_widgets.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({Key? key}) : super(key: key);

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
        child: Padding(
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
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
                  ),
                ],
              )
            ],
          ),
        ));
  }
}

class HomePageContainers extends StatelessWidget {
  const HomePageContainers({Key? key, this.Image, this.title})
      : super(key: key);
  final Image;
  final title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.02),
      height: MediaQuery.of(context).size.height * 0.21,
      width: MediaQuery.of(context).size.width * 0.41,
      decoration: BoxDecoration(
        color: mainThemeSecondryColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image,
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.02),
            child: CustomText(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.01),
              alignment: Alignment.center,
              textAlign: TextAlign.center,
              text: title,
              textColor: myTextColor,
              fontSize: 0.017,
              fontWeigth: FontWeight.w600,
            ),
          )
        ],
      ),
    );
    ;
  }
}

homepageMainCard(context) {
  return Positioned(
    top: MediaQuery.of(context).size.height * 0.12,
    left: MediaQuery.of(context).size.width * 0.05,
    right: MediaQuery.of(context).size.width * 0.05,
    child: Container(
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(
        color: mainThemeSecondryColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.004),
                alignment: Alignment.center,
                text: "Gemeinschaftspraxis Leverkusen",
                fontSize: 0.022,
                fontWeigth: FontWeight.w500,
                textColor: myTextColor,
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.012),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/homeicon.png'),
                Padding(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.05),
                  child: Column(
                    children: const [
                      CustomText(
                        alignment: Alignment.center,
                        text: 'Dr. med. Nowak & ',
                        fontSize: 0.020,
                      ),
                      CustomText(
                        alignment: Alignment.center,
                        text: 'Dr. med. Thomalla',
                        fontSize: 0.020,
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

homePageGrideContainer(context) {
  return Positioned(
    child: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.41,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(() => const ReceiptHistory());
                  },
                  child: HomePageContainers(
                    Image: Image.asset("assets/icons/report.png",
                        height: MediaQuery.of(context).size.height * 0.08),
                    title: "Rezept bestellen",
                  ),
                ),
                ////////////////////////////////////

                GestureDetector(
                  onTap: () {
                    Get.to(() => const ReferralHistory());
                  },
                  child: HomePageContainers(
                    Image: Image.asset("assets/icons/med.png",
                        height: MediaQuery.of(context).size.height * 0.08),
                    title: "Überweisung \nbestellen",
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //////////////////////////////////
                GestureDetector(
                  onTap: () {
                    Get.to(() => const AppoinmentType());
                  },
                  child: HomePageContainers(
                    Image: Image.asset("assets/icons/calander.png",
                        height: MediaQuery.of(context).size.height * 0.08),
                    title: "Termin anfragen",
                  ),
                ),
                ////////////////////////////////////////
                GestureDetector(
                  onTap: () {
                    Get.to(() => const RequestStatus());
                  },
                  child: HomePageContainers(
                    Image: Image.asset("assets/icons/appoin.png",
                        height: MediaQuery.of(context).size.height * 0.08),
                    title: "Meine Anfragen",
                  ),
                ),
              ],
            )
          ],
        )),
  );
}
