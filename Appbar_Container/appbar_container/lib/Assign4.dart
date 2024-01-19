import 'package:flutter/material.dart';

class Assign4 extends StatelessWidget {

  const Assign4({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      

      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 180,
              color: const Color.fromARGB(255, 132, 193, 243),
            ),

            const SizedBox(
              height: 25,
            ),
          
           Container(
              height: 200,
              width: 180,
              color: const Color.fromARGB(255, 226, 165, 85),
            ),
        ],
          
        ),
      ),
    
    );

  }

}