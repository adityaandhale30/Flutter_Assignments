import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;
  runApp(const MainApp());
}


class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    log("IN MainApp BUILD");
    return MultiProvider(
      providers: [
        Provider(
          create: (context) {
            return Employee(empCount: 100, empName: "Varad");
          },
        ),
        ChangeNotifierProvider(
          create: (context) {
            return Project(
                projectName: "Banking", devType: "Forntend", empName1: "Trial");
          },
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: EmployeeDemo(),
      ),
    );
  }
}

// MultiProvider

class EmployeeDemo extends StatefulWidget {
  const EmployeeDemo({super.key});

  @override
  State createState() => _EmployeeState();
}

class _EmployeeState extends State {
  @override
  Widget build(BuildContext context) {
    log("IN Employee BUILD");

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
                Provider.of<Employee>(context).empName,
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
                Provider.of<Employee>(context).empCount.toString(),
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
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
                Provider.of<Project>(context).projectName,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
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
                Provider.of<Project>(context).devType,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
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
                Provider.of<Project>(context).devType,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
              //  Provider.of<>(context, listen: false).empCount = 123;
              //  Provider.of<Employee>(context, listen: false).empName =
                 //   "Dumbre";
                Provider.of<Project>(context, listen: false)
                    .changedata("Education", "Backend","Mahesh");
                log("------------------------------------------------------------------------------------------------------");
                // setState(() {});
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

class Employee {
  String empName;
  int empCount;

  Employee({required this.empCount, required this.empName});
}

class Project with ChangeNotifier {
  String projectName;
  String devType;
  String empName1;

  Project(
      {required this.projectName,
      required this.devType,
      required this.empName1});

  void changedata(String projectName, String devType, String empName1) {
    this.devType = devType;
    this.projectName = projectName;
    this.empName1 = empName1;
    notifyListeners();
  }
}