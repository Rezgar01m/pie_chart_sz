import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:pie_chart_sz/pie_chart_sz.dart';

void main() {
  test('adds one to input values', () {
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
    PieChartSz(
      colors: colors,
      values: values,
    );
    // expect(calculator.addOne(2), 3);
    // expect(calculator.addOne(-7), -6);
    // expect(calculator.addOne(0), 1);
  });
}
