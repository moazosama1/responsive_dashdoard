import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/core/utils/text_style.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Quick Invoice",
          style: AppTextStyles.fontSize20(context),
        ),
        Container(
            padding: EdgeInsets.all(14),
            decoration: ShapeDecoration(
              shape: OvalBorder(),
              color: Color(0xffFAFAFA),
            ),
            child: Icon(
              Icons.add,
              color: theme.colorScheme.tertiary,
            )),
      ],
    );
  }
}
