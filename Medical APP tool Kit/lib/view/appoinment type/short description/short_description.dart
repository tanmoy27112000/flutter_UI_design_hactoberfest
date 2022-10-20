import 'package:drsimple/services/appoinment_service.dart';
import 'package:drsimple/widgets/customapp_widgets.dart';
import 'package:drsimple/widgets/globalwidgets/global_container1.dart';
import 'package:drsimple/widgets/short_description_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../variables/ui_variables.dart';

class ShortDesctiptionAppoinment extends StatefulWidget {
  const ShortDesctiptionAppoinment({Key? key}) : super(key: key);

  @override
  State<ShortDesctiptionAppoinment> createState() =>
      _ShortDesctiptionAppoinmentState();
}

class _ShortDesctiptionAppoinmentState
    extends State<ShortDesctiptionAppoinment> {
  TextEditingController shortDescription = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: screenbackgroundColor,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            const Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: GlobalConatainer1(
                containerheight: 0.22,
                textSize: 30,
                textFamily: 'Intel',
                textColor: mainThemeSecondryColor,
                textValue: "kurze Beschreibung",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.16),
              child: Column(
                children: [
                  ShortDescriptionFeild(
                    controller: shortDescription,
                    width: MediaQuery.of(context).size.width * 0.9,
                  ),
                  CustomAppButton(
                    Onclick: shortDescription.text == ""
                        ? null
                        : () {
                            Get.find<AppoinmentService>().appointmentCreate(
                                dr_id: Get.arguments[0],
                                reason: shortDescription.text);
                          },
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.3),
                    text: "Weiter",
                    textColor: mainThemeSecondryColor,
                    color: mainThemeColor,
                    width: MediaQuery.of(context).size.width * 0.84,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
