import 'package:flutter/material.dart';

class TopUp extends StatefulWidget {
  final Function(String, String) onSend;
  const TopUp({super.key, required this.onSend});

  @override
  State<TopUp> createState() => _TopUpState();
}

class _TopUpState extends State<TopUp> {
  final sumController = TextEditingController();
  final descriptionController = TextEditingController();

  SizedBox formField(TextEditingController controller) {
    return SizedBox(
      width: 200,
      child: TextFormField(
        controller: controller,
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
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Top up balance", style: theme.textTheme.titleMedium),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text('Сумма'),
            ),
            formField(sumController),
            Padding(
              padding: EdgeInsets.only(top: 40, bottom: 20),
              child: Text('Источник'),
            ),
            formField(descriptionController),
            Padding(padding: EdgeInsets.only(top: 30)),
            TextButton(
              onPressed: () {
                widget.onSend(sumController.text, descriptionController.text);
                sumController.clear();
                descriptionController.clear();
              },
              style: TextButton.styleFrom(backgroundColor: Color(0xFF2d6ce8)),
              child: Text('Сохранить', style: theme.textTheme.bodyLarge),
            ),
          ],
        ),
      ),
    );
  }
}
