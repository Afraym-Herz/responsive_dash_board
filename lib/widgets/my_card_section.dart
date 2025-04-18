import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/background_widget.dart';
import 'package:responsive_dash_board/widgets/dots_indicator.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';
import 'package:responsive_dash_board/widgets/my_card_page_view.dart';
import 'package:responsive_dash_board/widgets/transaction_section.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  int currentIndex = 0;
  late PageController pageController;
  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(() {
      currentIndex = pageController.page!.toInt();
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
       color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: BackgroundWidget(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("My Card", style: AppStyles.semiBold20),
              SizedBox(height: 20),
              MyCardPageView(pageController: pageController),
              SizedBox(height: 20),
              DotsIndicator(currentIndex: currentIndex),
              SizedBox(height: 20,),
              Divider(
                thickness: .5,
              ),
              SizedBox(height: 20,),
              TransactionSection(),
              SizedBox(height: 24,),
              IncomeSection(),
            ],
          ),
        ),
      ),
    );
  }
}
