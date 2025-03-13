import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title, required this.color});
  final Text title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 62,
        child: ElevatedButton(
          
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor:color ,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 0,
            textStyle: title.style ,
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
          ) ,
         
          
          child: Center(child: title),
        ),
      ),
    );
  }
}
