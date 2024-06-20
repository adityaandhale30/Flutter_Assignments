import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CompanyDemo extends StatefulWidget {
  const CompanyDemo({super.key});

  @override
  State createState() => _CompanyState();
}

class _CompanyState extends State {
  @override
  Widget build(BuildContext context) {
    log("IN Company BUILD");

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Provider Trial",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 60,
              width: 120,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 118, 192, 226),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(1, 3),
                    color: Colors.black,
                    blurRadius: 4,
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: Text(
                Provider.of<Company>(context).compName,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 25),
              height: 60,
              width: 120,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 118, 192, 226),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(1, 3),
                    color: Colors.black,
                    blurRadius: 4,
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: Text(
                Provider.of<Company>(context).empCount.toString(),
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Provider.of<Company>(context, listen: false).empCount = 123;
                Provider.of<Company>(context, listen: false).compName = "Apple";
                log("------------------------------------------------------------------------------------------------------");
                setState(() {});
              },
              child: Container(
                margin: const EdgeInsets.all(50),
                height: 80,
                width: 200,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 230, 144, 78),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(1, 3),
                      color: Colors.black,
                      blurRadius: 4,
                    ),
                  ],
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Change Data",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
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

class Company {
  String compName;
  int empCount;

  Company({required this.compName, required this.empCount});
}
