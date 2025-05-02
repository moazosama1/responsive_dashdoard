import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/core/utils/text_style.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/custom_range_options.dart';

class CustomHeaderTitleAndOption extends StatelessWidget {
  const CustomHeaderTitleAndOption({
    super.key,
    required this.headerTitle,
  });
  final String headerTitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          headerTitle,
          style: AppTextStyles.fontSize20(context),
        ),
        CustomRangeOptions(),
      ],
    );
  }
}
