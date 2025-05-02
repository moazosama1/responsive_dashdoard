import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/core/model/pie_chart_model.dart';
import 'package:responsive_ui_final_project/core/utils/text_style.dart';

class CustomPieChartItemInfo extends StatelessWidget {
  const CustomPieChartItemInfo({super.key, required this.pieChartModel});
  final PieChartModel pieChartModel;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: Container(
        height: 12,
        width: 12,
        decoration:
            BoxDecoration(color: pieChartModel.color, shape: BoxShape.circle),
      ),
      title: Text(
        pieChartModel.title,
        style: AppTextStyles.fontSize16Regular(context),
      ),
      trailing: Text(
        "${pieChartModel.value}%",
        style: AppTextStyles.fontSize16Grey(context)
            .copyWith(color: theme.colorScheme.primary),
      ),
    );
  }
}
