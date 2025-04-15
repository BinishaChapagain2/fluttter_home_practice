import 'package:flutter/material.dart';

class InkStudy extends StatelessWidget {
  const InkStudy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inkwell Widget "),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            print("On Tap");
          },
          onLongPress: () {
            print("On Long pressed");
          },

          child: Container(
            width: 200,
            height: 200,
            color: Colors.amber,
            child: Center(
              child: InkWell(
                onTap: () {
                  print("Text Widget Tapped");
                },
                child: Text("On Text click", style: TextStyle(fontSize: 25)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
