import 'package:flutter/material.dart';

class DailyFlash9 extends StatefulWidget {
  const DailyFlash9({super.key});
  @override
  State createState() => _DailyFlash9State();
}

class _DailyFlash9State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 12, 104, 132),
        title: const Text("Day 9"),
        centerTitle: true,
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                height: 80,
                width: 80,
                color: Colors.amber,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: 80,
                width: 80,
                color: Colors.lightGreen,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: 80,
                width: 80,
                color: Colors.black,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: 80,
                width: 80,
                color: Colors.red,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: 80,
                width: 80,
                color: Colors.lightBlue,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: 80,
                width: 80,
                color: Colors.pink,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: 80,
                width: 80,
                color: Colors.deepPurple,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
