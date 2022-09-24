import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart' as widgets; // note: external package imp

import 'dart:ui' as ui;
import 'dart:math' as math;

class MySizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? blockSizeHorizontal;
  static double? blockSizeVertical;
  static double? _safeAreaHorizontal;
  static double? safeAreaVertical;
  static double? safeBlockHorizontal;
  static double? safeBlockVerticalWithAppBar;
  static double? safeBlockVerticalWithOutAppBar;
  static double? allAppHaveAppBar;
  static double? iconWidth;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    blockSizeHorizontal = screenWidth! / 100;
    blockSizeVertical = screenHeight! / 100;
    // for remove padding(status bar) right and left
    _safeAreaHorizontal =
        _mediaQueryData!.padding.left + _mediaQueryData!.padding.right;
    // for remove padding(status bar) top and bottom ,, will detect your widget and work on it
    safeAreaVertical = MediaQueryData.fromWindow(ui.window).padding.top +
        MediaQueryData.fromWindow(ui.window).padding.bottom;

    //@@@    Block    @@@
    // remove padding from width size
    safeBlockHorizontal = (screenWidth! - _safeAreaHorizontal!) / 100;
    //you need to divedied py 100  to use ===> (safeBlockVerticalWithAppBar/100)
    //When you need remove appbar size and padding size from your total size:
    // with appbar:
    safeBlockVerticalWithAppBar =
        (screenHeight! - safeAreaVertical! - AppBar().preferredSize.height) /
            100;
    // without appbar:
    safeBlockVerticalWithOutAppBar =
        (screenHeight! - safeAreaVertical! - 0) / 100;
    //@@@@@@@@@@@@@@@@@ if all app have appbar you can use this propirty @@@@@@@@@@@@@@@@@
    //@@@
    //@@@
    allAppHaveAppBar =
        (screenHeight! - safeAreaVertical! - AppBar().preferredSize.height) /
            100;

    //@@@@@@@@ This will show you what you have from size @@@@@@@
    print('screenWidth =>>> $screenWidth');
    print('screenHeight =>>> $screenHeight');
    print('padding top =>>> ${_mediaQueryData!.padding.top}');
    print(
        'padding top with window =>>>  ${MediaQueryData.fromWindow(ui.window).padding.top}');
    print(
        'padding bottom =>>>  ${MediaQueryData.fromWindow(ui.window).padding.bottom}');

    print('AppBar height =>>>  ${AppBar().preferredSize.height}');
    print('safeBlockVertical =>>>  $safeBlockVerticalWithAppBar');

    // @@@@ Const Sizes @@@@

     iconWidth = _mediaQueryData!.size.width * 0.05;
  }
}
// enum ScreenType {
//   Mobile,
//   Tablet,
//   Desktop
// }
// DeviceScreenType getDeviceScreenType(MediaQueryData mediaQuery) {
//   var orientation = mediaQueryData.orientation;
//   double deviceWidth = 0;
//   if (orientation == Orientation.landscape) {
//     deviceWidth = mediaQueryData.size.height;
//   } else {
//     deviceWidth = mediaQueryData.size.width;
//   }
//   if (deviceWidth > 950) {
//     return DeviceScreenType.Desktop;
//   }
//   if (deviceWidth > 600) {
//     return DeviceScreenType.Tablet;
//   }
//   return DeviceScreenType.Mobile;
// }
