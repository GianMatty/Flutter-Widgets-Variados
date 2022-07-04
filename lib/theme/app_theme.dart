import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  // nota: TEMA CLARO
  static final ThemeData lighTheme = ThemeData.light().copyWith(
    // Color Primario
    primaryColor: Colors.indigo,

    // AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),

    // TextButton Theme
    textButtonTheme:
        TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),
  );

  // nota: TEMA OSCURO
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    // Color Primario
    primaryColor: Colors.indigo,

    //AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),
    scaffoldBackgroundColor: Colors.black,
  );
}
