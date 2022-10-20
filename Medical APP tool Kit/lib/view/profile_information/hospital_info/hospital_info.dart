import 'package:drsimple/variables/ui_variables.dart';
import 'package:drsimple/widgets/profile%20info%20widgets/user_info_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/profile info widgets/hospital_info_wigets.dart';

class HospitalAddressScreen extends StatelessWidget {
  HospitalAddressScreen({Key? key}) : super(key: key);

  List timing = [
    "Mo: 8:00 - 11:00 & 16:00 - 18:00",
    "Di: 8:00 - 11:00 & 16:00 - 18:00",
    "Mi: 8:00 - 11:00",
    "Do: 8:00 - 11:00 & 16:00 - 18:00",
    "Fr: 8:00 - 11:00",
    "Sa: Geschlossen",
    "So: Geschlossen",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: const Icon(
                Icons.arrow_back_ios_rounded,
                color: myTextColor,
                size: 30,
              ),
            ),
            backgroundColor: mainThemeSecondryColor,
            elevation: 0,
          ),
          backgroundColor: mainThemeSecondryColor,
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.03,
                    horizontal: MediaQuery.of(context).size.width *
                        screenPaddingHorizontal),
                child: Column(
                  children: [
                    AddressContainer(),
                    const ContactContainer(
                      email: "rezept@praxis-thomalla-nowak.de",
                      phone: " 021 7176 5151",
                    ),
                    TimingContainer(
                      timiglist: timing,
                    )
                  ],
                )),
          )),
    );
  }
}
