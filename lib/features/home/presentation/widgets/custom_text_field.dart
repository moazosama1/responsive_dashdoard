import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/core/model/title_text_field_model.dart';
import 'package:responsive_ui_final_project/core/utils/color_app.dart';
import 'package:responsive_ui_final_project/core/utils/text_style.dart';
    
class CustomTextField extends StatelessWidget {

  const CustomTextField({ super.key, required this.titleTextModel });
    final TitleTextFieldModel titleTextModel;

  @override
  Widget build(BuildContext context) {
        var theme = Theme.of(context);

    return TextField(
      decoration: InputDecoration(
        hintText: titleTextModel.hintText,
        hintStyle: AppTextStyles.fontSize14(context).copyWith(
          color: theme.colorScheme.outline,
        ),
        fillColor: ColorApp.backgroundColor,
        filled: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none),
      ),
    );
  }
}