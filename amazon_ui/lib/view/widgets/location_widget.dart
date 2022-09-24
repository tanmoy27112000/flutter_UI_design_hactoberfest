import 'package:amazon_clone/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MySizeConfig.safeBlockVerticalWithAppBar! * 7,
      decoration:
          const BoxDecoration(color: Color.fromARGB(170, 152, 225, 214)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            SvgPicture.asset(
              'assets/icons/location.svg',
              width: MySizeConfig.safeBlockVerticalWithAppBar! * 2.5,
            ),
            SizedBox(
              width: MySizeConfig.safeBlockVerticalWithAppBar! * 1,
            ),
            const Text(
              'Deliver to Rup - Siliguri 734001',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
