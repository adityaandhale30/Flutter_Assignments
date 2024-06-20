import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              SizedBox(
                width: double.maxFinite,
                child: Image.asset(
                  "assets/homepage.png",
                  fit: BoxFit.fill,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30, right: 30, bottom: 30),
                child: Text(
                  "Dancing between The Shadows             Of rhythem",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 37,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 260,
              height: 47,
              margin: const EdgeInsets.only(left: 54),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 46, 0, 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: const Center(
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 260,
              height: 47,
              margin: const EdgeInsets.only(left: 54, top: 20, bottom: 10),
              decoration: const BoxDecoration(
                //color: Color.fromRGBO(255, 46, 0, 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                border: Border(
                  top: BorderSide(color: Colors.red),
                  left: BorderSide(color: Colors.red),
                  bottom: BorderSide(color: Colors.red),
                  right: BorderSide(color: Colors.red),
                ),
              ),
              child: const Center(
                child: Text(
                  "Continue with Email",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 80),
                child: Text(
                  """by continuing you agree to terms
   of services and  Privacy policy""",
                  style: TextStyle(
                    color: Color.fromRGBO(203, 200, 200, 1),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
