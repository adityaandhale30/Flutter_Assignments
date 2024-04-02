import 'package:flutter/material.dart';

class DailyFlash6 extends StatefulWidget {
  const DailyFlash6({super.key});
  @override
  State createState() => _DailyFlash6State();
}

class _DailyFlash6State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 12, 104, 132),
        title: const Text("Day 6"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(25),
          height: 200,
          width: 380,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.all(7),
                height: 70,
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Container(
                  height: 70,
                  width: 100,
                  color: Colors.red,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(7),
                height: 70,
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Container(
                  height: 70,
                  width: 100,
                  color: Colors.lightBlue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
