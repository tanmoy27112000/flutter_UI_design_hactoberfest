import 'package:drsimple/services/appoinment_service.dart';
import 'package:drsimple/services/post_service.dart';
import 'package:drsimple/widgets/customapp_widgets.dart';
import 'package:drsimple/widgets/globalwidgets/global_container1.dart';
import 'package:drsimple/widgets/short_description_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../variables/ui_variables.dart';

class CreateReferalPage extends StatefulWidget {
  const CreateReferalPage({Key? key}) : super(key: key);

  @override
  State<CreateReferalPage> createState() => _CreateReferalPageState();
}

class _CreateReferalPageState extends State<CreateReferalPage> {
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                  textValue: "Bitte geben Sie den Arzt \nzur Überweisung an",
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.18),
                child: Column(
                  children: [
                    CustomAppTextFeild(
                      controller: _textEditingController,
                      width: MediaQuery.of(context).size.width * 0.9,
                      hintText: "z. B. Neurologe",
                    ),
                    CustomAppButton(
                      Onclick: _textEditingController.text == ""
                          ? null
                          : () {
                              Get.find<PostApiService>().createReferal(
                                  name: _textEditingController.text);
                            },
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.6),
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
      ),
    ));
  }
}
