import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

dynamic database;

class Employee {
  final String name;
  final int empId;
  final int exp;

  Employee({required this.name, required this.empId, required this.exp});

  Map<String, dynamic> empMap() {
    return {
      'name': name,
      'empID': empId,
      'exp': exp,
    };
  }
}

Future insertEmpData(Employee emp) async {
  final localDB = await database;

  await localDB.insert(
    'Employee',
    emp.empMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<Employee>> getEMpData() async {
  final localDB = await database;

  List<Map<String, dynamic>> listEmp = await localDB.query('Employee');

  return List.generate(listEmp.length, (i) {
    return Employee(
      name: listEmp[i]['name'],
      empId: listEmp[i]['empId'],
      exp: listEmp[i]['exp'],
    );
  });
}

void main() async {
  runApp(const MainApp());
  database = openDatabase(
    join(await getDatabasesPath(), "EmployeeDB.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''CREATE TABLE EMPLOYEE(
        name TEXT,
        empId INTEGER PRIMARY KEY,
        exp INT
      )''');
    },
  );
  // Inserting Data
  Employee emp1 = Employee(name: "Mahesh", empId: 1026, exp: 3);
  await insertEmpData(emp1);
  Employee emp2 = Employee(name: "Dumber", empId: 1119, exp: 1);
  await insertEmpData(emp2);
  print(await getEMpData());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
