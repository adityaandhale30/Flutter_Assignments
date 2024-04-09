import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});
  @override
  State createState() => _VerificationState();
}

class _VerificationState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(251, 247, 248, 1),
      body: Column(
        children: [
          // const SizedBox(
          //   height: 10,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset("assets/circle2.png"),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Verification",
                      style: GoogleFonts.poppins(
                        fontSize: 22.5,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      """Enter the OTP code from the phone we
just sent you.""",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 56,
                      width: 56,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black,
                                spreadRadius: 0.02,
                                blurRadius: 0.01)
                          ]),
                      child: GestureDetector(
                        onTap: () {},
                        child: const TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 56,
                      width: 56,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black,
                                spreadRadius: 0.02,
                                blurRadius: 0.01)
                          ]),
                      child: GestureDetector(
                        onTap: () {},
                        child: const TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 56,
                      width: 56,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black,
                                spreadRadius: 0.02,
                                blurRadius: 0.01)
                          ]),
                      child: GestureDetector(
                        onTap: () {},
                        child: const TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 56,
                      width: 56,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black,
                                spreadRadius: 0.02,
                                blurRadius: 0.01)
                          ]),
                      child: GestureDetector(
                        onTap: () {},
                        child: const TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text(
                      "Don’t receive OTP code! ",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Resend",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Scaffold()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only( right: 10),
                    width: double.maxFinite,
                    height: 50,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.15),
                          blurRadius: 40,
                        ),
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(62, 102, 24, 1),
                          Color.fromRGBO(124, 180, 70, 1),
                        ],
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Submit",
                        style: GoogleFonts.rubik(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
