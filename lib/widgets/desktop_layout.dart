import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/my_card.dart';
import 'package:responsive_dash_board/widgets/my_card_page_view.dart';
import 'package:responsive_dash_board/widgets/my_card_section.dart';
import 'package:responsive_dash_board/widgets/quick_invoice.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer() , ),
        SizedBox(width: 24,) , 
        Expanded(flex: 3,
        child: SingleChildScrollView(
          child: Column(
            children: [
              AllExpenses(),
              SizedBox(height: 24,),
              QuickInvoice() ,
            ],
          ),
        ) ,),
        SizedBox(width: 15),
        Expanded(flex: 2, child: MyCardSection(), ),
      ],
    );
  }
}
