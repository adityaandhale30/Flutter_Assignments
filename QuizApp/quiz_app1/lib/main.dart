import 'package:flutter/material.dart';
//import 'package:quiz_app1/ListviewBuilder.dart';
import 'quizAppWithModel.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}
/*
class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
// Variable Decleared Here

  int _counter = 0;
  int selectedIndex = -1;
  bool questionScrren = true;
  bool checkAnswer = false;
  int totalMarks = 0;

  // List of Questions And Options And Answers

  List<Map> questionList = [
    {
      "Questions": " Who is Founder of Microsoft ?",
      "Option": ["Larray Page ", "steve Jobs", "bill gates", "Jeff bezoz"],
      "answer": 2,
    },
    {
      "Questions": "Who is Founder of Apple ?",
      "Option": ["Elon musk", "Bill Gates", "Mark Z", "Steve Jobs"],
      "answer": 3,
    },
    {
      "Questions": "Who Founder of tesla ? ",
      "Option": ["Pranav Dumbre", "Steve Jobs", "Elon musk", "Harshad anbhule"],
      "answer": 2,
    },
    {
      "Questions": "Who is Founder of Meta  ?",
      "Option": ["Mark Z", "Elon Musk", "Bill gates", "Larray page"],
      "answer": 0,
    },
    {
      "Questions": "What is Harshad Anbhule's Pointer ?",
      "Option": ["6.5", "7.0", "EFT Back", "9.7"],
      "answer": 2,
    }
  ];

  // red colour returning
  // void increment() {
  //   if (selectedIndex == questionList[_counter]["answer"]) {
  //     totalMarks += 1;
  //     setState(() {});
  //   }
  // }

  Color? retColor(int n) {
    if (selectedIndex == n) {
      if (selectedIndex == questionList[_counter]["answer"]) {
        //totalMarks += 1;
        setState(() {
          totalMarks++;
        });
        return const Color.fromARGB(255, 99, 235, 153);
      } else {
        return const Color.fromARGB(255, 236, 138, 130);
      }
    }
    if (selectedIndex != -1 && n == questionList[_counter]["answer"]) {
      return const Color.fromARGB(255, 104, 236, 109);
    }
    return const Color.fromARGB(255, 124, 205, 243);
  }

  // Method That Returns Scaffold for Question And Celebration

  Scaffold screenScaffold() {
    if (questionScrren == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 239, 145, 3),
                letterSpacing: 5),
          ),
          backgroundColor: const Color.fromARGB(255, 188, 225, 242),
          centerTitle: true,
        ),

        // Body of Questions And options

        body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Question  : ",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
                Text(
                  "${_counter + 1} / ${questionList.length}",
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  child: Text(
                    "    Score : $totalMarks",
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 25),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 350,
              height: 60,
              child: Text(
                questionList[_counter]["Questions"],
                style:
                    const TextStyle(fontSize: 23, fontWeight: FontWeight.w300),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  if (selectedIndex == -1) {
                    setState(() {
                      selectedIndex = 0;
                      // increment();
                    });
                  }
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color?>(retColor(0)),
                ),

                // First Option of Question

                child: Text(
                  "A. ${questionList[_counter]["Option"][0]}",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.normal),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: ElevatedButton(
                // Elevated Button for 1st Option
                onPressed: () {
                  if (selectedIndex == -1) {
                    setState(() {
                      selectedIndex = 1;
                      // increment();
                    });
                  }
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color?>(retColor(1)),
                ),
                child: Text(
                  "B. ${questionList[_counter]["Option"][1]}",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.normal),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  if (selectedIndex == -1) {
                    setState(() {
                      selectedIndex = 2;
                      //increment();
                    });
                  }
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color?>(retColor(2)),
                ),
                child: Text(
                  "C. ${questionList[_counter]["Option"][2]}",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.normal),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  if (selectedIndex == -1) {
                    setState(() {
                      selectedIndex = 3;
                      //increment();
                    });
                  }
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color?>(retColor(3)),
                ),
                child: Text(
                  "D. ${questionList[_counter]["Option"][3]}",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.normal),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              if (_counter != questionList.length - 1) {
                _counter++;
              } else {
                _counter = 0;
                totalMarks = 0;
              }
              selectedIndex = -1;
            });
          },
          child: Text("$totalMarks"),
        ),
      );
    } else {
      return Scaffold();
    }
  }

  @override
  Widget build(BuildContext context) {
    return screenScaffold();
  }
}*/
