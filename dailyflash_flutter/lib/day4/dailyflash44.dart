import 'package:flutter/material.dart';

class DailyFlash3 extends StatefulWidget {
  const DailyFlash3({super.key});
  @override
  State createState() => _DailyFlash1State();
}

class _DailyFlash1State extends State {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(115, 244, 203, 19),
        title: const Text("Daily-Flash-44"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {},
              onHover: (value) {
              //  print("WWW");
                setState(() {
                  isHover = !isHover;
                });
              },
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                    isHover == true ? Colors.red : Colors.lightBlue),
              ),
              child: const Text(""),
            ),
          ),
        ],
      ),
    );
  }
}
