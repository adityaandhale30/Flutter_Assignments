import 'package:flutter/material.dart';

class DailyFlash5 extends StatefulWidget {
  const DailyFlash5({super.key});
  @override
  State createState() => _DailyFlash5State();
}

class _DailyFlash5State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 112, 216, 96),
        title: const Text("dailyflash 5"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.orange,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.lightBlue,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.lime,
            ),
          ],
        ),
      ),
    );
  }
}
