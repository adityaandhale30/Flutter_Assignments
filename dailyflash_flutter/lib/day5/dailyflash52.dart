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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Row(),
            Container(
              padding: const EdgeInsets.all(25),
              height: 250,
              width: 250,
              child: Image.asset(
                "assets/aditya.jpg",
              ),
            ),
            Container(
              padding: const EdgeInsets.all(25),
              height: 250,
              width: 250,
              child: Image.asset(
                "assets/aditya.jpg",
              ),
            ),
            Container(
              padding: const EdgeInsets.all(25),
              height: 250,
              width: 250,
              child: Image.asset(
                "assets/aditya.jpg",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
