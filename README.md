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

This Flutter package provides a donut Chart Widget

## Features
## Features

## Installation
In the `dependencies:` section of your `pubspec.yaml`, add the following line:

[![Version](https://img.shields.io/pub/v/pie_chart_sz.svg)](https://pub.dartlang.org/packages/pie_chart_sz)

## Usage

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
