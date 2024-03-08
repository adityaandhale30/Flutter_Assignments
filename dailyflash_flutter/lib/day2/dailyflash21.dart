import 'package:flutter/material.dart';

class DailyFlash2 extends StatefulWidget {
  const DailyFlash2({super.key});
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
          const Row(),
          Container(
            height: 200,
            width: 200,
            //color: Colors.amber,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.amber,
                border: Border.all(color: Colors.red, width: 8)),
                child: const Center(
                  child: Text('DailyFlash 2'),
                ),
          ),
        ],
      ),
    );
  }
}
