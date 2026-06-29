import 'package:financial_accounting/models/transaction.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final List<Transaction> transactions;
  const Home({super.key, required this.transactions});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(
              widget.transactions[index].price,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            subtitle: Text(widget.transactions[index].description),
            trailing: IconButton(
              onPressed: () {
                setState(() {
                  widget.transactions.removeAt(index);
                });
              },
              icon: Icon(Icons.delete),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: widget.transactions.length,
      ),
    );
  }
}
