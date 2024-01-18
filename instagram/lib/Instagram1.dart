import 'package:flutter/material.dart';

class Instagram1 extends StatefulWidget {

  const Instagram1({super.key});

  @override
  State<Instagram1> createState()=>_InstagramState();
}

class _InstagramState extends State<Instagram1> {

  bool _isPost1Liked = false;
  bool _isPost2Liked = false;
  bool _isPost3Liked3 = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white ,
        title: const Text(
          "Instagran",
          style: TextStyle(
            fontStyle:FontStyle.italic,
            color: Colors.black,
            fontSize: 30,
          ),
        ),   

        actions: const [
          Icon(
            Icons.favorite_rounded,
            color: Color.fromARGB(255, 50, 23, 57),
          )


        ],
      ),
      /*body:ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Color.fromARGB(255, 236, 216, 155),
             child: Image.network(
                "https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg",
                width: double.infinity,
                height: 200,
                ),
              ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                       icon: const Icon (
                        Icons.favorite_outline_outlined,
                       ),
                       ),
                       IconButton(
                        onPressed:(){},
                         icon:const Icon(
                           Icons.comment_outlined
                         ),
                         ),

                         IconButton(
                          onPressed: () {}, 
                          icon:const Icon(
                            Icons.send,
                          ) )


                  ],
                )
              


            ],
          ),

           Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: const Color.fromARGB(255, 218, 200, 145),
             child: Image.network(
                "https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg",
                width: double.infinity,
                height: 200,
                ),
              ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                       icon: const Icon (
                        Icons.favorite_outline_outlined,
                       ),
                       ),
                       IconButton(
                        onPressed:(){},
                         icon:const Icon(
                           Icons.comment_outlined
                         ),
                         ),

                         IconButton(
                          onPressed: () {}, 
                          icon:const Icon(
                            Icons.send,
                          ) )


                  ],
                )
              


            ],
          ),
           Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: const Color.fromARGB(255, 227, 205, 139),
             child: Image.network(
                "https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg",
                width: double.infinity,
                height: 200,
                ),
              ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                       icon: const Icon (
                        Icons.favorite_outline_outlined,
                       ),
                       ),
                       IconButton(
                        onPressed:(){},
                         icon:const Icon(
                           Icons.comment_outlined
                         ),
                         ),

                         IconButton(
                          onPressed: () {}, 
                          icon:const Icon(
                            Icons.send,
                          ) )


                  ],
                )
              


            ],
          )
        ],
      ),*/


      body: SingleChildScrollView ( 
        child:Column(    
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Color.fromARGB(255, 236, 216, 155),
             child: Image.network(
                "data:image/jpeg;base64,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",
                width: double.infinity,
                height: 200,
                ),
              ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          
                          _isPost1Liked = !_isPost1Liked;
                        });
                      },
                       icon: _isPost1Liked ?
                        const Icon (
                        Icons.favorite_rounded,
                        color: Colors.red,
                       ):const Icon(
                        Icons.favorite_border_outlined,
                        



                        color: Colors.red,
                       )
                       ),
                       IconButton(
                       // Icon n = Icons.favorite_rounded;
                        onPressed:(){
                          
                        },
                         icon:const Icon(
                           Icons.comment_outlined
                         ),
                         ),

                         IconButton(
                          onPressed: () {}, 
                          icon:const Icon(
                            Icons.send,
                          ),
                          
                        ),
                        IconButton(onPressed: (){}, 
                        icon: const Icon(Icons.bookmark_outline_rounded),
                        ),



                  ],
                )
              


            ],
          ),

           Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: const Color.fromARGB(255, 218, 200, 145),
             child: Image.network(
                "https://media.licdn.com/dms/image/D5603AQEe3zXh6PwWoQ/profile-displayphoto-shrink_200_200/0/1682703243637?e=2147483647&v=beta&t=-ol_WNc0U8tk7PBPKGYmZ61Wxej2-Hezh6oSPPR_0xg",
                width: double.infinity,
                height: 200,
                ),
              ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                       icon: const Icon (
                        
                       Icons.favorite_outline_outlined,
                       ),
                       ),
                       IconButton(
                        onPressed:(){},
                         icon:const Icon(
                           Icons.comment_outlined
                            ),
                         ),
                         const SizedBox(
                          width: 100,
                         ),

                         IconButton(
                          onPressed: () {}, 
                          icon:const Icon(
                            Icons.send,
                          ), 
                          
                        ),
                        const Spacer(),


                  ],
                )
              


            ],
          ),
           Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: const Color.fromARGB(255, 227, 205, 139),
             child: Image.network(
                "data:image/jpeg;base64,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",
                width: double.infinity,
                height: 200,
                ),
              ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                       icon: const Icon (
                        Icons.favorite_outline_outlined,
                       ),
                       ),
                       IconButton(
                        onPressed:(){},
                         icon:const Icon(
                           Icons.comment_outlined
                         ),
                         ),

                         IconButton(
                          onPressed: () {}, 
                          icon:const Icon(
                            Icons.send,
                          ) )


                  ],
                )
            ],
          )
        ],
      ),
      
    ),
    );


    
  }


}