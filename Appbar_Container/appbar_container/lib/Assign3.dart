import 'package:flutter/material.dart';

class Assign3 extends StatelessWidget {

  const Assign3({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:const Text(
        "Hello Core2Web "
      ),
      backgroundColor:
      Colors.deepPurple,
      titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22),
       
      ),

      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 360,
              color: Color.fromARGB(255, 132, 193, 243),
            ),
          ],
          
        ),
      ),
    
    );

  }

}