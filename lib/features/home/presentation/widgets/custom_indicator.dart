import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/custom_dot_indicator.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({super.key, required this.currentPage});
  final int currentPage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(left: 6),
          child: CustomDotIndicator(isActive: index == currentPage),
        ),
      ),
    );
  }
}
