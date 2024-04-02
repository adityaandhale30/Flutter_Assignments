import 'package:flutter/material.dart';

class DailyFlash6 extends StatefulWidget {
  const DailyFlash6({super.key});
  @override
  State createState() => _DailyFlash6State();
}

class _DailyFlash6State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 12, 104, 132),
        title: const Text("Day 6"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const Row(),
            Container(
              padding: const EdgeInsets.all(25),
              height: 350,
              width: 350,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Image.asset(
                "assets/Anjeer.jpg",
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 70,
                width: 300,
                decoration: const BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Click Me",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
