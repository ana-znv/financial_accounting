import 'package:flutter/material.dart';

final theme = ThemeData(
  appBarTheme: AppBarThemeData(
    backgroundColor: const Color.fromARGB(255, 54, 54, 54),
  ),
  scaffoldBackgroundColor: const Color.fromARGB(255, 36, 36, 36),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color.fromARGB(255, 54, 54, 54),
  ),
  tabBarTheme: TabBarThemeData(
    labelStyle: TextStyle(
      color: Colors.white70,
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
    unselectedLabelStyle: TextStyle(
      color: Colors.white24,
      fontSize: 18,
      fontWeight: FontWeight.w400,
    ),
    dividerColor: Colors.transparent,
    indicatorColor: Colors.transparent,
  ),
  textTheme: TextTheme(
    bodyMedium: TextStyle(fontSize: 22, color: Colors.white70),
    titleLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: const Color.fromARGB(255, 231, 231, 231),
    ),
  ),
);
