import 'package:flutter/material.dart';
import 'package:grocery_ui_template/app_theme.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _getAppBarUI();
  }

  Widget _getAppBarUI() {
    return Container(
      color: AppTheme.appWhiteColor,
      padding:
          const EdgeInsets.only(top: 8.0, left: 15, right: 15, bottom: 10.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Shop for', style: AppTheme.appBarTitlePrefixStyle),
              Text('Groceries', style: AppTheme.appBarTitleStyle),
            ],
          ),
          Spacer(),
          _getProfileIcon()
        ],
      ),
    );
  }

  Widget _getProfileIcon() {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
          image: DecorationImage(
              image: AssetImage(
            'assets/images/profile-icon.jpg',
          ))),
    );
  }
}
