import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  /*
types of button:
1.Text Button(Flat Button)
2.Elevated Button(Raised Button)
3.Oulined Button


//
Type of use  button start

1) TextButton(
        onPressed: () {
          print("I am clicked");
        },
        child: Text("clicked here!..."),

        onLongPress: () {
          print("Long pressed");
        },
      ),


  2) ElevatedButton(
        onPressed: () {
          print(" I am elevetaed button pressed");
        },
        child: Text("Clicked here!...."),
      ),
    );    
//


*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Button Page",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),

      body: OutlinedButton(
        onPressed: () {
          print("I am outline button");
        },

        style: OutlinedButton.styleFrom(backgroundColor: Colors.amberAccent),

        child: Text("Click here!"),
      ),
    );
  }
}
