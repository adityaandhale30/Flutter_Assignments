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
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(width: 5, color: Colors.black),
              ),
              color: Colors.lightBlue,
              
            ),
            child:const  Center(
              child: Text("DailyFlash 2"),
            ),
          ),
        ],
      ),
    );
  }
}
