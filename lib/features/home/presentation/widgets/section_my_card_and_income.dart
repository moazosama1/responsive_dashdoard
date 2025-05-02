import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/section_income.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/section_my_card_and_transaction.dart';

class SectionMyCardAndIncome extends StatelessWidget {
  const SectionMyCardAndIncome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        SectionMyCardAndTransaction(),
        const SizedBox(
          height: 24,
        ),
        SectionIncome(),
      ],
    );
  }
}
