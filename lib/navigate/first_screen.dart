import 'package:flutter/material.dart';
import 'package:flutter_practice/navigate/second_screen.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final GlobalKey<FormState> _addFruitFormKey = GlobalKey();

  final List<String> fruitName = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Array of fruits")),
      body: Column(
        children: [
          Form(
            key: _addFruitFormKey,
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
                  onSaved: (newvalue) {
                    setState(() {
                      fruitName.add(newvalue!);
                    });
                  },
                ),

                FilledButton.tonal(
                  onPressed: () {
                    if (!_addFruitFormKey.currentState!.validate()) {
                      return;
                    }
                    _addFruitFormKey.currentState!.save();
                  },
                  child: Text("Add"),
                ),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      fruitName.clear();
                    });
                  },
                  child: Text("Clear"),
                ),
              ],
            ),
          ),

          FilledButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SecondScreen(fruitName: fruitName),
                ),
              );
            },
            child: Text("Go to next Screen"),
          ),

          SizedBox(
            height: 200,
            child: ListView.builder(
              itemBuilder: (ctx, i) => Text(fruitName[i]),
              itemCount: fruitName.length,
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