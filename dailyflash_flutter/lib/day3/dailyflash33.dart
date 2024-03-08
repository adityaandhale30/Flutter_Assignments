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
      body: Center(
        child: Container(
          height: 250,
          width: 250,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                // blurStyle: BlurStyle.inner,
                // color: Colors.black12,
                // blurRadius: 12),/
                color: Color.fromARGB(255, 158, 147, 147),
                spreadRadius: 4,
                blurRadius: 10,
              //  offset: Offset(),
              
              ),
            ],
            color: Color.fromARGB(255, 183, 243, 153),
          ),
        ),
      ),
    );
  }
}
