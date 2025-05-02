import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/core/model/title_text_field_model.dart';
import 'package:responsive_ui_final_project/core/utils/text_style.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/custom_text_field.dart';

class CustomTitleTextField extends StatelessWidget {
  const CustomTitleTextField({super.key, required this.titleTextModel});
  final TitleTextFieldModel titleTextModel;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleTextModel.title,
          style: AppTextStyles.fontSize16Grey(context).copyWith(
            color: theme.colorScheme.tertiary,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextField(
          titleTextModel: titleTextModel,
        )
      ],
    );
  }
}
