import 'package:flutter/material.dart';

void main() {
  runApp(const FinancialAccounting());
}

class FinancialAccounting extends StatelessWidget {
  const FinancialAccounting({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Financial Accounting',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 55, 55, 55),
        textTheme: TextTheme(
          labelMedium: TextStyle(fontSize: 25, color: Colors.white70),
        ),
      ),
      home: const History(),
    );
  }
}

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("History", style: theme.textTheme.labelMedium),
        backgroundColor: Color.fromARGB(255, 39, 39, 39),
      ),
    );
  }
}
