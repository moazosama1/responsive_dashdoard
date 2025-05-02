import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/features/data/app_info.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/custom_pie_chart_item_info.dart';

class ListViewPieChartItemInfo extends StatelessWidget {
  const ListViewPieChartItemInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: listPieChartItem
          .map((item) => CustomPieChartItemInfo(
                pieChartModel: item,
              ))
          .toList(),
    );
  }
}
