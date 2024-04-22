import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

class Management extends StatefulWidget {
  const Management({super.key});
  @override
  State createState() => _ManagementState();
}

class _ManagementState extends State {
  int _counter1 = 0;
  int _counter2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "State-Management",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: GestureDetector(
                     onTap: () {
                    _counter1++;
                    setState(() {});
                  },
                    child: Container(
                      height: 130,
                      width: 220,
                      decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(color: Colors.black, blurRadius: 5)
                          ]),
                      child: const Center(
                        child: Text(
                          "Flutter",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 65,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(color: Colors.black, blurRadius: 5)
                      ]),
                  height: 60,
                  width: 60,
                  child: Center(
                    child: Text(
                      "$_counter1",
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 35,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: GestureDetector(
                    onTap: () {
                    _counter2++;
                    setState(() {});
                  },
                    child: Container(
                      height: 130,
                      width: 220,
                      decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(color: Colors.black, blurRadius: 5)
                          ]),
                      child: const Center(
                        child: Text(
                          "Java",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 65,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(color: Colors.black, blurRadius: 5)
                      ]),
                  height: 60,
                  width: 60,
                  child: Center(
                    child: Text(
                      "$_counter2",
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
