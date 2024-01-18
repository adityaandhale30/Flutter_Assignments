
import 'package:flutter/material.dart';

class Assignment7 extends StatefulWidget {
  const Assignment7({super.key});
  @override
  State<Assignment7> createState() => _Assignment7State();
}

class _Assignment7State extends State<Assignment7> {
  int? selectIndex = 0;
  final List<String> imageList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFdukQdGS2w2Kz8PPZ2JnWnpcCvvaYPTplDUxzil072g&s",
    "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUWFRgWFRYYGRgaGhoYHBoaGhwaGRwcGBoaGRoaGhocIS4lHB4rIRwZJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHxISHzQrJCw0NDQ0NDQ0NjQ0NDY0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NjQ0NDQ0NDQ0NDQ0NP/AABEIAKgBLAMBIgACEQEDEQH/xAAbAAACAgMBAAAAAAAAAAAAAAADBAIFAAEHBv/EAD8QAAIBAwMCAwYDBQcDBQEAAAECEQADIQQSMUFRBSJhBhMycYGRUqGxFCNCwfAHYnKC0eHxFTOSQ1OTorIk/8QAGQEAAwEBAQAAAAAAAAAAAAAAAQIDAAQF/8QAJBEAAgICAgEEAwEAAAAAAAAAAAECEQMhEjFBBBNRYSIygXH/2gAMAwEAAhEDEQA"
  ];
  void showNextImage() {
    setState(() {

      if(selectIndex! < (imageList.length-1))
      selectIndex = selectIndex! + 1;
      else
        selectIndex = 0;
     // print(selectIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Display Images"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              imageList[selectIndex!],
              height: 300,
              width: 300,
              fit: BoxFit.contain,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                showNextImage();
              },
              child: const Text("Next"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  selectIndex = 0;
                });
              },
              child: const Text("RESET"),
            ),
          ],
        ),
      ),
    );
  }
}
