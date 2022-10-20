import 'package:drsimple/services/appoinment_service.dart';
import 'package:drsimple/services/post_service.dart';
import 'package:drsimple/widgets/customapp_widgets.dart';
import 'package:drsimple/widgets/globalwidgets/global_container1.dart';
import 'package:drsimple/widgets/short_description_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../variables/ui_variables.dart';

class CreateRecipePage extends StatefulWidget {
  const CreateRecipePage({Key? key}) : super(key: key);

  @override
  State<CreateRecipePage> createState() => _CreateRecipePageState();
}

class _CreateRecipePageState extends State<CreateRecipePage> {
  TextEditingController _nameContr = TextEditingController();
  TextEditingController _powerContr = TextEditingController();
  final formValidationkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formValidationkey,
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
                    textValue: " Geben Sie Medikament \nand Dosierung an",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.18),
                  child: Column(
                    children: [
                      CustomAppTextFeild(
                        controller: _nameContr,
                        width: MediaQuery.of(context).size.width * 0.9,
                        hintText: "z. B. Ramipril",
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.023),
                        child: CustomAppTextFeild(
                          controller: _powerContr,
                          width: MediaQuery.of(context).size.width * 0.9,
                          hintText: "z.B. 5mg",
                        ),
                      ),
                      CustomAppButton(
                        Onclick: _powerContr.text == "" || _nameContr.text == ""
                            ? null
                            : () {
                                Get.find<PostApiService>().createRecipe(
                                    name: _nameContr.text,
                                    power: _powerContr.text);
                              },
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.48),
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
      ),
    ));
  }
}
