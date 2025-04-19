import 'package:flutter/material.dart';

class Tripbookpage extends StatelessWidget {
  const Tripbookpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/binisha.jpg'),
                    radius: 25,
                  ),

                  Column(
                    children: [
                      Text(
                        "Hello Binisha",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Row(
                        children: [
                          Icon(Icons.location_pin),
                          Text("Shivanahar, chitwan"),
                        ],
                      ),
                    ],
                  ),

                  Stack(
                    children: [
                      Icon(Icons.notification_important_outlined),
                      Positioned(
                        right: 0,
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),

              TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
