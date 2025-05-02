import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/core/model/all_expenses_card_model.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/custom_all_expenses_card_active.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/custom_all_expenses_card_in_active.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.isActive, required this.allExpensesCardModel});
  final bool isActive;
  final AllExpensesCardModel allExpensesCardModel;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CustomAllExpensesCardActive(
            allExpensesCardModel: allExpensesCardModel,
          )
        : CustomAllExpensesCardInActive(
            allExpensesCardModel: allExpensesCardModel,
          );
  }
}
