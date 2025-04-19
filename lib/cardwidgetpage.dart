import 'package:flutter/material.dart';

class Cardwidgetpage extends StatelessWidget {
  const Cardwidgetpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Card")),

      body: Center(
        child: Card(
          shadowColor: Colors.red,
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              " Hello Binisha",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
