import 'package:drsimple/main.dart';
import 'package:drsimple/services/get_services.dart';
import 'package:drsimple/services/profile_update_service.dart';
import 'package:drsimple/view/login%20screen/welcome_screen.dart';
import 'package:drsimple/widgets/customapp_widgets.dart';
import 'package:drsimple/widgets/profile%20info%20widgets/user_info_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../variables/ui_variables.dart';
import '../../../widgets/globalwidgets/global_container1.dart';

class UserProfileInfoScreen extends StatelessWidget {
  const UserProfileInfoScreen({Key? key}) : super(key: key);

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
                    textValue: "Persönliche Angaben")),
            FutureBuilder(
                future: Get.find<GetAPIServices>().getUserInfo(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.hasError) {
                    return const Text('Something went wrong');
                  }

                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.21),
                      child: loading(context),
                    );
                  } else {
                    return Positioned(
                        child: Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.23,
                      ),
                      child: Column(
                        children: [
                          UserProfileInfoCard(
                            title: "Vorname, Nachname",
                            value: "${snapshot.data[0]["name"]}",
                          ),
                          const CustomDivider(),
                          UserProfileInfoCard(
                            title: "Geburtstag",
                            value: "${snapshot.data[0]["dob"]}",
                          ),
                          const CustomDivider(),
                          UserPhoneNumber(
                            value: sharedPreferences.get("number").toString(),
                          ),
                          const CustomDivider(),
                          PasswordInfo(
                              phoneNumber:
                                  sharedPreferences.get("number").toString(),
                              value: "****************"),
                          const CustomDivider(),
                          CustomAppButton(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.17),
                            Onclick: () {
                              Get.find<UpdateprofileService>().deleteAccount();
                            },
                            text: "Account löschen",
                            titleSize:
                                MediaQuery.of(context).size.height * 0.024,
                            color: Colors.transparent,
                            textColor: Colors.red,
                          )
                        ],
                      ),
                    ));
                  }
                }),
          ],
        ),
      ),
    ));
  }
}
