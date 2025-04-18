import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: const DecorationImage(image: AssetImage(AppImages.nameCard)  ),
          color: const Color(0xff4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  "Name card",
                  style: AppStyles.regular16.copyWith(color: Colors.white),
                ),
                subtitle: const Text("Syah Bandi", style: AppStyles.medium20),
                trailing: SvgPicture.asset(AppImages.sidePhoto),
              ),
              Spacer() ,
               Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("0918 8124 0042 8129", style: AppStyles.semiBold24.copyWith(color: Colors.white)),
                      SizedBox(height: 8,),
                      Text("12/20 - 124", style: AppStyles.regular16.copyWith(color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
