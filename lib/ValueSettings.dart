import 'package:flutter/material.dart';

class Valuesettings {
  final bool showValues;
  final TextStyle? ValueTextStyle;

  const Valuesettings(
      {required this.showValues,
      this.ValueTextStyle = const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      )});
}
