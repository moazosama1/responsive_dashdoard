import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/core/utils/text_style.dart';
import 'package:responsive_ui_final_project/features/data/app_info.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/custom_transaction_item_card.dart';

class SectionTransactionHistory extends StatelessWidget {
  const SectionTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Transaction History",
              style: AppTextStyles.fontSize20(context),
            ),
            Text(
              "See all",
              style: AppTextStyles.fontSize16Grey(context).copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "13 April 2022",
          style: AppTextStyles.fontSize16Grey(context),
        ),
        const SizedBox(
          height: 16,
        ),
        Column(
          children: List.generate(
            listAllExpensesCardInfo.length,
            (index) => CustomTransactionItemCard(
              transactionItemModel: listTransactionItem[index],
            ),
          ),
        )
      ],
    );
  }
}