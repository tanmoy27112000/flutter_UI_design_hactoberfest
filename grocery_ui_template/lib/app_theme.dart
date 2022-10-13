import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0XFF673AB7);
  static const Color appWhiteColor = Colors.white;
  static const Color appGreyBackgroundColor = Color(0XFFF5F5F5);
  static const Color appTitleColor = Color(0XDD000000);
  static const Color appTitlePrefixColor = Color(0XFF9E9E9E);
  static const Color appGreyTitleColor = Colors.grey;

  static const String fontName = 'AvenirNext';

  static const TextStyle appBarTitleStyle = TextStyle(
    color: appTitleColor,
    fontSize: 22.0,
    height: 1.2,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.27,
  );

  static const TextStyle appBarTitlePrefixStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.2,
    height: 1.2,
    color: appTitlePrefixColor,
  );

  static const TextStyle cardItemTitleStyle = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.27,
    height: 1.2,
    color: appTitleColor,
  );
  static const TextStyle cardItemPriceStyle = TextStyle(
    color: primaryColor,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.27,
  );

  static const TextStyle cardItemQuantityStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.2,
    height: 1.2,
    color: appTitlePrefixColor,
  );

  static const TextStyle cardItemRatingStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.2,
    height: 1.2,
    color: appTitlePrefixColor,
  );

  static const TextStyle itemDetailsTitleStyle = TextStyle(
    fontSize: 22.0,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.27,
    height: 1.2,
    color: appTitleColor,
  );
  static const TextStyle itemDetailsPriceStyle = TextStyle(
    color: primaryColor,
    fontSize: 22,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.27,
  );

  static const TextStyle itemDetailsQuantityStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 17,
    letterSpacing: 0.2,
    height: 1.2,
    color: appTitlePrefixColor,
  );

  static const TextStyle itemDetailsDescriptionStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: 0.2,
    height: 1.3,
    color: appTitlePrefixColor,
  );

  static const TextStyle itemDetailsRatingStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 17,
    letterSpacing: 0.2,
    height: 1.2,
    color: appTitlePrefixColor,
  );

  static const TextStyle sectionHeaderTitleStyle = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.21,
    color: appTitleColor,
  );

  static const TextStyle searchBarTitleStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: 0.2,
    height: 1.2,
    color: appTitlePrefixColor,
  );

  static const TextStyle buyBtnTitleStyle = TextStyle(
    fontWeight: FontWeight.w700,
    letterSpacing: 0.2,
    height: 1.2,
    color: appWhiteColor,
    fontSize: 19,
  );

  static const TextStyle itemDetailsHeaderTitleStyle = TextStyle(
      color: appWhiteColor,
      fontSize: 21.0,
      height: 1.2,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.27,
      shadows: [
        BoxShadow(
          color: primaryColor,
          blurRadius: 10.0,
          offset: Offset(
            0.3,
            0.5,
          ),
        ),
      ]);
}
