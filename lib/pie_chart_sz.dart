library pie_chart_sz;

import 'package:flutter/material.dart';
import 'package:pie_chart_sz/SpacedDonutChar.dart';

class PieChartSz extends StatelessWidget {
  const PieChartSz({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
    size: Size(300, 300),
    painter: SpacedDonutChartPainter(),
    );
  }
}

