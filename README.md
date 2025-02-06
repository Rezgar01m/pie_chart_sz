<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->
# spaced Pie Chart ![Cirrus CI - Base Branch Build Status](https://img.shields.io/cirrus/github/rezgar01m/pie_chart_sz) [![GitHub stars](https://img.shields.io/github/stars/rezgar01m/pie_chart_sz.svg?style=social)](https://github.com/rezgar01m/pie_chart_sz) ![GitHub last commit](https://img.shields.io/github/last-commit/rezgar01m/pie_chart_sz.svg) [![Open Source Love](https://badges.frapsoft.com/os/v2/open-source.svg?v=103)](https://github.com/rezgar01m/pie_chart_sz)

This Flutter package provides a donut Chart Widget

## Installation
In the `dependencies:` section of your `pubspec.yaml`, add the following line:

[![Version](https://img.shields.io/pub/v/pie_chart_sz.svg)](https://pub.dartlang.org/packages/pie_chart_sz)
```yaml
dependencies:
  pie_chart_sz: <latest version>
```
## Usage
#### Import this class

```dart
import 'package:pie_chart/pie_chart.dart';
```
#### this a simple example code to use this package
<img src="https://raw.githubusercontent.com/rezgar01m/pie_chart_sz/master/res/s1.png"  height = "400" alt="PieChart">

```dart
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
```
