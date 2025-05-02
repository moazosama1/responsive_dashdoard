import 'package:flutter/material.dart';

class CustomBgContainerDashboard extends StatelessWidget {
  const CustomBgContainerDashboard(
      {super.key, required this.widget, this.padding});
  final Widget widget;
  final double? padding;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(padding ?? 20),
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(12),
          ),
          child: widget,
        ),
      ],
    );
  }
}
