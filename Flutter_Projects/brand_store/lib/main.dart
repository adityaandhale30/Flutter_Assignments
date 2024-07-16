import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'View/onboarding.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(255, 122, 0, 1),
        textTheme: TextTheme(
          displayLarge: GoogleFonts.imprima(
            color: const Color.fromRGBO(13, 13, 14, 1),
          ),
          displaySmall:GoogleFonts.imprima(
            color: const Color.fromRGBO(121, 119, 128, 1)
          ), 
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: OnBoarding(),
    );
  }
}
