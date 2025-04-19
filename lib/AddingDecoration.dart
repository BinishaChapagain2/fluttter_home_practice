import 'package:flutter/material.dart';

class Addingdecoration extends StatelessWidget {
  const Addingdecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adding decoration"),
        backgroundColor: Colors.green,
      ),

      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue,
        child: Center(
          child: InkWell(
            onTap: () {
              print("I am clicked");
            },

            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(width: 5, color: Colors.black),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 11,
                    color: Colors.grey,
                    spreadRadius: 11,
                  ),
                ],
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
