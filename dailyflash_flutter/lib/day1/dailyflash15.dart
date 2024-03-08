import 'package:flutter/material.dart';

class DailyFlash1 extends StatefulWidget {
  const DailyFlash1({super.key});
  @override
  State createState() => _DailyFlash1State();
}

class _DailyFlash1State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(115, 244, 203, 19),
        title: const Text(
          "Daily-Flash-1",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(color: Color.fromARGB(255, 69, 65, 65), blurRadius: 8)
              ],
              color: Color.fromRGBO(70, 218, 216, 0.7),
              borderRadius: BorderRadius.all(Radius.circular(30))),
        ),
      ),
    );
  }
}
