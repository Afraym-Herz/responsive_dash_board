import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';

class CustomAllExpensesItemHeader extends StatelessWidget {
  const CustomAllExpensesItemHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          SvgPicture.asset(AppImages.balance, color: const Color(0xff064061)),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios_rounded, color: Color(0xff064061)),
        ],
      ),
    );
  }
}
