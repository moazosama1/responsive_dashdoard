import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/custom_bg_container_dashboard.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/latest_transaction_widget.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/quick_invoice_form.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/quick_invoice_header.dart';

class QuickInvoiceWidget extends StatelessWidget {
  const QuickInvoiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBgContainerDashboard(
      padding: 24,
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          const SizedBox(
            height: 24,
          ),
          LatestTransactionWidget(),
          Divider(
            height: 48,
            color: Color(0xffF1F1F1),
          ),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
