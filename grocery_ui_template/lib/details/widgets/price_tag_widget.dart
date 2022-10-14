
import 'package:flutter/material.dart';
import 'package:grocery_ui_template/app_theme.dart';

class PriceTagWidget extends StatelessWidget {
  const PriceTagWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.0,
      height: 60.0,
      decoration: BoxDecoration(
        color: AppTheme.appWhiteColor,
        borderRadius: BorderRadius.all(
          Radius.circular(
            10.0,
          ),
        ),
        border: Border.all(
          color: Colors.grey.withOpacity(0.2),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '10',
            style: TextStyle(
              color: AppTheme.primaryColor,
              fontSize: 21.0,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            'Kgs',
            style: TextStyle(
                color: AppTheme.appGreyTitleColor, fontSize: 18.0,),
          ),
        ],
      ),
    );
  }
}
