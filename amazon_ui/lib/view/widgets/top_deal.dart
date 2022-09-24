import 'package:amazon_clone/componants/custom_price_widget.dart';
import 'package:amazon_clone/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../utils/size_config.dart';

class TopDealWidget extends StatelessWidget {
  const TopDealWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //MediaQueryData mediaQuery = const MediaQueryData();
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Container(
        width: MySizeConfig.safeBlockHorizontal! * 100,
        height: MySizeConfig.safeBlockVerticalWithAppBar! * 65,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Column Data ::::
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Title
                  const Text(
                    'Top Deal',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w100),
                  ),
                  SizedBox(
                    height: MySizeConfig.safeBlockVerticalWithAppBar! * 2,
                  ),
                  // Image Product
                  Center(
                    child: Image.asset(
                      'assets/images/topdeal.jpg',
                      width: MySizeConfig.safeBlockHorizontal! * 70,
                    ),
                  ),
                  SizedBox(
                    height: MySizeConfig.safeBlockVerticalWithAppBar! * 2,
                  ),
                  // Details
                  Row(
                    children: [
                      CustomPriceWidget(price: '33'),
                      SizedBox(
                        width: MySizeConfig.safeBlockHorizontal! * 1,
                      ),
                      Text('-'),
                      CustomPriceWidget(price: '159'),
                    ],
                  ),
                  SizedBox(
                    height: MySizeConfig.safeBlockVerticalWithAppBar! * 1,
                  ),
                  Text('Retevis Portable FRS Two-way Radios'),
                  SizedBox(
                    height: MySizeConfig.safeBlockVerticalWithAppBar! * 2.5,
                  ),
                  Text('Ends in 16:14:51'),
                ],
              ),
            ),
            // Actions
            Padding(
              padding: const EdgeInsets.only(left: 7),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'See all deals',
                  style: TextStyle(
                      color: MyColors.mainColor, fontWeight: FontWeight.w100),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
