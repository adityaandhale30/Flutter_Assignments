import 'package:flutter/material.dart';

void main() => runApp(const ColumnAxis());

class ColumnAxis extends StatelessWidget {
  const ColumnAxis({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Column_Start"),
          backgroundColor: const Color.fromARGB(255, 155, 207, 250),
        ),
        body: Column(
          children: [
            Container(
              height: 20,
              width: 33,
              color: const Color.fromARGB(255, 240, 173, 72),
            ),
            Container(
              height: 20,
              width: 33,
              color: const Color.fromARGB(255, 251, 249, 249),
            ),
            Container(
              height: 20,
              width: 33,
              color: const Color.fromARGB(255, 128, 245, 132),
            ),
          ],
        ),
      ),
    );
  }
}
