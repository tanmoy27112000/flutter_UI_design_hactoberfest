import 'package:flutter/material.dart';
import 'package:grocery_ui_template/app_theme.dart';

class BuyNowButtonWidget extends StatelessWidget {
  const BuyNowButtonWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        child: Container(
          height: 40.0,
          decoration: BoxDecoration(
            color: AppTheme.primaryColor,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: AppTheme.primaryColor
                      .withOpacity(0.6),
                  offset: Offset(1.1, 1.1),
                  blurRadius: 10.0),
            ],
          ),
          child: Center(
              child: Text(
            'Buy Now',
            style: AppTheme.buyBtnTitleStyle,
          ),),
        ),
      ),
    );
  }
}