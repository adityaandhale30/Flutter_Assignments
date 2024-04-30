import 'package:advance_quiz_app/models/subjet_model.dart';
import 'package:advance_quiz_app/view/quiz_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeDemo extends StatefulWidget {
  const HomeDemo({super.key});

  @override
  State createState() => _HomeState();
}

class _HomeState extends State {
  // method for Random colors
  Color? randomColor(int i) {
    if (i == 0) i = 7 * (i + 3);
    return Color.fromRGBO(
      (75 * i ~/ 3),
      i * i * 194,
      i * 171,
      15,
    );
    //return Colors.purple;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.only(
          left: 30,
          right: 20,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi Dumber",
                      style: GoogleFonts.dmSans(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(131, 76, 52, 1),

                      ),
                    ),
                    Text(
                      "Great to see you again!",
                      style: GoogleFonts.dmSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(131, 76, 52, 1),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 64,
                  width: 64,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(250, 188, 154, 1),
                  ),
                  child: Container(),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: subjectModelList.length,
                itemBuilder: (context, i) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const QuizDemo(),
                        ),
                      );
                    },
                    child: Container(
                      width: 306,
                      height: 80,
                      margin: const EdgeInsets.only(top: 10, bottom: 20),
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 237, 217, 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            margin: const EdgeInsets.only(left: 25, right: 20),
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              subjectModelList[i].subjectName[0],
                              style: GoogleFonts.dmSans(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: randomColor(i),
                              ),
                            ),
                          ),
                          Text(
                            subjectModelList[i].subjectName,
                            style: GoogleFonts.dmSans(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromRGBO(131, 76, 52, 1),
                            ),
                          ),
                          const Spacer(),
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: const Icon(Icons.keyboard_arrow_right_sharp),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
