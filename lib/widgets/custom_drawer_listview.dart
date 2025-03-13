import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/custom_drawer_item.dart';

class CustomDrawerListview extends StatefulWidget {
  const CustomDrawerListview({super.key});

  @override
  State<CustomDrawerListview> createState() => _CustomDrawerListviewState();
}

class _CustomDrawerListviewState extends State<CustomDrawerListview> {
  final List<DrawerItemModel> drawerList = const [
    DrawerItemModel(image: AppImages.dashboard, title: "Dashboard"),
    DrawerItemModel(image: AppImages.myTransaction, title: "My Transictions"),
    DrawerItemModel(image: AppImages.statistics, title: "Statistics"),
    DrawerItemModel(image: AppImages.walletAccount, title: "Wallet Account"),
    DrawerItemModel(image: AppImages.myinvestments, title: "My Investments"),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: CustomDrawerItem(
            drawerItemModel: drawerList[index],
            isActive: activeIndex == index,
          ),
        );
      },
      itemCount: drawerList.length,
      
    );
  }
}
