import 'package:financial_accounting/theme/theme.dart';
import 'package:flutter/material.dart';

import 'features/accounting/accounting.dart';
import 'features/graphic/graphic.dart';
import 'features/history/history.dart';
import 'features/profile/profile.dart';
import 'features/report/report.dart';

class FinancialAccounting extends StatelessWidget {
  const FinancialAccounting({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Financial Accounting',
      theme: theme,
      home: BottomNavigation(),
    );
  }
}

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  static const List<Widget> _widget = <Widget>[
    History(),
    Graphic(),
    Accounting(),
    Report(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widget.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: "History",
            backgroundColor: Color.fromARGB(255, 39, 39, 39),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.graphic_eq),
            label: "Graphics",
            backgroundColor: Color.fromARGB(255, 39, 39, 39),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "Add",
            backgroundColor: Color.fromARGB(255, 39, 39, 39),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.report_rounded),
            label: "Report",
            backgroundColor: Color.fromARGB(255, 39, 39, 39),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.man),
            label: "Profile",
            backgroundColor: Color.fromARGB(255, 39, 39, 39),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
        iconSize: 32,
      ),
    );
  }
}
