import 'package:flutter/material.dart';

class Scrollviews extends StatelessWidget {
  const Scrollviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scroll View Widget", style: TextStyle(fontSize: 25)),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      color: Colors.lightGreen,
                      margin: EdgeInsets.only(right: 11),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      color: Colors.red,
                      margin: EdgeInsets.only(right: 11),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      color: Colors.purple,
                      margin: EdgeInsets.only(right: 11),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      color: Colors.blue,
                      margin: EdgeInsets.only(right: 11),
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,

                color: Colors.yellow,
                margin: EdgeInsets.only(bottom: 11),
              ),
              Container(
                height: 200,

                color: Colors.purple,
                margin: EdgeInsets.only(bottom: 11),
              ),
              Container(
                height: 200,

                color: Colors.red,
                margin: EdgeInsets.only(bottom: 11),
              ),
              Container(
                height: 200,

                color: Colors.blue,
                margin: EdgeInsets.only(bottom: 11),
              ),
              Container(
                height: 200,

                color: Colors.purple,
                margin: EdgeInsets.only(bottom: 11),
              ),
              Container(
                height: 200,

                color: Colors.red,
                margin: EdgeInsets.only(bottom: 11),
              ),
              Container(
                height: 200,

                color: Colors.blue,
                margin: EdgeInsets.only(bottom: 11),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
