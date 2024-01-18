
import 'package:flutter/material.dart';

class Assingment6 extends StatefulWidget{
  const Assingment6({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Assignment6State();
  }
  
}
class _Assignment6State extends State <Assingment6>{

 // @override
  // ignore: override_on_non_overriding_member
  bool box1Color = false;
  bool box2Color = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Scaffold(

        appBar:  AppBar(
          title: const Text("Color Box"),
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children : [ 
                    Container(
                      height:  100,
                      width:  100,
                      color: box1Color? Colors.blueGrey : Colors.black,
                    ),

                    const SizedBox(
                      height: 30,
                    ),

                    ElevatedButton(onPressed: () => {
                      
                      setState((){
                        box1Color = !box1Color;
                      }),
                    }, child: const Text("Box 1"))
                  ]
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  children : [ 
                    Container(
                      height:  100,
                      width:  100,
                      color: box2Color? Colors.orangeAccent : Colors.black,
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    ElevatedButton(onPressed: () => {
                      
                      setState((){
                        box2Color = !box2Color;
                      }),
                    }, child: const Text("Box 2"))
                  ]
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }

}