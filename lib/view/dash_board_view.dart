import 'package:flutter/material.dart';
import 'package:responsive_dash_board/view/adaptive_layout_widget.dart';
import 'package:responsive_dash_board/widgets/desktop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => Placeholder(),
        tabletLayout: (context) => Placeholder(),
        desktopLayout: (context) => DesktopLayout(),
      ),
    );
  }
}
