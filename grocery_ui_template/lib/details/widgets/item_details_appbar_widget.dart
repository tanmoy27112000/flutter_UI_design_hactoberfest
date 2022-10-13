import 'package:flutter/material.dart';
import 'package:grocery_ui_template/app_theme.dart';

class ItemDetailsAppbarWidget extends StatelessWidget {
  const ItemDetailsAppbarWidget({
    Key key,
    @required double headerHeight,
  })  : _headerHeight = headerHeight,
        super(key: key);

  final double _headerHeight;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: _headerHeight,
      backgroundColor: AppTheme.primaryColor,
      pinned: true,
      //  snap: true,
      //  floating: true,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        stretchModes: [StretchMode.zoomBackground],
        title: Text('Twisty Fired Potatoes', style: AppTheme.itemDetailsHeaderTitleStyle,),
        background: Image.asset(
          'assets/images/fries.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
