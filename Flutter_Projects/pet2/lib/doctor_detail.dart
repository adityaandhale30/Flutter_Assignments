import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorDetail extends StatefulWidget {
  const DoctorDetail({super.key});

  @override
  State<DoctorDetail> createState() => _DoctorDetailState();
}

class _DoctorDetailState extends State<DoctorDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
        title: Text(
          "Veterinary",
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        leading: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
          ),
          alignment: Alignment.topCenter,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Color.fromRGBO(245, 146, 69, 1),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 16, right: 16),
            width: double.maxFinite,
            height: 190,
            child: Image.asset(
              "assets/dr3.png",
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            child: Container(
              height: double.maxFinite,
              width: double.maxFinite,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(36),
                  topRight: Radius.circular(36),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 24, top: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dr. Anna Jhonason",
                      style: GoogleFonts.poppins(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                    Text(
                      "Veterinary Behavioral",
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF7F7F7F),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 65,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(22, 34, 51, 0.08),
                                  blurRadius: 4,
                                  spreadRadius: 2,
                                  offset: Offset(0, 11),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Experience",
                                  style: GoogleFonts.poppins(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromRGBO(31, 32, 41, 1),
                                  ),
                                ),
                                Text(
                                  "11 Years",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color:
                                        const Color.fromRGBO(245, 146, 69, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 65,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(22, 34, 51, 0.08),
                                  blurRadius: 4,
                                  spreadRadius: 2,
                                  offset: Offset(0, 11),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Price",
                                  style: GoogleFonts.poppins(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromRGBO(31, 32, 41, 1),
                                  ),
                                ),
                                Text(
                                  "250",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color:
                                        const Color.fromRGBO(245, 146, 69, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 65,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(22, 34, 51, 0.08),
                                  blurRadius: 4,
                                  spreadRadius: 2,
                                  offset: Offset(0, 11),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Location",
                                  style: GoogleFonts.poppins(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: const Color.fromRGBO(31, 32, 41, 1),
                                  ),
                                ),
                                Text(
                                  "2.5 KM",
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color:
                                        const Color.fromRGBO(245, 146, 69, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0, bottom: 4),
                      child: Text(
                        "About",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Text(
                      """Dr. Maria Naiis is a highly experienced veterinarian with 11 years of dedicated practice, showcasing a pro ...""",
                      style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromARGB(234, 62, 62, 61),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 16,
                        right: 66,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Available Days",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          const Spacer(),
                          const Padding(
                            padding: EdgeInsets.only(right: 8.0, bottom: 12),
                            child: Icon(
                              Icons.calendar_today_outlined,
                              color: Color.fromRGBO(245, 146, 69, 1),
                              size: 20,
                            ),
                          ),
                          Text(
                            "October, 2023",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 195, 195, 201),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 76,
                      width: double.maxFinite,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        itemBuilder: (context, i) {
                          return Container(
                            height: 16,
                            width: 92,
                            margin: const EdgeInsets.all(9),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                width: 2,
                                color: const Color.fromRGBO(245, 146, 69, 1),
                              ),
                              color: i % 2 == 0
                                  ? Colors.white
                                  : const Color.fromRGBO(245, 146, 69, 1),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "SAT, ${i + 5}",
                              style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(49, 29, 14, 1),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Text(
                      "Available Time",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 76,
                      width: double.maxFinite,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, i) {
                          return Container(
                            height: 16,
                            width: 92,
                            margin: const EdgeInsets.all(9),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                width: 2,
                                color: const Color.fromRGBO(245, 146, 69, 1),
                              ),
                              color: (i+1) % 2  == 0
                                  ? Colors.white
                                  : const Color.fromRGBO(245, 146, 69, 1),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "${i + 5}: 00",
                              style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(49, 29, 14, 1),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 16, left: 22),
                      height: 35,
                      width: 330,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromRGBO(252, 219, 193, 1)),
                      alignment: Alignment.center,
                      child: Text(
                        "See Location",
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 81, 65, 52),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 12, left: 22),
                      height: 35,
                      width: 330,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(245, 146, 69, 1),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Book Now",
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
