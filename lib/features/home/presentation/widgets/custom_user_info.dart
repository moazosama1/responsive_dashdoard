import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_ui_final_project/core/model/user_info_model.dart';
import 'package:responsive_ui_final_project/core/utils/color_app.dart';
import 'package:responsive_ui_final_project/core/utils/text_style.dart';

class CustomUserInfo extends StatelessWidget {
  const CustomUserInfo({super.key, required this.userInfoModel});
  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorApp.lightGrayColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: SvgPicture.asset(
          userInfoModel.image,
        ),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            userInfoModel.name,
            style: AppTextStyles.fontSize16Grey(context),
          ),
        ),
        subtitle: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            userInfoModel.email,
            style: AppTextStyles.fontSize12Grey(context),
          ),
        ),
      ),
    );
  }
}
