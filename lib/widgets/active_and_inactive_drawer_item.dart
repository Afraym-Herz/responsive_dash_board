
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Card(
        elevation: 0,
        color: const Color(0xffFFFFFF),
        child: ListTile(
          leading: SvgPicture.asset(drawerItemModel.image),
          title: FittedBox( alignment: Alignment.centerLeft , fit: BoxFit.scaleDown ,child: Text(drawerItemModel.title, style: AppStyles.regular16)),
        ),
      ),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Card(
        elevation: 0,
        color: const Color(0xffFFFFFF),
        child: ListTile(
          leading: SvgPicture.asset(drawerItemModel.image),
          title: FittedBox( alignment: Alignment.centerLeft , fit: BoxFit.scaleDown , child: Text(drawerItemModel.title, style: AppStyles.bold16)),
          trailing: Container(color: const Color(0xff4EB7F2), width: 3.27, ),
        ),
      ),
    );
  }
}
