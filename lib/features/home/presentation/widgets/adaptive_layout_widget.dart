import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/core/utils/size_config.dart';

class AdaptiveLayoutWidget extends StatelessWidget {
  const AdaptiveLayoutWidget(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      log(constraints.maxWidth.toString());
      if (constraints.maxWidth < SizeConfig.mobileWidth) {
        return mobileLayout(context);
      } else if (constraints.maxWidth < SizeConfig.desktopWidth) {
        return tabletLayout(context);
      } else {
        return desktopLayout(context);
      }
    });
  }
}
