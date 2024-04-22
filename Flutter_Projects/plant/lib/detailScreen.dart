import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(251, 247, 248, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
                margin: const EdgeInsets.only(top: 150, bottom: 70),
                child: Image.asset("assets/plant5.png")),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30, bottom: 5),
            child: Text(
              "Snake Plant",
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30),
            child: Text(
              """Plansts make your life with minimal and
happy love the plants more and enjoy life.""",
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 200,
            width: 360,
            margin: const EdgeInsets.only(left: 30),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(118, 152, 75, 1),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(color: Colors.black, blurRadius: 3),
              ],
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //const SizedBox(height: 10,),
                    Image.asset("assets/h.png"),
                    Image.asset("assets/t.png"),
                    Image.asset("assets/p.png"),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Total Price",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "\u20B9 350",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      child: Container(
                        height: 49,
                        width: 150,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(103, 133, 74, 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(
                              Icons.shopping_bag_outlined,
                              color: Colors.white,
                            ),
                            Text(
                              "Add To Cart",
                              style: GoogleFonts.rubik(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
