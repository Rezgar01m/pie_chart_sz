import 'package:flutter/material.dart';
import 'dart:math';

class SpacedDonutChartPainter extends CustomPainter {
  List<Color> colors;
  List<double> values;

  SpacedDonutChartPainter({required this.colors, required this.values});

  final double gapSize = 0.2;

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

      startAngle += sweepAngle + (2 * pi * gapSize / values.length);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
