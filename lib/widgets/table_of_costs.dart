import 'package:flutter/material.dart';

class TableOfCosts extends StatelessWidget {
  const TableOfCosts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Table Of Costs',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: const Color.fromARGB(255, 231, 231, 231),
          ),
        ),
        centerTitle: true,
      ),
      body: Text('Table'),
    );
  }
}
