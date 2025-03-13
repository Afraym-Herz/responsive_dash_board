import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_infos_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class UserInfosItem extends StatelessWidget {
  const UserInfosItem({super.key, required this.userInfosItemModel});
  final UserInfosItemModel userInfosItemModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(userInfosItemModel.title, style: AppStyles.medium16),
        SizedBox(height: 12),
        TextField(
          decoration: InputDecoration(
            hintText: userInfosItemModel.hint,
            hintStyle: AppStyles.regular16Gray,
            fillColor: Color(0xffFAFAFA),
            border: buildBorder(),
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder(),
          ),
        ),
      ],
    );
  }
}

OutlineInputBorder buildBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide(
      color: Color(0xffFAFAFA),
    )
    );
}
