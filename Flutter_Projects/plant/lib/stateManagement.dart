import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

class Management extends StatefulWidget {
  const Management({super.key});
  @override
  State createState() => _ManagementState();
}

class _ManagementState extends State {
  int _counter = 0;
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 150,
                width: 250,
                 decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow:const [BoxShadow(color: Colors.black,blurRadius: 5)]
                ),  
                child: const Center(
                  child: Text(
                    "Flutter",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 65,
            ),
            GestureDetector(
              onTap: () {
                _counter++;
                setState(() {});
              },
              child: Container(
               
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow:const [BoxShadow(color: Colors.black,blurRadius: 5)]
                ),
                height: 60,
                width: 60,
                child: Center(
                  child: Text(
                    "$_counter",
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.w500),
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
