library pie_chart_sz;

import 'package:flutter/material.dart';
import 'package:pie_chart_sz/SpacedDonutChar.dart';

class PieChartSz extends StatelessWidget {
  List<Color>? colors = [
    Colors.purple,
    Colors.blue,
    Colors.orange,
    Colors.red,
    Colors.teal,
  ];

  List<double>? values = [
    50,
    20,
    20,
    5,
    5,
  ];
   PieChartSz({super.key,this.values,this.colors});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
    size: Size(300, 300),
    painter: SpacedDonutChartPainter(),
    );
  }
}

