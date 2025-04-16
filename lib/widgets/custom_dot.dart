import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});

  final bool isActive ;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: isActive ? 32 : 8 ,
      height: 8 ,
      decoration: ShapeDecoration(
        color:  isActive ? Color(0xff4EB7F2) :Color(0xffE7E7E7),
        shape: RoundedRectangleBorder(
        borderRadius:  BorderRadius.circular(12) ,
      ),
      ) 
    );
  }
}