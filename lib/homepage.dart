import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          "Hello World",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.yellowAccent,
          child: Center(
            child: Text(
              "Hi my name is binisha",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                backgroundColor: Colors.red,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
