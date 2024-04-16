import 'package:flutter/material.dart';

// ShareData class

class ShareData extends InheritedWidget {
  final int price;
  final String productName;

  const ShareData(
      {super.key,
      required this.price,
      required this.productName,
      required super.child});

  static ShareData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ShareData>()!;
  }

  @override
  bool updateShouldNotify(ShareData oldWidget) {
    return price != oldWidget.price;
  }
}

class InheritedDemo extends StatefulWidget {
  const InheritedDemo({super.key});
  @override
  State createState() => _InheritedState();
}

class _InheritedState extends State {
  @override
  Widget build(BuildContext context) {
    ShareData shareDataobj = ShareData.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inherited Example"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AccessWidget()),
                  );
                  ;
                },
                child: Image.asset(
                  "assets/macbook1.jpg",
                ),
              ),
            ),
            Text(
              shareDataobj.productName,
              style: const TextStyle(fontSize: 16),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AccessWidget()),
                  );
                },
                child: Image.asset(
                  "assets/macbook2.jpg",
                ),
              ),
            ),
            Text(
              shareDataobj.productName,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class AccessWidget extends StatelessWidget {
  const AccessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    ShareData shareDataobj = ShareData.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Inherited Example"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: GestureDetector(
                onTap: () {},
                child: Image.asset(
                  "assets/macbook1.jpg",
                ),
              ),
            ),
            Text(
              shareDataobj.productName,
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              "${shareDataobj.price}",
              style: const TextStyle(fontSize: 16),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: GestureDetector(
                onTap: () {},
                child: Image.asset(
                  "assets/macbook2.jpg",
                ),
              ),
            ),
            Text(
              shareDataobj.productName,
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              "${shareDataobj.price}",
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
