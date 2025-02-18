library pie_chart_sz;
export './ValueSettings.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart_sz/SpacedDonutChar.dart';
import 'package:pie_chart_sz/ValueSettings.dart';

class PieChartSz extends StatelessWidget {
  // color of
  final List<Color>? colors;

  final List<double>? values;
  final String? centerText;
  final Valuesettings? valueSettings;
  final double gapSize;
  final TextStyle centerTextStyle;

  PieChartSz(
      {super.key,
      this.values = const [
        50,
        20,
        20,
        5,
        5,
      ],
      this.colors = const [
        Colors.purple,
        Colors.blue,
        Colors.orange,
        Colors.red,
        Colors.teal,
      ],
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
