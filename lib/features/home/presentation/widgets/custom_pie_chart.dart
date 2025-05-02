import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/features/data/app_info.dart';

class CustomPieChart extends StatefulWidget {
  const CustomPieChart({super.key});

  @override
  State<CustomPieChart> createState() => _CustomPieChartState();
}

class _CustomPieChartState extends State<CustomPieChart> {
  int currentIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getPieChartData(),
      ),
    );
  }

  PieChartData getPieChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, p1) {
            currentIndex = p1?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: List.generate(
          4,
          (index) => PieChartSectionData(
              color: listPieChartItem[index].color,
              value: listPieChartItem[index].value,
              showTitle: false,
              radius: currentIndex != index ? 20 : 30),
        ));
  }
}
