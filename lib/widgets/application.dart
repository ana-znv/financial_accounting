import 'package:financial_accounting/widgets/main_bottom_bar.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarThemeData(
          backgroundColor: const Color.fromARGB(255, 54, 54, 54),
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 36, 36, 36),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color.fromARGB(255, 54, 54, 54),
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(fontSize: 22, color: Colors.white70),
          titleLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: const Color.fromARGB(255, 231, 231, 231),
          )
        ),
      ),
      home: MainBottomBar(),
    );
  }
}
