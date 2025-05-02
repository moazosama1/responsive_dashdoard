import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/core/functions/responsive_font_size.dart';
import 'package:responsive_ui_final_project/core/utils/color_app.dart';

class AppTextStyles {
  static TextStyle fontSize20(BuildContext context) => TextStyle(
        fontSize: getResponsiveText(
          context,
          fontSize: 20,
        ),
        fontWeight: FontWeight.w600,
        color: ColorApp.deepCyanBlueTextColor,
      );

  static TextStyle fontSize16Bold(BuildContext context) => TextStyle(
        fontSize: getResponsiveText(
          context,
          fontSize: 16,
        ),
        fontWeight: FontWeight.w600,
        color: ColorApp.deepCyanBlueTextColor,
      );

  static TextStyle fontSize16Regular(BuildContext context) => TextStyle(
        fontSize: getResponsiveText(
          context,
          fontSize: 16,
        ),
        fontWeight: FontWeight.w400,
        color: ColorApp.deepCyanBlueTextColor,
      );

  static TextStyle fontSize18(BuildContext context) => TextStyle(
        fontSize: getResponsiveText(
          context,
          fontSize: 18,
        ),
        color: ColorApp.primaryColor,
        fontWeight: FontWeight.w600,
      );

  static TextStyle fontSize16Grey(BuildContext context) => TextStyle(
        fontSize: getResponsiveText(
          context,
          fontSize: 16,
        ),
        color: ColorApp.greyTextColor,
        fontWeight: FontWeight.w500,
      );

  static TextStyle fontSize12Grey(BuildContext context) => TextStyle(
        fontSize: getResponsiveText(
          context,
          fontSize: 12,
        ),
        color: ColorApp.greyTextColor,
        fontWeight: FontWeight.w400,
      );

  static TextStyle fontSize24(BuildContext context) => TextStyle(
        fontSize: getResponsiveText(
          context,
          fontSize: 24,
        ),
        fontWeight: FontWeight.w600,
        color: ColorApp.deepCyanBlueTextColor,
      );

  static TextStyle fontSize14(BuildContext context) => TextStyle(
        fontSize: getResponsiveText(
          context,
          fontSize: 14,
        ),
        fontWeight: FontWeight.w400,
        color: ColorApp.deepCyanBlueTextColor,
      );
}
