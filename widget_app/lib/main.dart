import 'package:flutter/material.dart';

import 'inheritedex.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ShareData(
      price: 100000,
      productName: "Macbook Pro",
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: InheritedDemo(),
      ),
    );
  }
}
