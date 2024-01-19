import 'package:flutter/material.dart';

class Assign2 extends StatelessWidget {

  const Assign2({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title:const Text( 
        "MyApp",
        selectionColor: Color.fromARGB(255, 44, 34, 58
        ),
      
      ),backgroundColor: const Color.fromARGB(
        255, 239, 202, 114
        ),
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
            fontSize: 22
          ),
      actions:const [
         Icon(
          Icons.settings,
          ),
         SizedBox(
          width: 10,
          ),
        

      ],
       
    ),

    );

  }

}