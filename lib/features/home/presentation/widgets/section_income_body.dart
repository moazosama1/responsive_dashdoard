import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/core/utils/size_config.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/custom_pie_chart.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/detailed_income.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/list_list_pie_chart_item_info.dart';

class SectionIncomeBody extends StatelessWidget {
  const SectionIncomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktopWidth && width <= 1200
        ? DetailedIncome()
        : Row(
            spacing: 20,
            children: [
              Expanded(
                child: CustomPieChart(),
              ),
              Expanded(
                flex: 2,
                child: ListViewPieChartItemInfo(),
              ),
            ],
          );
  }
}
