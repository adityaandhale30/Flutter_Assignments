import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    
    // defining Large & small text object so that we camn chage fontweight and fontsize and retain colors
    TextStyle displayLargeText = Theme.of(context).textTheme.displayLarge!;
    TextStyle displaySmallText = Theme.of(context).textTheme.displaySmall!;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 465,
              width: double.maxFinite,
              margin: const EdgeInsets.only(bottom: 50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Image.asset(
                "assets/onboarding.png",
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36, bottom: 16),
              child: Text(
                """Find The
Best Collections""",
                style: displayLargeText.copyWith(
                  fontSize: 42,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36, bottom: 38),
              child: Text(
                """Get your dream item easily with FashionHub and get other intersting offer""",
                style: displaySmallText.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: Container(
                    width: 150,
                    height: 62,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        border: Border.all(
                          color: const Color.fromRGBO(13, 13, 14, 1),
                        )),
                    alignment: Alignment.center,
                    child: Text(
                      // textAlign: TextAlign.justify,
                      "Sign Up",
                      style: displayLargeText.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    width: 150,
                    height: 62,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      color: Theme.of(context).primaryColor,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Sign In",
                      style: displayLargeText.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
