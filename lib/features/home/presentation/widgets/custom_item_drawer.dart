import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/core/model/item_drawer_model.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/active_and_inactive_item_drawer.dart';

class CustomItemDrawer extends StatelessWidget {
  const CustomItemDrawer(
      {super.key, required this.itemDrawerModel, required this.isActive});
  final ItemDrawerModel itemDrawerModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveItemDrawer(itemDrawerModel: itemDrawerModel)
        : InActiveItemDrawer(itemDrawerModel: itemDrawerModel);
  }
}
