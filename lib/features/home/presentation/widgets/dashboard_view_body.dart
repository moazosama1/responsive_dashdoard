import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/adaptive_layout_widget.dart';
import 'package:responsive_ui_final_project/features/home/presentation/layout/desktop_layout.dart';
import 'package:responsive_ui_final_project/features/home/presentation/layout/mobile_layout.dart';
import 'package:responsive_ui_final_project/features/home/presentation/layout/tablet_layout.dart';

class DashboardViewBody extends StatelessWidget {
  const DashboardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayoutWidget(
      desktopLayout: (context) => DesktopLayout(),
      mobileLayout: (context) => MobileLayout(),
      tabletLayout: (context) => TabletLayout(),
    );
  }
}
