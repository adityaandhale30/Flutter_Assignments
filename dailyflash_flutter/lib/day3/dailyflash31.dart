import 'package:flutter/material.dart';

class DailyFlash3 extends StatefulWidget {
  const DailyFlash3({super.key});
  @override
  State createState() => _DailyFlash1State();
}

class _DailyFlash1State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(115, 244, 203, 19),
        title: const Text("Daily-Flash-2"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              padding: const EdgeInsets.all(20),
                height: 300,
                width: 300,
                child: Image.asset("assets/aditya.jpg")),
          ),
        ],
      ),
    );
  }
}
