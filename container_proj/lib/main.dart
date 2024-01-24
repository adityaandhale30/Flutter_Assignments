import 'package:flutter/material.dart';
import '';

void main()=> runApp(const MyApp());

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override 

  Widget build(BuildContext context) {

    return  MaterialApp(

        debugShowCheckedModeBanner: false,
        home:Scaffold(
            appBar: AppBar(
              title: const Text(
                "Center Title"
                ),
              backgroundColor: const Color.fromARGB(249, 87, 229, 237),

            ),

            body: const Center(
              
              child:Text(
                "Center Demo",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic
                  ),

                ),

                
              
              

            ),

        ),

    );
  }

}

