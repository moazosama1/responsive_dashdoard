import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_ui_final_project/core/model/all_expenses_card_model.dart';
import 'package:responsive_ui_final_project/core/utils/color_app.dart';

class CustomAllExpensesCardHeader extends StatelessWidget {
  const CustomAllExpensesCardHeader({
    super.key,
    required this.allExpensesCardModel,
    this.colorIcon,
  });

  final AllExpensesCardModel allExpensesCardModel;
  final Color? colorIcon;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  shape: OvalBorder(),
                  color: ColorApp.whiteTextColor.withValues(alpha: 0.1),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    allExpensesCardModel.icon,
                    colorFilter: ColorFilter.mode(
                        colorIcon ?? theme.colorScheme.tertiary,
                        BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
        ),
        Transform.rotate(
          angle: 3.14159265,
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: colorIcon ?? theme.colorScheme.tertiary,
          ),
        )
      ],
    );
  }
}
