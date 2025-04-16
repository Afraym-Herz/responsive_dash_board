import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/dots_indicator.dart';
import 'package:responsive_dash_board/widgets/my_card_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  
  int currentIndex = 0 ;
  late PageController pageController ;
  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(
      (){
       currentIndex = pageController.page!.toInt();
       setState((){});
      }
    );
    
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text("My Card" , style: AppStyles.semiBold20 ,),
        SizedBox(height: 20,),
        MyCardPageView(pageController: pageController,) ,
        SizedBox(height: 20,),
        DotsIndicator(currentIndex: currentIndex) ,
      ],
    );
  }
}