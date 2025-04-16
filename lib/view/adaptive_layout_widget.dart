import 'package:flutter/material.dart';

class AdaptiveLayoutWidget extends StatelessWidget {
  const AdaptiveLayoutWidget({super.key, required this.mobileLayout, required this.tabletLayout, required this.desktopLayout});

  final WidgetBuilder mobileLayout , tabletLayout , desktopLayout ;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context , constraints){ // the layoutBuilder just get the size of its space , if we wrap layoutBuilder with any sized widgets we must sum there spaces to get correct size in layoutBuilder
      if (constraints.maxWidth < 600) {
        return  mobileLayout(context) ;
      }
      else if (constraints.maxWidth < 1200) {
        return tabletLayout(context) ;
      }
      else {
        return desktopLayout(context) ;
      }
    }) ;
  }
}