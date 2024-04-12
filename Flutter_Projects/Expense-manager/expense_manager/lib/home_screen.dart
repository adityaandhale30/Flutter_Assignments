import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State createState() => _HomeState();
}

class _HomeState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu_outlined),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: const Icon(
              Icons.search_outlined,
              size: 30,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              child: Row(
                children: [
                  Container(
                    // padding: const EdgeInsets.all(8),
                    ////margin: const EdgeInsets.only(right: 15),
                    height: 81,
                    width: 81,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset("assets/medicine.png"),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Medicine",
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          const   Spacer(),
                            GestureDetector(
                              child: const Icon(
                                Icons.remove_circle_outline,
                              ),
                            ),
                            Text(
                              "500",
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Lorem Ipsum is simply dummy text of the ",
                              style: GoogleFonts.poppins(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "3 June | 11:50 AM",
                              style: GoogleFonts.poppins(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
