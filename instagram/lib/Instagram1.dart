import 'package:flutter/material.dart';

class Instagram1 extends StatefulWidget {
  const Instagram1({super.key});

  @override
  State<Instagram1> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram1> {
  bool _isPost1Liked = false;
  bool _isPost2Liked = false;
  bool _isPost3Liked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Instagran",
          style: TextStyle(
            fontStyle: FontStyle.italic,
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

      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Color.fromARGB(255, 236, 216, 155),
                  child: Image.network(
                    "https://dbdzm869oupei.cloudfront.net/img/posters/preview/91008.png",
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
                        icon: _isPost1Liked
                            ? const Icon(
                                Icons.favorite_rounded,
                                color: Colors.red,
                              )
                            : const Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.red,
                              )),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.comment_outlined),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
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
                        onPressed: () {
                          setState(() {
                            _isPost2Liked = !_isPost2Liked;
                          });
                        },
                        icon: _isPost2Liked
                            ? const Icon(
                                Icons.favorite_rounded,
                                color: Colors.red,
                              )
                            : const Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.red,
                              )),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.comment_outlined),
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
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
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ5Cq8kozpWIaq5Aohw4rjKkh_eE7nUkDV5zcHClQaYw&s",
                    width: double.infinity,
                    height: 200,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            _isPost3Liked = !_isPost3Liked;
                          });
                        },
                        icon: _isPost3Liked
                            ? const Icon(
                                Icons.favorite_rounded,
                                color: Colors.red,
                              )
                            : const Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.red,
                              )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.send,
                        ))
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
                        onPressed: () {
                          setState(() {
                            _isPost2Liked = !_isPost2Liked;
                          });
                        },
                        icon: _isPost2Liked
                            ? const Icon(
                                Icons.favorite_rounded,
                                color: Colors.red,
                              )
                            : const Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.red,
                              )),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.comment_outlined),
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
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
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ5Cq8kozpWIaq5Aohw4rjKkh_eE7nUkDV5zcHClQaYw&s",
                    width: double.infinity,
                    height: 200,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            _isPost3Liked = !_isPost3Liked;
                          });
                        },
                        icon: _isPost3Liked
                            ? const Icon(
                                Icons.favorite_rounded,
                                color: Colors.red,
                              )
                            : const Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.red,
                              )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.send,
                        ))
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
