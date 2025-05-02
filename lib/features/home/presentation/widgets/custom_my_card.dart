import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_ui_final_project/core/utils/image_app.dart';
import 'package:responsive_ui_final_project/core/utils/text_style.dart';

class CustomMyCard extends StatelessWidget {
  const CustomMyCard({super.key});
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                AssetsImageApp.imagesCardBackground,
              )),
          color: theme.colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.only(left: 31, right: 42, top: 16),
              title: Text(
                'Name card',
                style: AppTextStyles.fontSize16Regular(context).copyWith(
                  color: theme.colorScheme.surface,
                ),
              ),
              subtitle: Text(
                'Syah Bandi',
                style: AppTextStyles.fontSize20(context).copyWith(
                  color: theme.colorScheme.surface,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: SvgPicture.asset(AssetsImageApp.imagesGallery),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 48 - 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: AppTextStyles.fontSize24(context).copyWith(
                      color: theme.colorScheme.surface,
                    ),
                  ),
                  Text(
                    '12/20 - 124',
                    style: AppTextStyles.fontSize16Regular(context).copyWith(
                      color: theme.colorScheme.surface,
                    ),
                  ),
                ],
              ),
            ),
            const Flexible(
              child: SizedBox(
                height: 54 - 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
