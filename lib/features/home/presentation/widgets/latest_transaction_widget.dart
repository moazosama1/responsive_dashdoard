import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/core/utils/text_style.dart';
import 'package:responsive_ui_final_project/features/data/app_info.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/custom_user_info.dart';

class LatestTransactionWidget extends StatelessWidget {
  const LatestTransactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest Transaction",
          style: AppTextStyles.fontSize16Grey(context).copyWith(
            color: theme.colorScheme.tertiary,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: userInfo
                .map(
                  (e) => IntrinsicWidth(
                    child: CustomUserInfo(
                      userInfoModel: e,
                    ),
                  ),
                )
                .toList(),
          ),
        )
      ],
    );
  }
}
