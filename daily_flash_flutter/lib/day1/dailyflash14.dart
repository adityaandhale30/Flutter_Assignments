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
          // color:const  Color.fromARGB(229, 244, 73, 30),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 5),
            color: const Color.fromARGB(255, 20, 169, 210),
            // child: Container(
            //   height: 300,
            //   width: 300,
            //   color: Colors.lightBlue,
            //   margin: const EdgeInsets.all(10),
            // ),
          ),
        ),
      ),
    );
  }
}
