import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({super.key, required this.title});

  final String title ;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text( title, style: AppStyles.semiBold20),
        const Expanded(child: SizedBox()) ,
        Container(
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1 , color: Color.fromARGB(255, 231, 231, 231)),
              borderRadius: BorderRadius.circular(12),
            ),
            color: Colors.white ,
          ),
          child: Row(
            children: [
              const Text("Monthly" , style: AppStyles.medium16 ),
                const SizedBox(width: 10,) , 
              Transform.rotate(  angle: -1.57079633 , child: const Icon(Icons.arrow_back_ios_rounded)) , 
            ],
          ),
        ),
      ],
    );
  }
}
