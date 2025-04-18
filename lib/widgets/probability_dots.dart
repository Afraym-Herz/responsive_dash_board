import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_probability_dot.dart';

class ProbabilityDots extends StatelessWidget {
  const ProbabilityDots({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomProbabilityDot(title: "Design service", percent: 40, color: Color(0xff208CC8)),
        CustomProbabilityDot(title: "Design product", percent: 25, color: Color(0xff4EB7F2)),
        CustomProbabilityDot(title: "title", percent: 20, color: Color(0xff064061)),
        CustomProbabilityDot(title: "title", percent: 22, color: Color(0xffE2DECD)),
      ],
    );
  }
}