import 'package:flutter/material.dart';
//import 'package:quiz_app1/ListviewBuilder.dart';
import 'DispInt.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DispInt(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  //const _QuizAppState({super.key});

  int _counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My QuizApp"),
        backgroundColor: const Color.fromARGB(255, 111, 227, 250),
        centerTitle: true,
      ),
      /*body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text("Question  : $_counter / 10 "),
            const SizedBox(
              height: 20,
            ),
            Text("Question $_counter :  What is Flutter"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Option 1"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Option 2"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Option 3"),
            ),
            const SizedBox(
              width: 300,
              height: 20,
              // child:Container(color: Colors.black,),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Option 4"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter++;
            if (_counter == 11) _counter = 1;
          });
        },
        child: const Icon(Icons.double_arrow_sharp),
      ),*/

      body: Column(

          // height: 400,
          // width: 300,
          children: [
            Row(),
            SizedBox(
              width: 300,
              height: 40,
              child: Container(
                color: Colors.amberAccent,
              ),
            ),
          ]),
    );
  }
}
