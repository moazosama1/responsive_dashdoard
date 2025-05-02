import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/all_expenses_widget.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/quick_invoice_widget.dart';

class SectionAllExpensesAndQuickInvoice extends StatelessWidget {
  const SectionAllExpensesAndQuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AllExpensesWidget(),
        const SizedBox(
          height: 24,
        ),
        QuickInvoiceWidget(),
      ],
    );
  }
}
