import 'package:flutter/material.dart';

import 'detailScreen.dart';
//import 'stateManagement2.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Detail(),
    );
  }
}
