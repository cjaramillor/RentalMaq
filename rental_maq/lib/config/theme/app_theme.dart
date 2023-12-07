import 'package:flutter/material.dart';

const colorsList = <Color>[
  Colors.blue,
  Colors.red,
  Colors.black,
  Colors.green,
  Colors.purple,
  Colors.deepOrange,
  Colors.deepPurple,
  Colors.teal
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor < colorsList.length,
            'Selected Color must be greater than 0.');

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorsList[selectedColor],
      appBarTheme: const AppBarTheme(
        centerTitle: false,
      ));
}
