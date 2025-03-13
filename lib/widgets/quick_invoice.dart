import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_infos_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/background_widget.dart';
import 'package:responsive_dash_board/widgets/custom_button.dart';
import 'package:responsive_dash_board/widgets/latest_transaction.dart';
import 'package:responsive_dash_board/widgets/quick_Invioce_title.dart';
import 'package:responsive_dash_board/widgets/user_infos_item.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  static const List<UserInfosItemModel> userInfosList = [
    UserInfosItemModel(title: "Customer Name", hint: 'Type customer name'),
    UserInfosItemModel(title: "Customer Email", hint: 'Type customer email'),
    UserInfosItemModel(title: "Item name", hint: 'Type customer name'),
    UserInfosItemModel(title: "Item amount", hint: 'USD'),
  ];
  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          const SliverToBoxAdapter(child: QuickInvoiceTitle()),
          const SliverToBoxAdapter(child: SizedBox(height: 24)),
          const SliverToBoxAdapter(child: LatestTransaction()),
          const SliverToBoxAdapter(child: Divider(height:48 , thickness: 1, color: Color(0xffF1F1F1), ) ),
          SliverGrid.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              childAspectRatio: 3,
            ),
            itemBuilder: (context, index) {
              return UserInfosItem(userInfosItemModel: userInfosList[index]);
                 
            },
            itemCount: userInfosList.length,
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 24)),
          const SliverToBoxAdapter(
            child: Row(
              children: [
                CustomButton(
                  title: Text("Add more details", style: AppStyles.semiBold18),
                  color: Colors.white,
                ),
                CustomButton(
                  title: Text("Send Money", style: AppStyles.semiBold18White),
                  color: Color(0xff4EB7F2),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
