import 'package:flutter/material.dart';

class DailyFlash1 extends StatefulWidget {
  const DailyFlash1({super.key});
  @override
  State createState() => _DailyFlash1State();
}

class _DailyFlash1State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(115, 244, 203, 19),
        title: const Text(
          "Daily-Flash-1",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        actions: const [
          Icon(Icons.settings),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.menu),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.message_sharp),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
