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
      body: ListView(
        //  scrollDirection: Axis.vertical,
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1.5),
                  ),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/core2web.jpg",
                          height: 60,
                          width: 60,
                        ),
                      ),
                      const SizedBox(
                        width: 80,
                      ),
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 1.5),
                            ),
                            height: 50,
                            width: 80,
                            child: const Center(
                              child: Text(
                                "Core2Web",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 1.5),
                            ),
                            height: 50,
                            width: 80,
                            child: const Center(
                              child: Text(
                                "Biencaps",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 1.5),
                            ),
                            height: 50,
                            width: 80,
                            child: const Center(
                              child: Text(
                                "Incubator",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1.2),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.done),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1.5),
                  ),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/core2web.jpg",
                          height: 60,
                          width: 60,
                        ),
                      ),
                      const SizedBox(
                        width: 80,
                      ),
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 1.5),
                            ),
                            height: 50,
                            width: 80,
                            child: const Center(
                              child: Text(
                                "Core2Web",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 1.5),
                            ),
                            height: 50,
                            width: 80,
                            child: const Center(
                              child: Text(
                                "Biencaps",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 1.5),
                            ),
                            height: 50,
                            width: 80,
                            child: const Center(
                              child: Text(
                                "Incubator",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1.2),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.done),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1.5),
                  ),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/core2web.jpg",
                          height: 60,
                          width: 60,
                        ),
                      ),
                      const SizedBox(
                        width: 80,
                      ),
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 1.5),
                            ),
                            height: 50,
                            width: 80,
                            child: const Center(
                              child: Text(
                                "Core2Web",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 1.5),
                            ),
                            height: 50,
                            width: 80,
                            child: const Center(
                              child: Text(
                                "Biencaps",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 1.5),
                            ),
                            height: 50,
                            width: 80,
                            child: const Center(
                              child: Text(
                                "Incubator",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1.2),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.done),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1.5),
                  ),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/core2web.jpg",
                          height: 60,
                          width: 60,
                        ),
                      ),
                      const SizedBox(
                        width: 80,
                      ),
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 1.5),
                            ),
                            height: 50,
                            width: 80,
                            child: const Center(
                              child: Text(
                                "Core2Web",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 1.5),
                            ),
                            height: 50,
                            width: 80,
                            child: const Center(
                              child: Text(
                                "Biencaps",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 1.5),
                            ),
                            height: 50,
                            width: 80,
                            child: const Center(
                              child: Text(
                                "Incubator",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1.2),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.done),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1.5),
                  ),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/core2web.jpg",
                          height: 60,
                          width: 60,
                        ),
                      ),
                      const SizedBox(
                        width: 80,
                      ),
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 1.5),
                            ),
                            height: 50,
                            width: 80,
                            child: const Center(
                              child: Text(
                                "Core2Web",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 1.5),
                            ),
                            height: 50,
                            width: 80,
                            child: const Center(
                              child: Text(
                                "Biencaps",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 1.5),
                            ),
                            height: 50,
                            width: 80,
                            child: const Center(
                              child: Text(
                                "Incubator",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1.2),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.done),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1.5),
                  ),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/core2web.jpg",
                          height: 60,
                          width: 60,
                        ),
                      ),
                      const SizedBox(
                        width: 80,
                      ),
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 1.5),
                            ),
                            height: 50,
                            width: 80,
                            child: const Center(
                              child: Text(
                                "Core2Web",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 1.5),
                            ),
                            height: 50,
                            width: 80,
                            child: const Center(
                              child: Text(
                                "Biencaps",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 1.5),
                            ),
                            height: 50,
                            width: 80,
                            child: const Center(
                              child: Text(
                                "Incubator",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1.2),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.done),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1.5),
                  ),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/core2web.jpg",
                          height: 60,
                          width: 60,
                        ),
                      ),
                      const SizedBox(
                        width: 80,
                      ),
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 1.5),
                            ),
                            height: 50,
                            width: 80,
                            child: const Center(
                              child: Text(
                                "Core2Web",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 1.5),
                            ),
                            height: 50,
                            width: 80,
                            child: const Center(
                              child: Text(
                                "Biencaps",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 1.5),
                            ),
                            height: 50,
                            width: 80,
                            child: const Center(
                              child: Text(
                                "Incubator",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1.2),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.done),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
