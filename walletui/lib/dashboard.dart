import 'package:flutter/material.dart';

import 'cardwidget.dart';
import 'components/appbar.dart';
import 'config/colors.dart';
import 'config/size.dart';
import 'expenseswidget.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);

    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            CustomAppBar(),
            Expanded(
              child: CardWidget(),
            ),
            Expanded(
              child: ExpensesWidget(),
            )
          ],
        ),
      ),
    );
  }
}
