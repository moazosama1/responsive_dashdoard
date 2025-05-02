import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/all_expenses_body.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/custom_header.dart';

import 'custom_bg_container_dashboard.dart';

class AllExpensesWidget extends StatelessWidget {
  const AllExpensesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomBgContainerDashboard(
      padding: 20,
      widget: Column(
        children: [
          CustomHeaderTitleAndOption(
            headerTitle: "All Expenses",
          ),
          const SizedBox(
            height: 16,
          ),
          AllExpensesBody(),
        ],
      ),
    );
  }
}
