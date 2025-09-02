import 'package:flutter/material.dart';

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
