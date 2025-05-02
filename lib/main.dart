import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/core/utils/constant.dart';
import 'package:responsive_ui_final_project/core/utils/size_config.dart';
import 'package:responsive_ui_final_project/core/utils/theme_app.dart';
import 'package:responsive_ui_final_project/features/home/presentation/dashboard_view.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => ResponsiveDashBoard(),
      enabled: true,
    ),
  );
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return MaterialApp(
      theme: ThemeApp().themeLight,
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: DashboardView(),
      title: Constant.projectName,
      themeMode: ThemeMode.light,
    );
  }
}
