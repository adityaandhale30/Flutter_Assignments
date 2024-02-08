//import 'dart:math';

import 'package:flutter/material.dart';

class WidApp extends StatefulWidget {
  const WidApp({super.key});

  @override
  State<WidApp> createState() => _WidAppState();
}

class _WidAppState extends State<WidApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Trial-Tinder Kart",
          style: TextStyle(
              fontWeight: FontWeight.w700, letterSpacing: 7, fontSize: 30),
        ),
        backgroundColor: const Color.fromARGB(255, 245, 185, 205),
        centerTitle: true,
        actions: [
          ElevatedButton(
              onPressed: () {},
              child: const Icon(
                Icons.more,
                size: 10,
              ))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const SizedBox(
          //   height: 5,
          // ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container(
                //   margin: const EdgeInsets.all(5),
                //   padding: const EdgeInsets.all(20),
                //   child: Image.network(
                //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT08uBwVsmcF0p7nantEELHXeMiRZADRSQJab48TwCbxw&s",
                //    // width: 160,
                //   ),
                // ),
                // Container(
                //   margin: const EdgeInsets.all(5),
                //   padding: const EdgeInsets.all(20),
                //   child: Image.network(
                //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT08uBwVsmcF0p7nantEELHXeMiRZADRSQJab48TwCbxw&s",
                //     width: 160,
                //   ),
                // ),
                Column(children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    // margin: const EdgeInsets.all(2),
                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT08uBwVsmcF0p7nantEELHXeMiRZADRSQJab48TwCbxw&s",
                      width: 160,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {});
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,size: 35,
                        ),
                      ),
                      
                      IconButton(
                          onPressed: () {
                            setState(() {});
                          },
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                            size: 35,
                          )),
                    ],
                  ),
                ]),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
        child: const Icon(
          Icons.favorite,
          size: 60,
          color: Colors.pink,
        ),
      ),
    );
  }
}
