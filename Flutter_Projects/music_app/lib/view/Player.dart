import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Player extends StatefulWidget {
  const Player({super.key});

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(24, 24, 24, 1),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              // Positioned(
              //   right: double.maxFinite,
              //   bottom: double.maxFinite,
              //   child: IconButton(
              //     onPressed: () {},
              //     icon: const Icon(
              //       Icons.share,
              //       color: Color.fromARGB(255, 255, 135, 7),
              //       size: 15,
              //     ),
              //   ),
              // ),
              Positioned(
                bottom: 30,
                child: Text(
                  "Alone in the Abyss",
                  style: GoogleFonts.inter(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromARGB(255, 255, 135, 7),
                  ),
                ),
              ),
              Positioned(
                bottom: 14,
                child: Text(
                  "Youlakou",
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: double.maxFinite,
                child: Image.asset(
                  "assets/player.png",
                  fit: BoxFit.fill,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
