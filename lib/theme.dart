import 'package:flutter/material.dart';

final theme = ThemeData(
  textTheme: TextTheme(
    titleMedium: TextStyle(
      color: Color.fromARGB(255, 193, 193, 193),
      fontSize: 20,
    ),
    bodyMedium: TextStyle(
      color: Color.fromARGB(255, 176, 176, 176),
      fontSize: 16
    ),
    labelMedium: TextStyle(
      color: Colors.white70,
      fontWeight: FontWeight.w300,
    )
  ),
  scaffoldBackgroundColor: Color(0xFF1C1A1B),
  appBarTheme: AppBarThemeData(backgroundColor: const Color(0xFF1c1a1b)),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: const Color(0xFF19181f),
  ),
);
