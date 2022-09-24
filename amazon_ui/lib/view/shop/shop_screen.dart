import 'package:amazon_clone/componants/Buttons/custom_button.dart';
import 'package:amazon_clone/componants/Buttons/main_button.dart';
import 'package:amazon_clone/utils/colors.dart';
import 'package:amazon_clone/utils/size_config.dart';
import 'package:amazon_clone/view/widgets/location_widget.dart';
import 'package:flutter/material.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          LocationWidget(),
          SizedBox(
            height: MySizeConfig.safeBlockVerticalWithAppBar! * 2,
          ),
          Image.asset('assets/images/shop.PNG'),
          const Text(
            'Your Amazon Cart is empty',
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: MySizeConfig.safeBlockVerticalWithAppBar! * 1,
          ),
          const Text(
            'Nothing in here. Only possibilities',
            style: TextStyle(fontSize: 17, color: Colors.black54),
          ),
          SizedBox(
            height: MySizeConfig.safeBlockVerticalWithAppBar! * 2,
          ),
          TextButton(
            onPressed: () {
              // go to ....
            },
            child: Text(
              'Shop today\'s deals',
              style: TextStyle(color: MyColors.mainColor, fontSize: 15),
            ),
          ),
          SizedBox(
            height: MySizeConfig.safeBlockVerticalWithAppBar! * 1,
          ),
          //@@@@@
          MainButton(
              fontSize: 17,
              fontWeight: FontWeight.w400,
              fontColor: Colors.black,
              buttonColor: MyColors.buttonColor,
              text: 'Sign in to your account'),
          SizedBox(
            height: MySizeConfig.safeBlockVerticalWithAppBar! * 1.5,
          ),
          CustomRoundedButton(
            width: MySizeConfig.safeBlockHorizontal! * 87,
            height: MySizeConfig.safeBlockVerticalWithAppBar! * 6.2,
            text: 'Sign up now',
            fontWeight: FontWeight.w400,
            fontSize: 17,
            radiusCount: 10,
          ),
          SizedBox(height: MySizeConfig.safeBlockVerticalWithAppBar! * 2),
          const Divider(
            thickness: 1,
          ),
          SizedBox(
            height: MySizeConfig.safeBlockVerticalWithAppBar! * 0.9,
          ),
          const Divider(
            thickness: 1,
          ),
          SizedBox(
            height: MySizeConfig.safeBlockVerticalWithAppBar! * 2,
          ),

          MainButton(
              text: 'Continue shopping',
              buttonColor: MyColors.buttonColor,
              fontWeight: FontWeight.w400,
              fontSize: 17,
              fontColor: Colors.black)
        ],
      )),
    );
  }
}
