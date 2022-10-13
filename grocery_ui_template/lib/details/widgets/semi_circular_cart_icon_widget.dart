
import 'package:flutter/material.dart';
import 'package:grocery_ui_template/app_theme.dart';

class SemiCircularCartIconWidget extends StatelessWidget {
  const SemiCircularCartIconWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 48,
        height: 48,
        child: Container(
          decoration: BoxDecoration(
            color: AppTheme.appWhiteColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(16.0),
            ),
            border: Border.all(
              color: AppTheme.appGreyTitleColor.withOpacity(0.2),
            ),
          ),
          child: Icon(
            Icons.shopping_cart,
            color: AppTheme.primaryColor,
            size: 28,
          ),
        ),
      ),
    );
  }
}
