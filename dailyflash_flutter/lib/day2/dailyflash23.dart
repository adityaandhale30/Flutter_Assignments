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
            decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 74, 71, 71),
                  width: 5,
                ),
                borderRadius: const BorderRadius.only(
                    topRight: Radius.elliptical(20, 20)),
                color: Colors.lightBlue),
            
          ),
        ],
      ),
    );
  }
}
