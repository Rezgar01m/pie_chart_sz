import 'package:flutter/material.dart';
import 'dart:math';
class SpacedDonutChartPainter extends CustomPainter {
  final List<Color> colors = [
    Colors.purple,
    Colors.blue,
    Colors.orange,
    Colors.red,
    Colors.teal,
  ];

  final List<double> values = [
    50,
    20,
    20,
    5,
    5,
  ];

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
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}