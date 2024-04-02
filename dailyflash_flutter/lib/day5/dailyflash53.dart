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
      body: Column(
        children: [
          const Row(),
          Container(
            padding: const EdgeInsets.all(25),
            height: 450,
            width: 450,
            child: Image.asset(
              "assets/aditya.jpg",
            ),
          ),
          Container(
            padding: const EdgeInsets.all(35),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 5.2,
                  ),
                ],
                color: Colors.white),
            child: const Text(
              "Name : Aditya Andhale",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}
