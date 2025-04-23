import 'package:flutter/material.dart';

class ListviewBuilderExample extends StatelessWidget {
  const ListviewBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List view Builder")),

      body: ListView.builder(
        itemBuilder: (ctx, i) {
          return Text(i.toString(), style: TextStyle(fontSize: 26));
        },
        itemCount: 60,
      ),
    );
  }
}
