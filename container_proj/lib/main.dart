

// ignore_for_file: prefer_const_constructors


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
          backgroundColor:Color.fromARGB(255, 183, 217, 245),
        ),

        body: Container(
          // decoration: BoxDecoration(
            //  gradient:RadialGradient(colors: List.filled(1111111110, Colors.black)),
            //),
            width: double.infinity,
            
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                VerticalDivider(color: Colors.black,thickness: 7,),
                Column(                
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 55,
                    width: 233,
                    color: Color.fromARGB(255, 250, 175, 62),
                  
                  ),
                          
                  Container(
                    height: 50,
                    width: 233,
                    color: Color.fromARGB(236, 253, 247, 247),
                    child: Image.network("https://i.pngimg.me/thumb/f/720/4573713097818112.jpg"),
                   // decoration:Gradient.radial(Center(heightFactor: sqrt1_2,), radius, colors),
                  ),
                          
                  Container(
                    height: 55,
                    width: 233,
                    color: Color.fromARGB(255, 103, 243, 108),
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




/*import 'package:flutter/material.dart';

void main()=>runApp(const RowAxis());

class RowAxis extends StatelessWidget {

  const RowAxis({super.key});

  @override
  Widget build (BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar:AppBar(
        title: const Text(
          "Row_Start"
          ),
          backgroundColor:Colors.lightBlue,
        ),
        body: Container(
          height: double.infinity,
          child: Row(
          
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 120,
                width: 120,
                color: Colors.red,
              ),
              Container(
                height: 120,
                width: 120,
                color: Colors.lightGreen,
              ),
              Container(
                height: 120,
                width: 120,
                color: Colors.lightBlue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/
/*import 'package:flutter/material.dart';
//import '';

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

}*/

