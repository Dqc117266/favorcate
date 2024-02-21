

import 'package:flutter/material.dart';

class AppTheme {
  static const double bodynormalFontSize = 14;
  static const double smallFontSize = 16;
  static const double normalFontSize = 22;
  static const double largeFontSize = 24;

  static final Color norTextColors = Colors.red;
  static final Color darkTextColors = Colors.green;

  static final ThemeData norTheme = ThemeData(
    primarySwatch: Colors.pink,
    canvasColor: Color.fromRGBO(255, 254, 222, 1),
    useMaterial3: false,
    textTheme: TextTheme(
      bodySmall: TextStyle(fontSize: bodynormalFontSize),
      displaySmall: TextStyle(fontSize: smallFontSize, color: Colors.black87),
      displayMedium: TextStyle(fontSize: normalFontSize, color: Colors.black87),
      labelLarge: TextStyle(fontSize: largeFontSize, color: Colors.black87),
    )
  );

  static final ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.grey,
    textTheme: TextTheme(
      bodyMedium: TextStyle(fontSize: normalFontSize, color: darkTextColors)
    )
  );

}