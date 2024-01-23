import 'package:flutter/material.dart';

class PaddingAssign extends StatelessWidget {

  const PaddingAssign({super.key});

  @override
  Widget build (BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Padding & Margin"
        ),
        backgroundColor: const Color.fromARGB(255, 184, 247, 247),
      ),
      body: Center(
        child:  Container(
          color: Colors.blue,
          child: Container(
            height: 250,
            width: 250,
            color: Colors.amber,
            alignment:  Alignment.center,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(30),
            child:
            Image.network("https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555") ,

          ),
        ),
      ),
    );
  }

}