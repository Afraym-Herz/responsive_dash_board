import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/custom_all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/custom_all_expenses_item.dart';

class AllExpensesBalanceRow extends StatefulWidget {
  const AllExpensesBalanceRow({super.key});

  @override
  State<AllExpensesBalanceRow> createState() =>
      _AllExpensesBalanceRowState();
}

class _AllExpensesBalanceRowState
    extends State<AllExpensesBalanceRow> {
  final List<CustomAllExpensesItemModel> customAllExpensesItemList = [
    CustomAllExpensesItemModel(
      image: AppImages.balance,
      title: "Balance",
      sustitle: "April 2022",
      dNumber: "22,197",
    ),

    CustomAllExpensesItemModel(
      image: AppImages.income,
      title: "Income",
      sustitle: "April 2022",
      dNumber: "22,197",
    ),

    CustomAllExpensesItemModel(
      image: AppImages.expenses,
      title: "Expenses",
      sustitle: "April 2022",
      dNumber: "22,197",
    ),
  ];

  int indexActive = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children:
          customAllExpensesItemList.asMap().entries.map((e) {
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  if (indexActive != e.key) {
                    setState(() {
                      indexActive = e.key;
                    });
                  }
                },
                child:
                    e.key == indexActive
                        ? ActiveCustomAllExpensesItem(
                          customAllExpensesItemModel: e.value,
                        )
                        : InActiveCustomAllExpensesItem(
                          customAllExpensesItemModel: e.value,
                        ),
              ),
            );
          }).toList(),
    );
  }
}

 // ListView.builder(
          //   scrollDirection: Axis.horizontal,
          //   shrinkWrap: true,
          //   physics: NeverScrollableScrollPhysics(),
          // ),

          // we can't create listview in this case because in horizontal list we must give its height and can't add expanded items , it will make smallest space to create items