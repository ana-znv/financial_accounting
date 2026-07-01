import 'package:financial_accounting/models/transaction.dart';
import 'package:financial_accounting/screens/add.dart';
import 'package:financial_accounting/screens/home.dart';
import 'package:financial_accounting/screens/top_up.dart';
import 'package:flutter/material.dart';

class MainBottomAppBar extends StatefulWidget {
  const MainBottomAppBar({super.key});

  @override
  State<MainBottomAppBar> createState() => _MainBottomAppBarState();
}

class _MainBottomAppBarState extends State<MainBottomAppBar> {
  List<Transaction> transactions = [];
  String balanceSum = '';
  String topUpDescription = '';

  void updateMessage(Transaction newTransaction) {
    setState(() {
      transactions.add(newTransaction);
    });
  }

  void initializeTopUp(String sum, String description) {
    setState(() {
      balanceSum = sum;
      topUpDescription = description;
    });
  }

  int _selectedIndex = 0;
  List<Widget> get _widgetOptions => [
    Home(
      transactions: transactions,
      balanceSum: balanceSum,
      topUpDescription: topUpDescription,
    ),
    Add(onSend: updateMessage),
    TopUp(onSend: initializeTopUp),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            label: 'Top-Up',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 58, 114, 255),
        unselectedItemColor: const Color.fromARGB(255, 173, 172, 179),
        onTap: _onItemTapped,
      ),
    );
  }
}
