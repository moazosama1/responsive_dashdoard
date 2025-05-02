import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/custom_bg_container_dashboard.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/section_my_card.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/section_transaction_history.dart';

class SectionMyCardAndTransaction extends StatelessWidget {
  const SectionMyCardAndTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBgContainerDashboard(
      padding: 24,
      widget: Column(
        children: [
          SectionMyCard(),
          Divider(
            color: Color(0xffF1F1F1),
            height: 40,
          ),
          SectionTransactionHistory(),
        ],
      ),
    );
  }
}
