import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/core/model/title_text_field_model.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/custom_button.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/custom_title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Column(
      spacing: 24,
      children: [
        Row(
          spacing: 16,
          children: [
            Expanded(
              child: CustomTitleTextField(
                titleTextModel: TitleTextFieldModel(
                    title: "Customer name", hintText: "Type customer name"),
              ),
            ),
            Expanded(
              child: CustomTitleTextField(
                titleTextModel: TitleTextFieldModel(
                    title: "Customer email", hintText: "Type customer email"),
              ),
            ),
          ],
        ),
        Row(
          spacing: 16,
          children: [
            Expanded(
              child: CustomTitleTextField(
                titleTextModel: TitleTextFieldModel(
                    title: "Item name", hintText: "Type item name"),
              ),
            ),
            Expanded(
              child: CustomTitleTextField(
                titleTextModel:
                    TitleTextFieldModel(title: "Item Mount", hintText: "USD"),
              ),
            ),
          ],
        ),
        Row(
          spacing: 24,
          children: [
            Expanded(
              child: CustomButton(
                title: "Add more details",
              ),
            ),
            Expanded(
              child: CustomButton(
                title: "Send Money",
                bgColor: theme.colorScheme.primary,
                titleColor: theme.colorScheme.surface,
              ),
            ),
          ],
        )
      ],
    );
  }
}
