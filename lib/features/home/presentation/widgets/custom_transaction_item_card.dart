import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/core/model/transaction_item_model.dart';
import 'package:responsive_ui_final_project/core/utils/text_style.dart';

class CustomTransactionItemCard extends StatelessWidget {
  const CustomTransactionItemCard(
      {super.key, required this.transactionItemModel});
  final TransactionItemModel transactionItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xffFAFAFA),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 6,
            children: [
              Text(
                transactionItemModel.title,
                style: AppTextStyles.fontSize16Bold(context),
              ),
              Text(
                transactionItemModel.date,
                style: AppTextStyles.fontSize16Grey(context),
              ),
            ],
          ),
          Text(
            transactionItemModel.amount,
            style: AppTextStyles.fontSize20(context).copyWith(
              color: transactionItemModel.isWithdrawal
                  ? Color(0xffF3735E)
                  : Color(0xff7DD97B),
            ),
          ),
        ],
      ),
    );
  }
}
