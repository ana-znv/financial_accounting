import 'package:flutter/material.dart';

class TableOfCosts extends StatelessWidget {
  const TableOfCosts({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Table Of Costs', style: theme.textTheme.titleLarge),
        centerTitle: true,
      ),
      body: Text('Table'),
    );
  }
}
