import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'plantclass.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State createState() => _HomeState();
}

class _HomeState extends State {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(251, 247, 248, 1),
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Image.asset("assets/circle4.png")],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // SizedBox(
                //   height: 30,
                // ),
                Text(
                  """Find your
favorite plants""",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500, fontSize: 24),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.15),
                          blurRadius: 16,
                          offset: Offset(0, 4)),
                    ],
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_bag_outlined,
                      color: Color.fromRGBO(62, 102, 24, 1),
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: 150,
              width: 410,
              margin: const EdgeInsets.only(top: 50),
              child: CarouselSlider(
                items: List.generate(
                  7,
                  (index) => Container(
                    margin: const EdgeInsets.only(right: 5, left: 7),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                      color: Color.fromRGBO(204, 231, 185, 1),
                    ),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "30% OFF $index",
                              style: GoogleFonts.poppins(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                options: CarouselOptions(
                  viewportFraction: 0.9,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                7,
                (index) => Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index ? Colors.blue : Colors.grey,
                  ),
                ),
              ),
            ),
            // Listview.seperator in First View
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, i) {
                    return Text(
                      plantTypeList[i],
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Container(
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, i) {
                            return Row(
                              children: [
                                Container(
                                  height: 200,
                                  width: 200,
                                  child: Column(
                                    children: [
                                      Center(
                                        child: Image.asset("assest/plant3.png"),
                                      ),
                                      Text(plantList[i].plantName),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                          separatorBuilder: (context, int i) {
                            return const Text(
                                "-----------------------------------------------------------------------------------------------------------");
                          },
                          itemCount: plantList.length),
                    );
                  },
                  itemCount: plantTypeList.length),
            )
          ],
        ),
      ),
    );
  }
}
