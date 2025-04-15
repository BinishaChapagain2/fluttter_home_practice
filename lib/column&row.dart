import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row and Column widget"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Container(
        height: 300,
        width: 300,
        color: Colors.yellow,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("R", style: TextStyle(fontSize: 22)),
                Text("O", style: TextStyle(fontSize: 22)),
                Text("W", style: TextStyle(fontSize: 22)),
                Text("S", style: TextStyle(fontSize: 22)),
                Text("E", style: TextStyle(fontSize: 22)),
              ],
            ),

            Column(
              children: [
                Text("A", style: TextStyle(fontSize: 22, color: Colors.blue)),
                Text('b', style: TextStyle(fontSize: 22, color: Colors.blue)),
                Text("C", style: TextStyle(fontSize: 22, color: Colors.blue)),
                ElevatedButton(onPressed: () {}, child: Text("Click")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
