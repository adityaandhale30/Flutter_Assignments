import 'package:flutter/material.dart';

class Assign1 extends StatelessWidget {

  const Assign1({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title:const Text(
        "MyApp"
      ),backgroundColor: const Color.fromARGB(
        255, 60, 146, 220
        ),titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22),
      actions:const [
         Icon(Icons.search_outlined,),
         SizedBox(
          width: 10,
          ),
         Icon(
          Icons.arrow_back_ios_new
          ),
         SizedBox(
          width: 10,
          ),

      ],
       
    ),

    );

  }

}