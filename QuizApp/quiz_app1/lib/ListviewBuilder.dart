import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {

//     return
//   }
// }

class DisplayImages extends StatefulWidget {
  const DisplayImages({super.key});

  @override
  State<DisplayImages> createState() => _DisplayImageState();
}

class _DisplayImageState extends State<DisplayImages> {
  List<String> imageList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS92Tc9j_nPYTln8OMjQvA_UxvAVEkWtxHZxXTFd-AT3A&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUNcAPIaJI-_5PEWYqpEybB3xVa4zfnK2K_zQD0jEkYw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHgocFKL7nrTQ6SDRjVIIexUKXiye1Vc0YGA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS92Tc9j_nPYTln8OMjQvA_UxvAVEkWtxHZxXTFd-AT3A&s"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image List"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 158, 217, 244),
      ),
      body: ListView.builder(
          itemCount: imageList.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(2),
              child: Image.network(imageList[index]),
            );
          }),
      /*floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
        child: const Icon(Icons.thirty_fps_select_sharp),
      ),*/
    );
  }
}
