import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String price;
  final String description;
  const Home({super.key, required this.price, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 150)),
          Text(price),
          Text(description)
        ],
      ),
    ),);
  }
}
