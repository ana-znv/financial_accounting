import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: Text('Add', style: theme.textTheme.titleMedium)),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text('Сумма'),
            ),
            SizedBox(
              width: 200,
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 166, 164, 179),
                    ),
                  ),
                  isDense: true,
                ),
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40, bottom: 10),
              child: Text('Описание'),
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 166, 164, 179),
                    ),
                  ),
                  isDense: true,
                ),
                style: theme.textTheme.bodyMedium,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 40)),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Color(0xFF2d6ce8)),
              child: Text('Сохранить', style: theme.textTheme.bodyLarge,),
            ),
          ],
        ),
      ),
    );
  }
}
