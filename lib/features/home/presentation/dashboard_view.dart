import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/core/utils/color_app.dart';
import 'package:responsive_ui_final_project/core/utils/size_config.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/custom_drawer.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/dashboard_view_body.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    
    var mediaQueryWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: mediaQueryWidth < SizeConfig.mobileWidth
          ? AppBar(
              backgroundColor: ColorApp.backgroundColor,
              elevation: 0,
            )
          : null,
      drawer: mediaQueryWidth < SizeConfig.mobileWidth ? CustomDrawer() : null,
      body: DashboardViewBody(),
    );
  }
}
