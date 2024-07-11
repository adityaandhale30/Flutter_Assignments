import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(),
          Stack(
            children: [
              Container(
                height: 148,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(245, 146, 69, 1),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(32),
                    bottomRight: Radius.circular(32),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hello Sarah",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                          Text(
                            "Find your lovable Pets",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                heightFactor: 7.3,
                widthFactor: 10,
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  margin: const EdgeInsets.only(left: 32, right: 32),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        
                        borderSide: BorderSide(
                            color: Color.fromRGBO(63, 224, 26, 1), width: 4),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      hintText: "Search Something Here...",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
