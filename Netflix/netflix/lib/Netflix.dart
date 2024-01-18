import 'package:flutter/material.dart';

class Netflix extends StatelessWidget {

  const Netflix({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        
        title: const Text('NETFLIX',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),titleSpacing: 2,
        titleTextStyle:const TextStyle (color: Colors.black),
        backgroundColor: const Color.fromARGB(255, 209, 35, 23),
        

      ),
      
      body: SingleChildScrollView(
        //scrollDirection: Axis.horizontal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
               
            const Text("MOVIES",
            style:TextStyle(fontWeight: FontWeight.bold,),
        ),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            height: 350,
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Image.network(
                  "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg"
                  ),
                 const SizedBox(
                  width: 10,
                ),
                Image.network(
                  "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg"
                  ),
                  const SizedBox(
                  width: 10,
                ),
                Image.network(
                  "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg"
                  ),
          
          
          
              ],
            ),
          ),
        )

              
            /*  const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row (
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                        
                  children: [],
                        
                        
                ),
              ),
            const SizedBox(
              height: 100,
            ),
            const Text("WEB SERIES",
            style: TextStyle(fontWeight: FontWeight.bold,),
            ),
            Container(
               height:150,
                width:double.infinity,
              child:const Row (
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
            )*/
          ],
          
        
        
       
       ),      ),
    );

  }

}