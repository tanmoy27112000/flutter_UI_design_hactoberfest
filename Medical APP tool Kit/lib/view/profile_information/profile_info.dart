import 'package:drsimple/services/get_services.dart';
import 'package:drsimple/services/login_service.dart';
import 'package:drsimple/variables/ui_variables.dart';
import 'package:drsimple/view/login%20screen/welcome_screen.dart';
import 'package:drsimple/view/profile_information/hospital_info/hospital_info.dart';
import 'package:drsimple/view/profile_information/terms&privacy/privacy.dart';
import 'package:drsimple/view/profile_information/terms&privacy/terms.dart';
import 'package:drsimple/view/profile_information/user%20profile/user_profile.dart';

import 'package:drsimple/widgets/customapp_widgets.dart';
import 'package:drsimple/widgets/profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileInfoScreen extends StatelessWidget {
  const ProfileInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: screenbackgroundColor,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              const ProfilePageContainer(),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.29),
                child: Column(
                  children: [
                    CustomText(
                      alignment: Alignment.centerLeft,
                      fontSize: 0.024,
                      fontWeigth: FontWeight.w500,
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 0.01,
                        left: MediaQuery.of(context).size.width * 0.1,
                      ),
                      text: "Menü",
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => HospitalAddressScreen());
                      },
                      child: settingsButtons(
                        context,
                        "Praxis Informationen",
                        Icons.local_hospital,
                      ),
                    ),
                    ////////////
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const UserProfileInfoScreen());
                      },
                      child: settingsButtons(
                          context, "Persönliche Angaben", Icons.person),
                    ),
                    ///////
                    GestureDetector(
                      onTap: () {
                        Get.to(const Terms());
                      },
                      child: settingsButtons(context, "Haftungsausschluss",
                          Icons.menu_book_rounded),
                    ),
                    /////////////
                    GestureDetector(
                        onTap: () {
                          Get.to(const Privacy());
                        },
                        child: settingsButtons(
                            context, "Datenschutz", Icons.security)),
                    GestureDetector(
                        onTap: () async {
                          await Get.find<LoginAPiService>().logout();
                          Get.offAll(() => const WelcomeScreen());
                        },
                        child:
                            settingsButtons(context, "Ausloggen", Icons.login)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
