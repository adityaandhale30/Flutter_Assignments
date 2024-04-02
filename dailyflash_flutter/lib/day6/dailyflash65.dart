import 'package:flutter/material.dart';

class DailyFlash6 extends StatefulWidget {
  const DailyFlash6({super.key});
  @override
  State createState() => _DailyFlash6State();
}

class _DailyFlash6State extends State {
  int boxnum = 0;
  Color containerColor(int i) {
    if (boxnum != 0) {
      if (boxnum == i) {
      
        return Colors.red;
      } else {
        
        return Colors.white;
      }
    } else {
  
      return Colors.red;
    }
    // if (i == 2) {
    //   return Colors.red;
    // } else {
    //   return Colors.white;
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 12, 104, 132),
        title: const Text("Day 6"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(),
          GestureDetector(
            onTap: () {
              setState(() {
                boxnum = 1;
              });
            },
            child: Container(
              margin: const EdgeInsets.all(25),
              height: 150,
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 5),
                color: containerColor(1),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                boxnum = 2;
              });
            },
            child: Container(
              margin: const EdgeInsets.all(25),
              height: 150,
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 5),
                color: containerColor(2),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                boxnum = 3;
              });
            },
            child: Container(
              margin: const EdgeInsets.all(25),
              height: 150,
              width: 200,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 5),
                  color: containerColor(3)),
            ),
          ),
        ],
      ),
    );
  }
}
