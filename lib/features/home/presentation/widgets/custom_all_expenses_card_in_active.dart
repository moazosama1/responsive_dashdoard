import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/core/model/all_expenses_card_model.dart';
import 'package:responsive_ui_final_project/core/utils/text_style.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/custom_all_expenses_card_header.dart';

class CustomAllExpensesCardInActive extends StatelessWidget {
  const CustomAllExpensesCardInActive(
      {super.key, required this.allExpensesCardModel});
  final AllExpensesCardModel allExpensesCardModel;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xffF1F1F1), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAllExpensesCardHeader(
              allExpensesCardModel: allExpensesCardModel),
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
                  style: AppTextStyles.fontSize16Bold(context),
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
                      .copyWith(color: theme.colorScheme.outline),
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
                      .copyWith(color: theme.colorScheme.primary),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
