import 'package:amazon_clone/utils/size_config.dart';
import 'package:flutter/material.dart';

import '../../componants/Buttons/custom_button.dart';
import '../../componants/custom_text_field.dart';
import '../../componants/custom_textfield_withflag.dart';
import '../search/search_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.center,
              colors: [
                Color.fromARGB(255, 9, 150, 165),
                Color.fromARGB(70, 51, 190, 206),

                Color.fromARGB(50, 233, 248, 243),
                // Color(0x0086d9e0),
                // Color(0x00a3e6cf),
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.center,
              colors: [
                Color.fromARGB(200, 164, 229, 207),
                Color.fromARGB(70, 164, 229, 207),

                Color.fromARGB(50, 233, 248, 243),
                // Color(0x0086d9e0),
                // Color(0x00a3e6cf),
              ],
            ),
          ),
        ),
        Positioned(
            top: 50,
            left: 0,
            right: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/amazonlogo.PNG',
                  width: MySizeConfig.safeBlockHorizontal! * 23,
                ),
                Image.asset(
                  'assets/icons/search_1.png',
                  width: MySizeConfig.safeBlockHorizontal! * 5,
                ),
              ],
            )),
        Positioned(
          top: 100,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Text(
                'Sign in for the best\nexperience',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: MySizeConfig.safeBlockVerticalWithOutAppBar! * 7,
              ),
              CustomRoundedButton(
                width: MySizeConfig.safeBlockHorizontal! * 97,
                height: MySizeConfig.safeBlockVerticalWithOutAppBar! * 6.2,
                text: 'Sign in',
                buttonColor: Color.fromARGB(255, 243, 206, 113),
                fontSize: 15,
                fontWeight: null,
                radiusCount: 0,
              ),
              SizedBox(
                height: 10,
              ),
              CustomRoundedButton(
                width: MySizeConfig.safeBlockHorizontal! * 97,
                height: MySizeConfig.safeBlockVerticalWithOutAppBar! * 6.2,
                text: 'Sign in',
                buttonColor: Color.fromARGB(255, 221, 222, 224),
                fontSize: 15,
                fontWeight: null,
                radiusCount: 0,
              ),
              SizedBox(
                height: MySizeConfig.safeBlockVerticalWithOutAppBar! * 4,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/images/emtysplash1.PNG',
                          width: MySizeConfig.safeBlockHorizontal! * 17,
                        ),
                        Text(
                          'Check order status and track,\nchange or return items',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/images/emtysplash2.PNG',
                          width: MySizeConfig.safeBlockHorizontal! * 13.3,
                        ),
                        Text(
                          'Check order status and track,\nchange or return items',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/images/emtysplash3.PNG',
                          width: MySizeConfig.safeBlockHorizontal! * 13.3,
                        ),
                        Text(
                          'Check order status and track,\nchange or return items',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    ));
  }
}
