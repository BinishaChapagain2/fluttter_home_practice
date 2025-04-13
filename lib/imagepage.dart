import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Image Page",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.red[200],
      ),

      body: Center(
        child: Row(
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: Image.asset("assets/images/binisha.jpg"),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
