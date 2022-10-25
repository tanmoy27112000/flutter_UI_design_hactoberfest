import 'package:flutter/widgets.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double blockSizeHorizontal; // block size -> pixel size
  static late double blockSizeVertical;

  // for safearea
  static late double _safeAreaHorizontal;
  static late double _safeAreaVertical;
  static late double safeBlockHorizontal; // horizontal pixel size in safe area
  static late double safeBlockVertical; // vertical pixel size in safe area

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;

    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeBlockHorizontal = screenWidth - _safeAreaHorizontal;
    safeBlockVertical = screenHeight - _safeAreaVertical;
  }
}


/* 
 I think you can calculate font size via the screen width and even for everything you can use 
 the screen width to calculate the size but make sure to check orientation too because in landscape
 mode screen width will be screen height and vise versa there is a package already to achieve
 responsiveness Flutter Screen Utils you can check it.
*/