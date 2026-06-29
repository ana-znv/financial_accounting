import 'package:financial_accounting/models/transaction.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final List<Transaction> transactions;
  const Home({super.key, required this.transactions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(transactions[index].price, style: TextStyle(color: Colors.red),),
            subtitle: Text(transactions[index].description),
          );
        }, 
        separatorBuilder: (BuildContext context, int index) => const Divider(), 
        itemCount: transactions.length),
    );
  }
}
