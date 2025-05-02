import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/core/model/all_expenses_card_model.dart';
import 'package:responsive_ui_final_project/core/utils/text_style.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/custom_all_expenses_card_header.dart';

class CustomAllExpensesCardActive extends StatelessWidget {
  const CustomAllExpensesCardActive(
      {super.key, required this.allExpensesCardModel});
  final AllExpensesCardModel allExpensesCardModel;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: theme.colorScheme.primary,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAllExpensesCardHeader(
            allExpensesCardModel: allExpensesCardModel,
            colorIcon: theme.colorScheme.surface,
          ),
          const SizedBox(
            height: 34,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  allExpensesCardModel.type,
                  style: AppTextStyles.fontSize16Regular(context)
                      .copyWith(color: theme.colorScheme.surface),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  allExpensesCardModel.date,
                  style: AppTextStyles.fontSize14(context)
                      .copyWith(color: theme.colorScheme.surface),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  allExpensesCardModel.balance,
                  style: AppTextStyles.fontSize24(context)
                      .copyWith(color: theme.colorScheme.surface),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
