import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/features/data/app_info.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/all_expenses_item.dart';

class AllExpensesBody extends StatefulWidget {
  const AllExpensesBody({
    super.key,
  });

  @override
  State<AllExpensesBody> createState() => _AllExpensesBodyState();
}

int selectedIndex = 0;

class _AllExpensesBodyState extends State<AllExpensesBody> {
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      children: [
        Expanded(
          child: GestureDetector(
              onTap: () {
                selectedIndex = 0;
                setState(() {});
              },
              child: AllExpensesItem(
                allExpensesCardModel: listAllExpensesCardInfo[0],
                isActive: selectedIndex == 0,
              )),
        ),
        Expanded(
          child: GestureDetector(
              onTap: () {
                selectedIndex = 1;
                setState(() {});
              },
              child: AllExpensesItem(
                allExpensesCardModel: listAllExpensesCardInfo[1],
                isActive: selectedIndex == 1,
              )),
        ),
        Expanded(
          child: GestureDetector(
              onTap: () {
                selectedIndex = 2;
                setState(() {});
              },
              child: AllExpensesItem(
                allExpensesCardModel: listAllExpensesCardInfo[2],
                isActive: selectedIndex == 2,
              )),
        ),
      ],
    );
  }
}
