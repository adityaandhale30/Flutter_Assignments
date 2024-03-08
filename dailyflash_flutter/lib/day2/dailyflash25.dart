import 'package:flutter/material.dart';

class DailyFlash2 extends StatefulWidget {
  const DailyFlash2({super.key});
  @override
  State createState() => _DailyFlash1State();
}

class _DailyFlash1State extends State {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(115, 244, 203, 19),
        title: const Text("Daily-Flash-2"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(),
          GestureDetector(
            onTap: () {
              isClicked = !isClicked;
              setState(() {});
            },
            child: Container(
              height: 200,
              width: 200,
              color: isClicked == true ? Colors.red : Colors.lightBlue,
              child: isClicked == true
                  ? const Center(
                      child: Text(
                        "Container Tapped",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w500),
                      ),
                    )
                  : const Center(
                      child: Text(
                        "Click Me !",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w500),
                      ),
                    ),
            ),
          )
        ],
      ),
    );
  }
}
