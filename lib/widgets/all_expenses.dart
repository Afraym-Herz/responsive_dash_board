import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_balance_row.dart';
import 'package:responsive_dash_board/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/widgets/background_widget.dart';

class AllExpenses extends StatefulWidget {
  const AllExpenses({super.key});

  @override
  State<AllExpenses> createState() => _AllExpensesState();
}

class _AllExpensesState extends State<AllExpenses> {
 

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: const Column(
        children: [
           AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpensesBalanceRow() ,
        ],
      ),
    );
  }
}
