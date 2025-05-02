import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/section_all_expenses_and_quick_invoice.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/section_my_card_and_income.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SectionAllExpensesAndQuickInvoice(),
          SectionMyCardAndIncome(),
        ],
      ),
    );
  }
}
