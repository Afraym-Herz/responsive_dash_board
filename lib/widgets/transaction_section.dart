import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/transaction_item.dart';

class TransactionSection extends StatelessWidget {
  const TransactionSection({super.key});

  final List<TransactionItem> transactionItemList = const [
    TransactionItem(
      title: "Cash Withdrawal",
      date: "13 Apr, 2022 ",
      money: r"$20,129",
    ),
    TransactionItem(
      title: "Landing Page project",
      date: "13 Apr, 2022 at 3:30 PM",
      money: r"$2,000",
    ),

    TransactionItem(
      title: "Juni Mobile App project",
      date: "13 Apr, 2022 at 3:30 PM",
      money: r"$20,129",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Transaction History", style: AppStyles.semiBold20),
            Text(
              "See all",
              style: AppStyles.medium16.copyWith(color: Color(0xff4EB7F2)),
            ),
          ],
        ),
        SizedBox(height: 20),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "13 April 2022",
            style: AppStyles.medium16.copyWith(color: Color(0xffAAAAAA)),
          ),
        ),
        SizedBox(height: 16),
        ListView.builder(
          itemBuilder: (context , index){
          return transactionItemList[index] ;
        },
        itemCount: transactionItemList.length,
        shrinkWrap: true,
        
        )
      ],
    );
  }
}
