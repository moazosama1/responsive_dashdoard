import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      width: isActive ? 32 : 8,
      height: 8,
      decoration: BoxDecoration(
          color:
              isActive ? theme.colorScheme.primary : theme.colorScheme.outline,
          borderRadius: BorderRadius.circular(12),),
    );
  }
}
