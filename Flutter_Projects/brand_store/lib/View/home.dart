import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool productSize = true;

  @override
  Widget build(BuildContext context) {
    TextStyle displayLargeText = Theme.of(context).textTheme.displayLarge!;
    TextStyle displaySmallText = Theme.of(context).textTheme.displaySmall!;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.grid_view_outlined,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.radio_button_unchecked,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18, top: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Explore",
              style: displayLargeText.copyWith(
                fontSize: 36,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              "Best trendy collection!",
              style: displaySmallText.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 50,
              width: double.maxFinite,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, i) {
                  return GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(top: 16, right: 24),
                      width: 74,
                      // height: 32,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: i == 0
                            ? Theme.of(context).primaryColor
                            : Colors.white,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Text(
                        "Button",
                        style: displayLargeText.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: i == 0 ? Colors.white : displayLargeText.color,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Flexible(
              child: GridView.builder(
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 300,
                ),
                itemBuilder: (context, i) {
                  return Container(
                    color: Colors.purpleAccent,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
