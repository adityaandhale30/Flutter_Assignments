// ignore: file_names
import 'package:flutter/material.dart';

class ContainerDemo extends StatefulWidget {
  const ContainerDemo({super.key});

  @override
  State<ContainerDemo> createState() => _ContainerDemoState();
}

class _ContainerDemoState extends State<ContainerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Container-Docs1",
          style: TextStyle(fontSize: 32.5, fontWeight: FontWeight.w700),
        ),
        backgroundColor: const Color.fromARGB(255, 239, 201, 88),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
            border: Border.all(color: Colors.blue, width: 10),
            gradient: const SweepGradient(
              stops: [0.1,0.9],
                colors: [Colors.red, Colors.blue],),
          ),
        ),
      ),
    );
  }
}
