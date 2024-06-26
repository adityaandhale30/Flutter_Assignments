import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet2/notificationlist.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationState();
}

class _NotificationState extends State<Notifications> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 244, 243, 238),
        centerTitle: true,
        title: Text(
          "Notifications",
          style: GoogleFonts.poppins(
            fontSize: 26,
            fontWeight: FontWeight.w500,
            color: const Color.fromARGB(255, 6, 6, 6),
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 244, 243, 238),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView.separated(
            itemBuilder: (context, i) {
              if (i == 0) {
                return Container();
              } else {
                return Container(
                  margin: EdgeInsets.all(10),
                  width: double.maxFinite,
                  height: 168,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(222, 255, 255, 255),
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(8),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromRGBO(252, 219, 193, 1),
                            ),
                            child: const Icon(
                              Icons.shopping_bag_outlined,
                              color: Color.fromRGBO(245, 146, 69, 1),
                            ),
                          ),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "${notificationList[i - 1].checktext}",
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )),
                        ],
                      );
                    },
                  ),
                );
              }
            },
            separatorBuilder: (context, int i) {
              return Padding(
                padding: const EdgeInsets.only(top: 8, left: 10),
                child: Text(
                  "${notificationList[i].date}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              );
            },
            itemCount: notificationList.length + 1),
      ),
    );
  }
}
