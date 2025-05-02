import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/custom_drawer.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/section_all_expenses_and_quick_invoice.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/section_my_card_and_income.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        const SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 5,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: SectionAllExpensesAndQuickInvoice(),
                      ),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      flex: 2,
                      child: SectionMyCardAndIncome(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
