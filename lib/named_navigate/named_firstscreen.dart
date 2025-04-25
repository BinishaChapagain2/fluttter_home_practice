import 'package:flutter/material.dart';
import 'package:flutter_practice/app_routes.dart';

class NamedFirstscreen extends StatelessWidget {
  const NamedFirstscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Name navigate first screen")),
      body: Center(
        child: FilledButton(
          onPressed: () {
            Navigator.of(
              context,
            ).pushNamed(AppRoutes.secondScreen, arguments: "Hello binisha");
          },
          child: Text("Go to next Screen"),
        ),
      ),
    );
  }
}
