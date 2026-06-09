import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF1C1A1B),
        appBarTheme: AppBarThemeData(
          backgroundColor: const Color(0xFF1c1a1b)
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: const Color(0xFF1c1a1b)
        )
      ),
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
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = [
    Text("Index 0"),
    Text("Index 1"),
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
      appBar: AppBar(title: Text('Home')),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'Abs'),
          BottomNavigationBarItem(icon: Icon(Icons.fast_forward), label: 'Horor'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
