import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {

  int activeIndex = -1 ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: PieChart(getPieChart())) ;
  }
  
  PieChartData getPieChart() {
    return PieChartData(
      sectionsSpace: 0,
      pieTouchData: PieTouchData(
        enabled: true ,
        touchCallback: (p0, pieTouchData) {
          activeIndex = pieTouchData?.touchedSection?.touchedSectionIndex ?? -1 ;
          setState(() {});
        },
      ) ,
      sections: [
        PieChartSectionData(
          value: 40,
          color: Color(0xff208CC8) ,
          radius: activeIndex == 0 ? 30 : 20 ,
          showTitle: false ,
        ),
        PieChartSectionData(
          value: 25,
          color: Color(0xff4EB7F2) ,
          radius: activeIndex == 1 ? 30 : 20 ,
          showTitle: false ,
        ),
        PieChartSectionData(
          value: 20,
          color: Color(0xff064061) ,
          radius: activeIndex == 2 ? 30 : 20 ,
          showTitle: false ,
        ),
        PieChartSectionData(
          value: 22,
          color: Color(0xffE2DECD) ,
          radius: activeIndex == 3 ? 30 : 20 ,
          showTitle: false ,
        ),
      ]
    ) ;
  }
}