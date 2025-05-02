import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_ui_final_project/core/model/item_drawer_model.dart';
import 'package:responsive_ui_final_project/core/utils/text_style.dart';

class InActiveItemDrawer extends StatelessWidget {
  const InActiveItemDrawer({
    super.key,
    required this.itemDrawerModel,
  });

  final ItemDrawerModel itemDrawerModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(itemDrawerModel.icon),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(
          itemDrawerModel.title,
          style: AppTextStyles.fontSize16Regular(context),
        ),
      ),
    );
  }
}

class ActiveItemDrawer extends StatelessWidget {
  const ActiveItemDrawer({
    super.key,
    required this.itemDrawerModel,
  });

  final ItemDrawerModel itemDrawerModel;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return ListTile(
      leading: SvgPicture.asset(itemDrawerModel.icon),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(
          itemDrawerModel.title,
          style: AppTextStyles.fontSize16Regular(context).copyWith(
            color: theme.colorScheme.primary,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      trailing: Container(
        width: 3,
        color: theme.colorScheme.primary,
      ),
    );
  }
}
