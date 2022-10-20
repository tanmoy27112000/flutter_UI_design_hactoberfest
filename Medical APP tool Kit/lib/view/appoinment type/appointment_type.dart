import 'package:drsimple/view/appoinment%20type/choose%20doctor/choosedoctor_page.dart';
import 'package:drsimple/view/appoinment%20type/covid/covid_page.dart';

import 'package:drsimple/view/appoinment%20type/short%20description/short_discribtion_consult.dart';
import 'package:drsimple/widgets/globalwidgets/global_container1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../variables/ui_variables.dart';
import '../../widgets/customapp_widgets.dart';

class AppoinmentType extends StatelessWidget {
  const AppoinmentType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            const Positioned(
                top: 0,
                child: GlobalConatainer1(
                    containerheight: 0.15,
                    textSize: 20,
                    textFamily: 'Inter',
                    textColor: mainThemeSecondryColor,
                    textValue: "Bitte wählen Sie")),
            Positioned(
                child: Padding(
              padding: const EdgeInsets.only(top: 130, left: 20, right: 20),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppoinmentTypeButton(
                      title: "Akute Sprechstunde",
                      icon: Icons.directions_walk_rounded,
                      onClick: () {
                        Get.to(() => const ShortDesctiptionConsult());
                      },
                    ),
                    AppoinmentTypeButton(
                      title: "Regulärer Termin",
                      icon: Icons.calendar_today_outlined,
                      onClick: () {
                        Get.to(() => const ChooseDoctor());
                      },
                    ),
                    // AppoinmentTypeButton(
                    //   title: "Covid-19 Impftermin",
                    //   icon: Icons.medical_services_rounded,
                    //   onClick: () {
                    //     Get.to(() => const CovidPage());
                    //   },
                    // ),
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
    ));
  }
}

class AppoinmentTypeButton extends StatelessWidget {
  const AppoinmentTypeButton(
      {Key? key,
      required this.title,
      required this.icon,
      required this.onClick})
      : super(key: key);
  final title;
  final icon;
  final onClick;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.width * 0.04,
        ),
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.034),
        height: MediaQuery.of(context).size.width * 0.19,
        width: MediaQuery.of(context).size.width * 0.88,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: mainThemeSecondryColor,
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 208, 208, 208).withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.04),
              child: Icon(
                icon,
                color: mainThemeColor,
                size: MediaQuery.of(context).size.height * 0.049,
              ),
            ),
            CustomText(
              alignment: Alignment.centerLeft,
              text: title,
              textColor: myTextColor,
              fontSize: 0.023,
            ),
          ],
        ),
      ),
    );
  }
}
