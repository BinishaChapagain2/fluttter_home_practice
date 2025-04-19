import 'package:flutter/material.dart';

class Listtilepage extends StatelessWidget {
  const Listtilepage({super.key});

  @override
  Widget build(BuildContext context) {
    var arrNames = [
      'Binisha',
      'Chapagain',
      'shivanagar',
      'bharatpur',
      'barsha',
      'arun',
      'swostik',
    ];

    return Scaffold(
      appBar: AppBar(title: Text("List Veiw widget")),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            // leading: Text("${index + 1}"),
            title: Text(arrNames[index]),
            subtitle: Text('Number'),
            trailing: Icon(Icons.add),
          );
        },

        separatorBuilder: (context, index) {
          return Divider(height: 20, thickness: 4);
        },
        itemCount: arrNames.length,

        // scrollDirection: Axis.horizontal,
      ),
    );
  }
}
