import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/custom_bg_container_dashboard.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/custom_header.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/section_income_body.dart';

class SectionIncome extends StatelessWidget {
  const SectionIncome({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBgContainerDashboard(
      widget: Column(
        spacing: 16,
        children: [
          CustomHeaderTitleAndOption(
            headerTitle: "Income",
          ),
          SectionIncomeBody(),
        ],
      ),
    );
  }
}
