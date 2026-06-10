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
        textTheme: TextTheme(
          titleMedium: TextStyle(
            color: Color.fromARGB(255, 193, 193, 193),
            fontSize: 20,
          ),
        ),
        scaffoldBackgroundColor: Color(0xFF1C1A1B),
        appBarTheme: AppBarThemeData(backgroundColor: const Color(0xFF1c1a1b)),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: const Color(0xFF585657),
        ),
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
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: Text('Home', style: theme.textTheme.titleMedium)),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: 'Abs'),
          BottomNavigationBarItem(
            icon: Icon(Icons.fast_forward),
            label: 'Horor',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFFd9d9d9),
        onTap: _onItemTapped,
      ),
    );
  }
}
