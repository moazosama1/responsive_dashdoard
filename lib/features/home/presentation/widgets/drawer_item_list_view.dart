import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/features/data/app_info.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/custom_item_drawer.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({super.key});

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: listItemDrawer.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(top: 20),
        child: GestureDetector(
          onTap: () {
            if (selectedItem != index) {
              selectedItem = index;
              setState(
                () {},
              );
            }
          },
          child: CustomItemDrawer(
            itemDrawerModel: listItemDrawer[index],
            isActive: selectedItem == index,
          ),
        ),
      ),
    );
  }
}
