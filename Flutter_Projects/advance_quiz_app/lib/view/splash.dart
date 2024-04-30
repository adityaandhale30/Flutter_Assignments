import 'package:advance_quiz_app/view/home.dart';
import 'package:flutter/material.dart';

class SplashDemo extends StatefulWidget {
  const SplashDemo({super.key});

  @override
  State createState() => _SpalshState();
}

class _SpalshState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const HomeDemo(),
            ),
          );
        },
        child: Image.asset(
          "assets/splash.png",
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
