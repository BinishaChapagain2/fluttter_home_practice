import 'package:flutter/material.dart';

class Circleavatarpage extends StatelessWidget {
  const Circleavatarpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Circle avatar page")),
      body: CircleAvatar(
        backgroundImage: AssetImage('assets/images/binisha.jpg'),

        minRadius: 50,
      ),
    );
  }
}
