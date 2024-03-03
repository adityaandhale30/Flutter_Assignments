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
        title: const Text("Daily-Flash-1"),
        centerTitle: true,
        leading: const Icon(Icons.settings),
        actions: const [
          
          Icon(Icons.menu),

        ],
      ),
    );
  }
}
