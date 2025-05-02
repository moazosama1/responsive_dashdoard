import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/core/utils/text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.title, this.bgColor, this.titleColor});
  final String title;
  final Color? bgColor;
  final Color? titleColor;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shadowColor: Colors.transparent,
          backgroundColor: bgColor ?? Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {},
        child: Text(
          title,
          style: AppTextStyles.fontSize18(context)
              .copyWith(color: titleColor ?? theme.colorScheme.primary),
        ),
      ),
    );
  }
}
