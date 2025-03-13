import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/models/user_info_list_tile_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.userInfoListTileModel
  });

  final UserInfoListTileModel userInfoListTileModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFAFAFA),
      elevation: .1,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfoListTileModel.image),
          title: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(userInfoListTileModel.title, style: AppStyles.semiBold16),
          ),
          subtitle: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(userInfoListTileModel.subTitle, style: AppStyles.regular12),
          ),
        ),
      ),
    );
  }
}
