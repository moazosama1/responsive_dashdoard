import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/core/utils/text_style.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/custom_indicator.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/custom_my_card_page_view.dart';

class SectionMyCard extends StatefulWidget {
  const SectionMyCard({super.key});

  @override
  State<SectionMyCard> createState() => _SectionMyCardState();
}

class _SectionMyCardState extends State<SectionMyCard> {
  late PageController pageController;
  int currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(
      () {
        currentPage = pageController.page!.round();
        setState(() {});
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 20,
      children: [
        Text(
          "My card",
          style: AppTextStyles.fontSize20(context),
        ),
        CustomMyCardPageView(
          pageController: pageController,
        ),
        CustomIndicator(
          currentPage: currentPage,
        ),
      ],
    );
  }
}
