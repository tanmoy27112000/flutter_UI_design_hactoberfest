import 'package:grocery_ui_template/app_theme.dart';
import 'package:flutter/material.dart';

class PopularSectionHeaderWidget extends StatelessWidget {
  const PopularSectionHeaderWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _getPopularItemsUI();
  }

  Widget _getPopularItemsUI() {
    return Container(
      child: Text(
        'Popular Items',
        style: AppTheme.sectionHeaderTitleStyle,
      ),
    );
  }
}
