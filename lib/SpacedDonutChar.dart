import 'package:flutter/material.dart';
import 'dart:math';

import 'package:pie_chart_sz/ValueSettings.dart';

class SpacedDonutChartPainter extends CustomPainter {
  // color of angles
  List<Color> colors;
  // value of angles
  List<double> values;
  // center text of widget
  String? centerText;
  // center text style
  TextStyle? centerTextStyle;
  // value
  Valuesettings valueSettings;
  double gapSize = 0.2;

  SpacedDonutChartPainter({
    required this.colors,
    required this.values,
    this.centerText,
    required this.valueSettings,
    required this.gapSize,
    required this.centerTextStyle,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 24
      ..strokeCap = StrokeCap.round;

    final double total = values.reduce((a, b) => a + b);
    double startAngle = -pi / 2;

    final Rect rect = Rect.fromCenter(
      center: size.center(Offset.zero),
      width: size.width - 60,
      height: size.height - 60,
    );
    for (int i = 0; i < values.length; i++) {
      final sweepAngle = (values[i] / total) * 2 * pi * (1 - gapSize);

      paint.color = colors[i];

      canvas.drawArc(rect, startAngle, sweepAngle, false, paint);
      // Calculate midpoint for label placement
      double midAngle = startAngle + sweepAngle / 2;

      if (valueSettings.showValues) {
        Offset lineStart = Offset(
          size.width / 2 + cos(midAngle) * (size.width / 2.5),
          size.height / 2 + sin(midAngle) * (size.height / 2.5),
        );
        Offset lineEnd = Offset(
          size.width / 2 + cos(midAngle) * (size.width / 2),
          size.height / 2 + sin(midAngle) * (size.height / 2),
        );
        Offset labelPosition = Offset(
          size.width / 2 + cos(midAngle) * (size.width / 1.8),
          size.height / 2 + sin(midAngle) * (size.height / 1.8),
        );

        // Draw connecting line outside the chart
        final Paint linePaint = Paint()
          ..color = colors[i]
          ..strokeWidth = 2;
        canvas.drawLine(lineStart, lineEnd, linePaint);

        // Draw value text outside the chart
        final textPainter = TextPainter(
          text: TextSpan(
            text: values[i].toString(),
            style: valueSettings.ValueTextStyle,
          ),
          textDirection: TextDirection.ltr,
        );
        textPainter.layout(minWidth: 0, maxWidth: size.width);
        textPainter.paint(
            canvas,
            Offset(
              labelPosition.dx - textPainter.width / 2,
              labelPosition.dy - textPainter.height / 2,
            ));
      }

      startAngle += sweepAngle + (2 * pi * gapSize / values.length);
    }
    final textPainter = TextPainter(
      text: TextSpan(
        text: centerText,
        style: centerTextStyle,
      ),
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    );
    textPainter.layout(minWidth: 0, maxWidth: size.width);
    final offset = Offset(
      (size.width - textPainter.width) / 2,
      (size.height - textPainter.height) / 2,
    );
    textPainter.paint(canvas, offset);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
