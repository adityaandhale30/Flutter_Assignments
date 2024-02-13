import 'package:flutter/material.dart';

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

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});
  // List of Questions And Options And Answers

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class QuestionModel {
  // Variable Declared
  final String? question;
  final List<String>? options;
  final int? answer;

  const QuestionModel({this.question, this.options, this.answer});
}

class _QuizAppState extends State<QuizApp> {
  // Variables for QuizApp

  bool quizScreen = true;
  int questionIndex = 0;
  int selectedIndex = -1;
  int totalMarks = 0;
  // List of Questions And Options And Answers

  List questionList = [
    const QuestionModel(
        question: " Who is Founder of Microsoft ?",
        options: ["Larray Page ", "steve Jobs", "bill gates", "Jeff bezoz"],
        answer: 2),
    const QuestionModel(
      question: "Who is Founder of Apple ?",
      options: ["Elon musk", "Bill Gates", "Mark Z", "Steve Jobs"],
      answer: 3,
    ),
    const QuestionModel(
      question: "Who Founder of tesla ? ",
      options: ["Pranav Dumbre", "Steve Jobs", "Elon musk", "Harshad anbhule"],
      answer: 2,
    ),
    const QuestionModel(
      question: "Who is Founder of Meta  ?",
      options: ["Mark Z", "Elon Musk", "Bill gates", "Larray page"],
      answer: 0,
    ),
    const QuestionModel(
      question: "What is Harshad Anbhule's Pointer ?",
      options: ["6.5", "7.0", "EFT Back", "9.7"],
      answer: 2,
    )
  ];

  // method to check Valid Index

  void validIndex() {
    if (selectedIndex == -1) {
      return;
    }

    if (questionIndex == questionList.length - 1) {
      quizScreen = false;
    }

    if (selectedIndex == questionList[questionIndex].answer) {
      totalMarks++;
    }
    selectedIndex = -1;
    questionIndex++;
    setState(() {});
  }

  // Method that returns Colour

  MaterialStateProperty<Color?> checkAnswer(int answerIndex) {
    if (selectedIndex == answerIndex) {
      if (answerIndex == questionList[questionIndex].answer) {
        return const MaterialStatePropertyAll(Color.fromARGB(255, 89, 245, 69));
      } else if (selectedIndex != questionList[questionIndex].answer) {
        return const MaterialStatePropertyAll(
            Color.fromARGB(255, 229, 106, 24));
      }
    }
    if (selectedIndex != -1 &&
        answerIndex == questionList[questionIndex].answer) {
      return const MaterialStatePropertyAll(Color.fromARGB(255, 66, 237, 40));
    }
    return const MaterialStatePropertyAll(Color.fromARGB(255, 97, 200, 248));
  }

  Scaffold screenScaffold() {
    if (quizScreen == true) {
      return Scaffold(
//backgroundColor:const Color.fromARGB(255, 3, 156, 136),
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(fontSize: 33, fontWeight: FontWeight.w800),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(189, 234, 207, 122),
          titleSpacing: 10,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Question : ",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
                Text("${questionIndex + 1}/${questionList.length}",
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.w700)),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Text(
              "${questionList[questionIndex].question}",
              style: const TextStyle(
                fontSize: 22.5,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            SizedBox(
              width: 360,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  selectedIndex = 0;
                  setState(() {});
                },
                style: ButtonStyle(
                  backgroundColor: checkAnswer(0),
                ),
                child: Text(
                  "A. ${questionList[questionIndex].options[0]}",
                  style: const TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            SizedBox(
              width: 360,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  selectedIndex = 1;
                  setState(() {});
                },
                style: ButtonStyle(
                  backgroundColor: checkAnswer(1),
                ),
                child: Text(
                  "B. ${questionList[questionIndex].options[1]}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            SizedBox(
              width: 360,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  selectedIndex = 2;
                  setState(() {});
                },
                style: ButtonStyle(
                  backgroundColor: checkAnswer(2),
                ),
                child: Text(
                  "C. ${questionList[questionIndex].options[2]}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            SizedBox(
              width: 360,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  selectedIndex = 3;
                  setState(() {});
                },
                style: ButtonStyle(
                  backgroundColor: checkAnswer(3),
                ),
                child: Text(
                  "D. ${questionList[questionIndex].options[3]}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            validIndex();
          },
          child: const Icon(Icons.arrow_forward),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
         
          title: const Text(
            "Congractulaions",
            style: TextStyle(fontSize: 45),textAlign: TextAlign.center,
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                  "https://i.pinimg.com/736x/05/fb/88/05fb880f74340623475f48a5d3557984.jpg",height: 300,width: 400,),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Total Score : $totalMarks",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 280,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    totalMarks = 0;
                    selectedIndex = -1;
                    quizScreen = true;
                    questionIndex = 0;
                    setState(() {});
                  },style:const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 153, 203, 249))),
                  child: const Text(
                    "RESET",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
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

  @override
  Widget build(BuildContext context) {
    return screenScaffold();
  }
}
