import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String name;

  const SecondScreen({required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second screen")),
      body: Column(
        children: [
          Text(name),
          Center(
            child: FilledButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Goto Back "),
            ),
          ),
        ],
      ),
    );
  }
}
