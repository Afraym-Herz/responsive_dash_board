import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    super.key,
    required this.title,
    required this.date,
    required this.money,
  });
  final String title, date, money;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only( bottom:8.0),
      child: Container(
        decoration: ShapeDecoration(
          color: Color.fromARGB(255, 244, 243, 243),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)) 
        ),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: ListTile(
            title: Text(title, style: AppStyles.semiBold16),
            subtitle: Text(date, style: AppStyles.regular16Gray),
            trailing: Text(
              money,
              style:
                  title == 'Cash Withdrawal'
                      ? AppStyles.semiBold20.copyWith(color: Color(0xffF3735E))
                      : AppStyles.semiBold20.copyWith(color: Color(0xff7DD97B)),
            ),
          ),
        ),
      ),
    );
  }
}
