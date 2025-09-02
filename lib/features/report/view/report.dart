import 'package:flutter/material.dart';

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
