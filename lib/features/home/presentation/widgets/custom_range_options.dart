import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/core/utils/text_style.dart';

class CustomRangeOptions extends StatelessWidget {
  const CustomRangeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 1,
          color: Color(0xffF1F1F1),
        ),
      ),
      child: Row(
        children: [
          Text(
            "Monthly",
            style:AppTextStyles.fontSize16Grey(context)
                .copyWith(color: theme.colorScheme.tertiary),
          ),
          const SizedBox(
            width: 18,
          ),
          Icon(
            Icons.keyboard_arrow_down_rounded,
            color: theme.colorScheme.tertiary,
          ),
        ],
      ),
    );
  }
}
