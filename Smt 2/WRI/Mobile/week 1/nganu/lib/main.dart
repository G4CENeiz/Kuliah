import 'package:flutter/material.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Ini App Bar"),
          ),
          body: Center(
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(9999999)),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.add_circle_outline_sharp),
                  SizedBox(width: 10),
                  Text("ADD TO DIET"),
                ],
              ),
            ),
          )),
    );
  }
}
