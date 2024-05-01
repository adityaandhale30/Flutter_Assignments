import 'package:advance_quiz_app/models/question_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizDemo extends StatefulWidget {
  const QuizDemo({super.key});

  @override
  State createState() => _QuizState();
}

class _QuizState extends State {
  // Method to return Color when we clicked any Option and variable
  int selectedIndex = 0;
  int iconvar = 0;

  Color? retColor(int i) {
    if (selectedIndex == i) {
      if (selectedIndex == questionList[questionCounter].correctoption) {
        iconvar = selectedIndex;
        return const Color.fromRGBO(26, 181, 134, 1);
      } else {
        return const Color.fromRGBO(248, 145, 87, 1);
      }
    } else {
      return const Color.fromRGBO(248, 145, 87, 1);
    }
  }

  // Question Counter
  int questionCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                "${questionList[0].questionTopic} Quiz",
                style: GoogleFonts.dmSans(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(131, 76, 52, 1),
                ),
              ),
            ),
            Container(
              height: 8,
              margin: const EdgeInsets.only(top: 20, bottom: 4),
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.green,
              ),
            ),
            Row(
              children: [
                Text(
                  "$questionCounter/",
                  style: GoogleFonts.dmSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "${questionList.length}",
                  style: GoogleFonts.dmSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "${questionList[questionCounter].questionDescription}",
              style: GoogleFonts.dmSans(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: const Color.fromRGBO(131, 76, 52, 1),
              ),
            ),
            GestureDetector(
              onTap: () {
                // selectedIndex = 1;
                setState(() {
                  selectedIndex = 1;
                });
              },
              child: Container(
                margin: const EdgeInsets.only(top: 30),
                height: 70,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: retColor(1),
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                    ),
                    Text(
                      "${questionList[questionCounter].option1}",
                      style: GoogleFonts.dmSans(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: const Icon(
                        Icons.keyboard_arrow_right_sharp,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 2;
                });
              },
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                height: 70,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: retColor(2),
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                    ),
                    Text(
                      "${questionList[questionCounter].option2}",
                      style: GoogleFonts.dmSans(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: const Icon(
                        Icons.keyboard_arrow_right_sharp,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 3;
                });
              },
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                height: 70,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: retColor(3),
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                    ),
                    Text(
                      "${questionList[questionCounter].option3}",
                      style: GoogleFonts.dmSans(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: const Icon(
                        Icons.keyboard_arrow_right_sharp,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 4;
                });
              },
              child: Container(
                margin: const EdgeInsets.only(top: 20, bottom: 20),
                height: 70,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: retColor(4),
                ),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                    ),
                    Text(
                      "${questionList[questionCounter].option4}",
                      style: GoogleFonts.dmSans(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: const Icon(
                        Icons.keyboard_arrow_right_sharp,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              "Explanation",
              style: GoogleFonts.dmSans(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: const Color.fromRGBO(131, 76, 52, 1),
              ),
            ),
            Text(
              """Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing """,
              style: GoogleFonts.dmSans(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(131, 76, 52, 1),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Container(
        height: 40,
        width: 97,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          //color: const Color.fromRGBO(26, 181, 134, 1),
        ),
        child: FloatingActionButton(
          backgroundColor: const Color.fromRGBO(26, 181, 134, 1),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "NEXT",
                style: GoogleFonts.dmSans(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              const Icon(
                Icons.arrow_forward_outlined,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
