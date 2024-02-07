import 'package:flutter/material.dart';

class DispInt extends StatefulWidget {
  const DispInt({super.key});
  @override
  State<DispInt> createState() => _IntState();
}

class _IntState extends State<DispInt> {
  List<int> intList = [];
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Integer Display"),
        centerTitle: true,
        backgroundColor: Colors.blue[200],
      ),
      body: ListView.builder(
        itemCount: intList.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(10),
            color:const  Color.fromARGB(255, 51, 136, 222),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("${intList[index]}",)],
              //  margin:const EdgeInsets.all(value)
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter++;
            intList.add(_counter);
          });
          
        },
        child:const  Icon(Icons.arrow_back_ios_rounded),
      ),
    );
  }
}
