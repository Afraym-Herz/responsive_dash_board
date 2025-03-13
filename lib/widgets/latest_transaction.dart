import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/latest_transaction_listview.dart';


class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start ,
      children: [
        Text("Latest Transaction") ,
        SizedBox(height: 12,) ,
        LatestTransactionListview(),
      ],
    );
  }
}
