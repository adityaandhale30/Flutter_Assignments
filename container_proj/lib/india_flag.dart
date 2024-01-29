import 'package:flutter/material.dart';

void main()=>runApp(const ColumnAxis());

class ColumnAxis extends StatelessWidget {

  const ColumnAxis({super.key});

  @override
  Widget build (BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar:AppBar(
        title: const Text(
          "75 Republic Day"
          ),
          backgroundColor:const Color.fromARGB(255, 183, 217, 245),
        ),

        body: SizedBox(
          // decoration: BoxDecoration(
            //  gradient:RadialGradient(colors: List.filled(1111111110, Colors.black)),
            //),
            width: double.infinity,
            
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                const VerticalDivider(color: Colors.black,thickness: 7,),
                Column(                
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 55,
                    width: 233,
                    color: const Color.fromARGB(255, 250, 175, 62),
                  
                  ),
                          
                  Container(
                    height: 50,
                    width: 233,
                    color: const Color.fromARGB(236, 253, 247, 247),

                    
                    child: Image.network("https://i.pngimg.me/thumb/f/720/4573713097818112.jpg"),
                   // decoration:Gradient.radial(Center(heightFactor: sqrt1_2,), radius, colors),
                  ),
                          
                  Container(
                    height: 55,
                    width: 233,
                    color:const Color.fromARGB(255, 103, 243, 108),
                  ),
                ],
                          ),
              ],
            ),
        ),
        
      ),
    );
  }
}
