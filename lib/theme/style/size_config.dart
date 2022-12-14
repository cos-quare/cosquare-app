import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
    defaultSize = orientation == Orientation.landscape ? screenHeight * 0.024 : screenWidth * 0.025;
  }
}

const kDefaultPadding = 24.0;
const kDefaultVerticalPadding = 10.0;
const kDefaultHorizontalPadding = 24.0;
