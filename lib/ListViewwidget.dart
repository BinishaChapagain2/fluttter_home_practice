import 'package:flutter/material.dart';

class Listviewwidget extends StatelessWidget {
  Listviewwidget({super.key});

  var arrNames = [
    'Binisha',
    'Chapagain',
    'shivanagar',
    'bharatpur',
    'barsha',
    'arun',
    'swostik',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Veiw widget")),

      // Center(
      //   child: ListView(
      //     scrollDirection: Axis.vertical,
      //     reverse: true,
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(
      //           "One",
      //           style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(
      //           "Two",
      //           style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(
      //           "Three",
      //           style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(
      //           "Four",
      //           style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(
      //           "Five",
      //           style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          // return Text(
          //   arrNames[index],
          //   style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          // );
          return Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      arrNames[index],
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text("Binisha"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  arrNames[index],
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          );
        },
        itemCount: arrNames.length,
        separatorBuilder: (context, index) {
          return Divider(height: 200, thickness: 4);
        },
      ),
    );
  }
}
