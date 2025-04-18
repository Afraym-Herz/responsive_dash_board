import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomProbabilityDot extends StatelessWidget {
  const CustomProbabilityDot({super.key,required this.title,required this.percent, required this.color,  });
  final Color color ;
  final String title ;
  final double percent ;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only( bottom: 12),
      child: Container(
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1.5 , color: Color.fromARGB(255, 231, 231, 231)),
                borderRadius: BorderRadius.circular(12),
              ),
              color: Colors.white ,
            ),
        child: Row(
          children: [
            AnimatedContainer(
          duration: Duration(milliseconds: 200),
          width:  12 ,
          height: 12 ,
          decoration: ShapeDecoration(
            color: color ,
            shape: RoundedRectangleBorder(
            borderRadius:  BorderRadius.circular(12) ,
          ),
          ) 
        ),
        SizedBox(width: 12,),
        Text(title , style: AppStyles.regular16 , ) ,
        Spacer() ,
        Text('$percent%' , style: AppStyles.medium16.copyWith(color: Color(0xff208CC8)) , ) ,
        
          ],
        ),
      ),
    );
  }
}