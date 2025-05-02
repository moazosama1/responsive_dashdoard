import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/core/utils/color_app.dart';
import 'package:responsive_ui_final_project/core/utils/text_style.dart';
import 'package:responsive_ui_final_project/features/data/app_info.dart';

class DetailedIncome extends StatefulWidget {
  const DetailedIncome({super.key});

  @override
  State<DetailedIncome> createState() => _DetailedIncome();
}

class _DetailedIncome extends State<DetailedIncome> {
  int currentIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getPieChartData(context),
      ),
    );
  }

  PieChartData getPieChartData(context) {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, p1) {
            currentIndex = p1?.touchedSection?.touchedSectionIndex ?? -1;
            setState(
              () {},
            );
          },
        ),
        sectionsSpace: 0,
        sections: List.generate(
          4,
          (index) => PieChartSectionData(
              color: listPieChartItem[index].color,
              value: listPieChartItem[index].value,
              title: currentIndex != index
                  ? "${listPieChartItem[index].value}%"
                  : listPieChartItem[index].title,
              titleStyle: AppTextStyles.fontSize24(context).copyWith(
                color: currentIndex != index
                    ? ColorApp.whiteTextColor
                    : ColorApp.deepCyanBlueTextColor,
              ),
              titlePositionPercentageOffset:
                  currentIndex == index ? 1.44 : null,
              radius: currentIndex != index ? 40 : 50),
        ));
  }
}
