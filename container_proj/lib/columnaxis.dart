import 'package:flutter/material.dart';

void main()=>runApp(const ColumnAxis());

class ColumnAxis extends StatelessWidget {

  const ColumnAxis({super.key});

  @override
  Widget build (BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar:AppBar(
        title: const Text(
          "Column_Start"
          ),
          backgroundColor:Colors.lightBlue,
        ),
        body: Column(
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