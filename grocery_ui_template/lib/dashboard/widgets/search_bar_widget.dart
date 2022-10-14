import 'package:grocery_ui_template/app_theme.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _getSearchbarUI();
  }

  Widget _getSearchbarUI({BuildContext context}) {
    return Container(
      margin: EdgeInsets.only(right: 50.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: TextFormField(
                style: AppTheme.searchBarTitleStyle,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  //labelText: 'Search for grocery',
                  border: InputBorder.none,
                  helperStyle: AppTheme.searchBarTitleStyle,
                  hintText: 'Search for grocery',
                  hintStyle: AppTheme.searchBarTitleStyle,
                  labelStyle: AppTheme.searchBarTitleStyle,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 40,
            height: 40,
            child: Icon(
              Icons.search,
              color: AppTheme.appTitlePrefixColor,
            ),
          )
        ],
      ),
      height: 44,
      decoration: BoxDecoration(
        color: AppTheme.appGreyBackgroundColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
    );
  }
}
