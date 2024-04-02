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
        title: const Text("Profile-Information"),
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
          const Text(
            "Name : Aditya Andhale",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Mobile No. : 7507904590",
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
