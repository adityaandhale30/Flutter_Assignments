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
        title: const Text("Daily-Flash-4"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 157, 219, 247),
                fixedSize: const Size(200, 200),
                shape: const CircleBorder(
                  side: BorderSide(width: 5, color: Colors.red),
                ),
              ),
              child: const Text(""),
            ),
          ),
        ],
      ),
    );
  }
}
