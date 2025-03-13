import 'package:flutter/material.dart';
import 'package:responsive_dash_board/view/dash_board_view.dart';

void main() {
  runApp(const ResponsiveDashBoard());
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DashBoardView(),
    );
  }
}



