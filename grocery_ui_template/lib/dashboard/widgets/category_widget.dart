import 'package:flutter/material.dart';
import 'package:grocery_ui_template/app_theme.dart';

enum CategoryType {
  fruits,
  cookware,
  dryfruits,
}

class CategoryWidget extends StatefulWidget {
  CategoryWidget({Key key}) : super(key: key);

  @override
  _CategoryWidgetState createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return _getCategoryUI();
  }

  Widget _getCategoryUI() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Category',
            style: AppTheme.sectionHeaderTitleStyle,
          ),
          SizedBox(
            height: 15,
          ),
          _getCategorySelectionWidget(),
        ],
      ),
    );
  }

  Widget _getCategorySelectionWidget() {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 10.0),
      height: 40.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _getCategoryButtonUI(type: CategoryType.fruits, isSelected: true),
          SizedBox(
            width: 12,
          ),
          _getCategoryButtonUI(type: CategoryType.dryfruits, isSelected: false),
          SizedBox(
            width: 12,
          ),
          _getCategoryButtonUI(type: CategoryType.cookware, isSelected: false),
        ],
      ),
    );
  }

  Widget _getCategoryButtonUI({CategoryType type, bool isSelected}) {
    String title = "Cookware";
    if (type == CategoryType.dryfruits) {
      title = 'Dry Fruits';
    } else if (type == CategoryType.fruits) {
      title = 'Fruits';
    }
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: AppTheme.primaryColor,
            width: 1.0,
            style: BorderStyle.solid,
          ),
          color: (isSelected) ? AppTheme.primaryColor : AppTheme.appWhiteColor,
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            title,
            style: TextStyle(
                color: (isSelected)
                    ? AppTheme.appWhiteColor
                    : AppTheme.primaryColor,
                fontSize: 15.0,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.27,
                height: 1.2),
          ),
        ),
      ),
    );
  }
}
