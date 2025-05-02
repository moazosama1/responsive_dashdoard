import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/features/home/presentation/layout/mobile_layout.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/custom_drawer.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        const SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: MobileLayout(),
          ),
        ),
        const SizedBox(
          width: 24,
        ),
      ],
    );
  }
}
