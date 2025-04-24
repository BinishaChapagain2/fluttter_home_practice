import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final List<String> fruitName;
  const SecondScreen({required this.fruitName, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second screen")),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: ListView.builder(
              itemBuilder: (ctx, i) => Text(fruitName[i]),
              itemCount: fruitName.length,
            ),
          ),
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
