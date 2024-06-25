import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // declearing Variables

  TextEditingController email = TextEditingController();
  TextEditingController label = TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 32.0, left: 18, right: 18, bottom: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(),
            Center(
              child: Text(
                "Login",
                style: GoogleFonts.poppins(
                  fontSize: 32,
                  fontWeight: FontWeight.w800,
                  color: const Color.fromRGBO(245, 146, 69, 1),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Center(child: Image.asset("assets/login.png")),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Text(
                "Email",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(194, 195, 204, 1),
                ),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                fillColor: const Color.fromARGB(0, 165, 15, 32),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 1, horizontal: 18),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    width: 2,
                    color: Color.fromRGBO(245, 146, 69, 1),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    width: 2,
                    color: Color.fromRGBO(245, 146, 69, 1),
                  ),
                ),
                hintText: "PetGuardian@gmail.com",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 6, top: 10),
              child: Text(
                "Label",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(194, 195, 204, 1),
                ),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                fillColor: const Color.fromARGB(0, 165, 15, 32),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 1, horizontal: 18),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    width: 2,
                    color: Color.fromRGBO(245, 146, 69, 1),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    width: 2,
                    color: Color.fromRGBO(245, 146, 69, 1),
                  ),
                ),
                hintText: "*************",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Forgot Password ? ",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(255, 9, 12, 34),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Click Here",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromARGB(255, 9, 12, 34),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                height: 35,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(245, 146, 69, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "LOGIN",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0, bottom: 24),
              child: Center(
                child: Text(
                  "____________________________________________________",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(245, 146, 69, 1),
                  ),
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                height: 35,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(245, 146, 69, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "LOGIN WITH FACEBOOK",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: GestureDetector(
                child: Container(
                  height: 35,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(245, 146, 69, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "LOGIN WITH EMAIL",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Center(
                child: Text(
                  """By continue you agree to our
      Terms & Privacy Policy""",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
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
