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
        title: const Text("Daily-Flash-3"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.lightBlue,
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 238, 98, 88),
              Color.fromARGB(255, 110, 200, 242)
            ], stops: [
              0.5,
              0.5
            ]),
          ),
        ),
      ),
    );
  }
}

