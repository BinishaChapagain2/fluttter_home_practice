import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Array of fruits")),
      body: Column(
        children: [
          Form(
            child: Column(
              spacing: 10,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Fruits",
                  ),

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please provide fruit name";
                    } else if (value.length < 3) {
                      return "provide valid fruit name";
                    } else {
                      return null;
                    }
                  },
                ),
                FilledButton.tonal(onPressed: () {}, child: Text("Add")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// body: Center(
      //   child: FilledButton(
      //     onPressed: () {
      //       Navigator.of(context).push(
      //         MaterialPageRoute(
      //           builder: (context) => SecondScreen(name: "Demo"),
      //         ),
      //       );
      //     },
      //     child: Text("Goto Next Page "),
      //   ),
      // ),