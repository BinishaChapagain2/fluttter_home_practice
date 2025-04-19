import 'package:flutter/material.dart';

class Expandedwidget extends StatelessWidget {
  const Expandedwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expanded Weidget")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(flex: 2, child: Container(height: 100, color: Colors.blue)),
          Expanded(flex: 3, child: Container(height: 100, color: Colors.red)),
          Expanded(child: Container(height: 100, color: Colors.green)),
          Expanded(
            child: Container(width: 100, height: 100, color: Colors.yellow),
          ),
        ],
      ),
    );
  }
}
