import 'package:amazon_clone/utils/size_config.dart';
import 'package:amazon_clone/view/menu/order_list_page.dart';
import 'package:flutter/material.dart';

import '../../componants/Buttons/custom_button.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 131, 217, 226),
                Color.fromARGB(150, 164, 229, 207),
                Color.fromARGB(100, 233, 248, 243),
                // Color(0x0086d9e0),
                // Color(0x00a3e6cf),
              ],
            ),
          ),
        ),
        //widgets @@@@@@@@@
        Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/menu_page.jpeg"),
                  ),
                ),
              ),
            )
          ],
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            width: MySizeConfig.safeBlockHorizontal! * 100,
            height: MySizeConfig.safeBlockVerticalWithOutAppBar! * 10,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomRoundedButton(
                  width: MySizeConfig.safeBlockHorizontal! * 15,
                  height: MySizeConfig.safeBlockVerticalWithOutAppBar! * 4.5,
                  text: 'Orders',
                  radiusCount: 7,
                ),
                SizedBox(
                  width: MySizeConfig.safeBlockHorizontal! * 2,
                ),
                CustomRoundedButton(
                  width: MySizeConfig.safeBlockHorizontal! * 22,
                  height: MySizeConfig.safeBlockVerticalWithOutAppBar! * 4.5,
                  text: 'Buy Again',
                  radiusCount: 7,
                ),
                SizedBox(
                  width: MySizeConfig.safeBlockHorizontal! * 2,
                ),
                CustomRoundedButton(
                  width: MySizeConfig.safeBlockHorizontal! * 18,
                  height: MySizeConfig.safeBlockVerticalWithOutAppBar! * 4.5,
                  text: 'Account',
                  radiusCount: 7,
                ),
                SizedBox(
                  width: MySizeConfig.safeBlockHorizontal! * 2,
                ),
                CustomRoundedButton(
                  width: MySizeConfig.safeBlockHorizontal! * 12,
                  height: MySizeConfig.safeBlockVerticalWithOutAppBar! * 4.5,
                  text: 'Lists',
                  radiusCount: 7,
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}



/**
 * 
 * 
 * 
 * ClipPath(
          clipper: MycustomClipper(),
          child: Container(
            decoration: BoxDecoration(color: Colors.black),
            width: 500,
            height: 500,
            child: Text('data'),
          ),
        ),
 */