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
        title: const Text("Food Item "),
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
              "assets/Anjeer.jpg",
            ),
          ),
          const Text(
            "Anjeer",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w800),
          ),
          const SizedBox(
            height: 20,
          ),
          const Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  """Anjeer benefits have proven to have helped in maintaining a healthy gut and also fighting constipation.\nAnjeer benefits also include regulating blood pressure,\nmaintaining healthy respiratory health, and fighting orthopaedic problems.""",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
