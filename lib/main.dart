import 'package:financial_accounting/screens/add.dart';
import 'package:financial_accounting/screens/home.dart';
import 'package:financial_accounting/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

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

class MainBottomAppBar extends StatefulWidget {
  const MainBottomAppBar({super.key});

  @override
  State<MainBottomAppBar> createState() => _MainBottomAppBarState();
}

class _MainBottomAppBarState extends State<MainBottomAppBar> {
  String price = '';
  String descripion = '';

  void updateMessage(String newPrice, String newDescription) {
    setState(() {
      price = newPrice;
      descripion = newDescription;
    });
  }

  int _selectedIndex = 0;
  List<Widget> get _widgetOptions => [
    Home(price: price, description: descripion,),
    Add(onSend: updateMessage),
    Text("Index 2"),
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
            icon: Icon(Icons.fast_forward),
            label: 'Horor',
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
