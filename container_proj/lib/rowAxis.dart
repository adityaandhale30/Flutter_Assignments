import 'package:flutter/material.dart';

void main() => runApp(const RowAxis());

class RowAxis extends StatelessWidget {
  const RowAxis({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Row_Start"),
          backgroundColor: Colors.lightBlue,
        ),
        body: Row(
          children: [
            Container(
              height: 150,
              width: 150,
              color: Colors.red,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.lightGreen,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.lightBlue,
            ),
          ],
        ),
      ),
    );
  }
}
