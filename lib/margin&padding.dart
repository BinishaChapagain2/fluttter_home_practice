import 'package:flutter/material.dart';

class MarginPaddingWidget extends StatelessWidget {
  const MarginPaddingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Margin and Padding Widget"))),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          color: Colors.blueAccent,
          margin: EdgeInsets.all(11),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
              bottom: 10,
            ),
            child: Text("Padding Hello WOrld"),
          ),
        ),
      ),
    );
  }
}
