import 'package:flutter/material.dart';

class DailyFlash3 extends StatefulWidget {
  const DailyFlash3({super.key});
  @override
  State createState() => _DailyFlash1State();
}

class _DailyFlash1State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(115, 244, 203, 19),
        title: const Text("Daily-Flash-3"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Center(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/background_image.jpg'),
                ),
              ),
              // child: const Text(
              //   "I am Aditya ",
              //   style:
              //       TextStyle(color: Colors.red, fontWeight: FontWeight.w800),
              // ),
            ),
          ),
          
        ],
      ),
    );
  }
}
