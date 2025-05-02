import 'package:flutter/material.dart';

class SizeConfig {
  static const double mobileWidth = 800;
  static const double desktopWidth = 1100;
  static late double width;
  static late double height;
  static void init(BuildContext context) {
    width = MediaQuery.sizeOf(context).width;
    height = MediaQuery.sizeOf(context).height;
  }
}
