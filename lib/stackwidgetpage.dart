import 'package:flutter/material.dart';

class Stackwidgetpage extends StatelessWidget {
  const Stackwidgetpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack Widget")),
      body: Container(
        width: 300,
        height: 300,
        child: Stack(
          children: [
            Container(width: 200, height: 200, color: Colors.red),
            Positioned(
              left: 21,
              top: 21,
              bottom: 21,
              right: 21,

              child: Container(width: 150, height: 150, color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
