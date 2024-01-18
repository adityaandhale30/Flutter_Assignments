// ignore: file_names
import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget {

  const Assignment5({super.key});



  @override
  State <Assignment5> createState() => _Assignment5State();

}

class _Assignment5State extends State<Assignment5> {

  int _count = 0;

  void _printTableViwe() {

    setState(() {


      _count = _count+2;

    }
      );  
    }
    @override
    Widget build (BuildContext context) {

      return Scaffold(

        appBar: AppBar(
          title: const Text("Table of 2"
          ),
          
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text (
                "Click button to print Table values",
              ),
              Text(
                "$_count",
              ),
              const SizedBox (
                height: 20,
                ),

                ElevatedButton(
                  onPressed: _printTableViwe
                , child: const Text("t"),
                
                ),

              
            ],
          ),
        )
      );
    }
  }








































































































