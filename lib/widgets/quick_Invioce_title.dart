import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class QuickInvoiceTitle extends StatelessWidget {
  const QuickInvoiceTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text("QuickInvoice", style: AppStyles.semiBold20),
        Expanded(child: SizedBox()),
        SizedBox(
          height: 48,
          width: 48,
          child: Icon(Icons.add, color: Color(0xff4EB7F2)),
        ),
      ],
    );
  }
}
