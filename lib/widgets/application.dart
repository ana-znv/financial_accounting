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
      ),
      home: MainBottomBar(),
    );
  }
}
