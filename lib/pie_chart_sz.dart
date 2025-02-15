library pie_chart_sz;

import 'package:flutter/material.dart';
import 'package:pie_chart_sz/SpacedDonutChar.dart';
import 'package:pie_chart_sz/ValueSettings.dart';

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
  String? centerText;
  Valuesettings? valueSettings;
  double gapSize = 0.2;
  TextStyle centerTextStyle;

  PieChartSz(
      {super.key,
      this.values,
      this.colors,
      this.centerText = "Rezgar",
      this.centerTextStyle = const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      this.gapSize = 0.2,
      this.valueSettings = const Valuesettings(showValues: false)});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(300, 300),
      painter: SpacedDonutChartPainter(
        colors: this.colors!,
        values: this.values!,
        gapSize: gapSize,
        valueSettings: valueSettings!,
        centerTextStyle: centerTextStyle,
        centerText: centerText,
      ),
    );
  }
}
