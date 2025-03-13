import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/models/user_info_list_tile_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/active_and_inactive_drawer_item.dart';
import 'package:responsive_dash_board/widgets/custom_drawer_listview.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoListTileModel:  UserInfoListTileModel(
                image: AppImages.madrani,
                title: "Lekan Okeowo",
                subTitle: "demo@gmail.com",
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          CustomDrawerListview(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    image: AppImages.settings,
                    title: "System settings",
                  ),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    image: AppImages.logout,
                    title: "Log out",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
