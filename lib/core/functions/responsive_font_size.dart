import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/core/utils/size_config.dart';

double getResponsiveText(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = scaleFactor * fontSize;
  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.mobileWidth) {
    return width / 600;
  } else if (width < SizeConfig.desktopWidth) {
    return width / 850;
  } else {
    return width / 1200;
  }
}

extension ResponsiveFontSize on TextStyle {
  TextStyle responsiveFont(
    context, {
    required double fontSize,
  }) {
    return copyWith(
      fontSize: getResponsiveText(
        context,
        fontSize: fontSize,
      ),
    );
  }
}
