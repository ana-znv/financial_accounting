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
      home: BottomNavigation(),
    );
  }
}

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
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

class Graphic extends StatefulWidget {
  const Graphic({super.key});

  @override
  State<Graphic> createState() => _GraphicState();
}

class _GraphicState extends State<Graphic> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Graphics", style: theme.textTheme.labelMedium),
        backgroundColor: Color.fromARGB(255, 39, 39, 39),
      ),
    );
  }
}

class Accounting extends StatefulWidget {
  const Accounting({super.key});

  @override
  State<Accounting> createState() => _AccountingState();
}

class _AccountingState extends State<Accounting> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Add", style: theme.textTheme.labelMedium),
        backgroundColor: Color.fromARGB(255, 39, 39, 39),
      ),
    );
  }
}

class Report extends StatefulWidget {
  const Report({super.key});

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Report", style: theme.textTheme.labelMedium),
        backgroundColor: Color.fromARGB(255, 39, 39, 39),
      ),
    );
  }
}

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Profile", style: theme.textTheme.labelMedium),
        backgroundColor: Color.fromARGB(255, 39, 39, 39),
      ),
    );
  }
}
