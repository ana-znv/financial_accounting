import 'package:financial_accounting/main_bottom_app_bar.dart';
import 'package:financial_accounting/theme.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'Financial Accounting',
      home: const MainBottomAppBar(),
    );
  }
}