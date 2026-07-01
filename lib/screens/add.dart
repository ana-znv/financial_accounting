import 'package:financial_accounting/models/transaction.dart';
import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  final Function(Transaction) onSend;
  const Add({super.key, required this.onSend});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  final priceController = TextEditingController();
  final descripionController = TextEditingController();

  @override
  void dispose() {
    priceController.dispose();
    descripionController.dispose();
    super.dispose();
  }

  SizedBox formField(TextEditingController controller) {
    return SizedBox(
      width: 200,
      child: TextFormField(
        controller: controller,
        onFieldSubmitted: (value) {
          setState(() {
            controller.clear();
          });
        },
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
      appBar: AppBar(title: Text('Add', style: theme.textTheme.titleMedium)),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text('Сумма'),
            ),
            formField(priceController),
            Padding(
              padding: EdgeInsets.only(top: 40, bottom: 10),
              child: Text('Описание'),
            ),
            formField(descripionController),
            Padding(padding: EdgeInsets.only(top: 40)),
            TextButton(
              onPressed: () {
                Transaction transaction = Transaction(
                  price: priceController.text,
                  description: descripionController.text,
                );
                widget.onSend(transaction);
                priceController.clear();
                descripionController.clear();
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
