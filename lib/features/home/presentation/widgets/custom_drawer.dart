import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/core/model/item_drawer_model.dart';
import 'package:responsive_ui_final_project/core/utils/color_app.dart';
import 'package:responsive_ui_final_project/core/utils/image_app.dart';
import 'package:responsive_ui_final_project/features/data/app_info.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/active_and_inactive_item_drawer.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/custom_user_info.dart';
import 'package:responsive_ui_final_project/features/home/presentation/widgets/drawer_item_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      color: ColorApp.backgroundColor,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CustomUserInfo(
              userInfoModel: userInfo[0],
            ),
          ),
          SliverToBoxAdapter(
            child: const SizedBox(
              height: 8,
            ),
          ),
          DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: const SizedBox(
                    height: 32,
                  ),
                ),
                InActiveItemDrawer(
                    itemDrawerModel: ItemDrawerModel(
                        title: "Setting", icon: AssetsImageApp.imagesSettings)),
                InActiveItemDrawer(
                    itemDrawerModel: ItemDrawerModel(
                        title: "Logout", icon: AssetsImageApp.imagesLogout)),
                const SizedBox(
                  height: 48,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
