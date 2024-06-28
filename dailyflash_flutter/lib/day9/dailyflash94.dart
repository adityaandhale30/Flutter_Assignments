import 'package:flutter/material.dart';

class DailyFlash9 extends StatefulWidget {
  const DailyFlash9({super.key});
  @override
  State createState() => _DailyFlash9State();
}

class _DailyFlash9State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 12, 104, 132),
        title: const Text("Day 9"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60,
              width: 380,
              child: TextField(
                // controller: ,
                decoration: InputDecoration(
                    fillColor: Colors.purple,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    hintText: "Enter Anything"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: () {
                  FocusScope.of(context).unfocus();
                },
                child: Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black12, width: 3),
                    boxShadow: const [
                      BoxShadow(color: Colors.grey, blurRadius: 3),
                    ],
                  ),
                  child: const Center(
                    child: Text("Submit",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600)),
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
