import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/models/custom_all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class InActiveCustomAllExpensesItem extends StatelessWidget {
  const InActiveCustomAllExpensesItem({
    super.key,
    required this.customAllExpensesItemModel,
  });
  final CustomAllExpensesItemModel customAllExpensesItemModel;
  

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only( left: 9),
                child: Row(
                  children: [
                    SvgPicture.asset(customAllExpensesItemModel.image , color: const Color(0xff4EB7F2) , ),
                    const Spacer() ,
                    const Icon(Icons.arrow_forward_rounded) ,
                  ],
                ),
              ),
              const SizedBox(height: 34),
              // Card(
              //   elevation: 0,
              //   color: Colors.white,
              //   child: ListTile(
              //     title: Text("Balance", style: AppStyles.semiBold16),
              //     subtitle: Text("April 2022", style: AppStyles.regular14),
              //   ),
              // ),
               Text(customAllExpensesItemModel.title , style: AppStyles.semiBold16, ) ,
               Text(customAllExpensesItemModel.sustitle , style: AppStyles.regular14, ),
               Text(
                customAllExpensesItemModel.dNumber ,
                style: AppStyles.semiBold24Skyle ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ActiveCustomAllExpensesItem extends StatelessWidget {
  const ActiveCustomAllExpensesItem({
    super.key,
    required this.customAllExpensesItemModel,
  });

  final CustomAllExpensesItemModel customAllExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff4EB7F2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only( left: 9),
                child: Row(
                  children: [
                    SvgPicture.asset(customAllExpensesItemModel.image , color: Colors.white , ),
                    const Spacer() ,
                    const Icon(Icons.arrow_forward_rounded) ,
                  ],
                ),
              ),
              const SizedBox(height: 34),
              // Card(
              //   elevation: 0,
              //   color: Colors.white,
              //   child: ListTile(
              //     title: Text("Balance", style: AppStyles.semiBold16),
              //     subtitle: Text("April 2022", style: AppStyles.regular14),
              //   ),
              // ),
               Text(customAllExpensesItemModel.title , style: AppStyles.semiBold16White  , ) ,
                Text(customAllExpensesItemModel.sustitle , style: AppStyles.regular14White  , ),
               Text(
                customAllExpensesItemModel.dNumber,
                style: AppStyles.semiBold24White
              ),
            ],
          ),
        ),
      ),
    );
  }
}

