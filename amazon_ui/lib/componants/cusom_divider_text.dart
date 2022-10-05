import 'package:amazon_clone/utils/size_config.dart';
import 'package:flutter/material.dart';

class CustomDividerText extends StatelessWidget {
  const CustomDividerText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: MySizeConfig.safeBlockVerticalWithAppBar! * 3,
      width: MySizeConfig.safeBlockHorizontal! * 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Expanded(
            child: Divider(
              thickness: 1,
              // height: 2,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(2.0),
            child: Text(
              'You\'ve reached the end keep exploring!',
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          ),
          Expanded(
            child: Divider(
              thickness: 1,
              // height: 2,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
