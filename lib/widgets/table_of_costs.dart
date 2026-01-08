import 'package:flutter/material.dart';

class TableOfCosts extends StatefulWidget {
  const TableOfCosts({super.key});

  @override
  State<TableOfCosts> createState() => _TableOfCostsState();
}

class _TableOfCostsState extends State<TableOfCosts> {
  String titleOfSource = '';
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  TextFormField _createField(String inputTitle) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        label: Text(inputTitle),
      ),
    );
  }

  void _addSourceOfIncome(String inputTitle) {
    setState(() {
      final title = _createField(inputTitle);
      widgetList.add(title);
    });
  }

  void _submit() async {
    Navigator.of(context).pop(_controller.text);
  }

  Future<String?> _openDialog() => showDialog<String?>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const Text('What king of source?'),
      content: TextField(
        autofocus: true,
        decoration: InputDecoration(hintText: 'Enter the name'),
        controller: _controller,
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context, 'Cancel'),
          child: const Text('Cancel'),
        ),
        TextButton(onPressed: _submit, child: const Text('OK')),
      ],
    ),
  );

  List<TextFormField> widgetList = [];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Table Of Costs', style: theme.textTheme.titleLarge),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text('Source of Income'),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
              itemCount: widgetList.length,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: SizedBox(height: 50, child: widgetList[index]),
                      ),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                  ],
                );
              },
            ),
          ),
          IconButton(
            onPressed: () async {
              final titleOfSource = await _openDialog();
              if (titleOfSource == null || titleOfSource.isEmpty) return;
              setState(() {
                this.titleOfSource = titleOfSource;
                _addSourceOfIncome(titleOfSource);
              });
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
