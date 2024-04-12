import 'package:flutter/material.dart';

class GridDemo extends StatefulWidget {
  const GridDemo({super.key});
  @override
  State createState() => _GridDemoState();
}

class _GridDemoState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView"),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemCount: 10,
        itemBuilder: (context, i) {
          return Container(
           alignment: Alignment.center,
            color: Colors.amber,
            child: Text("{$i}+ 1"),
          );
        },
      ),
    );
  }
}
