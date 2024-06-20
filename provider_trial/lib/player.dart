import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'playerdata.dart';

class InheritedAssign extends StatefulWidget {
  const InheritedAssign({super.key});
  @override
  State createState() => _InheritedState();
}

class _InheritedState extends State<InheritedAssign> {
  //TextEditing controllers

  final TextEditingController _name_Controller = TextEditingController();
  final TextEditingController _country_Controller = TextEditingController();
  final TextEditingController _ipl_Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    playerData playerDataObj = playerData.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Player Info"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 35, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 30, top: 40),
                  height: 50,
                  width: 320,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(150),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.15),
                        blurRadius: 5,
                        spreadRadius: 2,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: TextFormField(
                    controller: _name_Controller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Name",
                      hintStyle: GoogleFonts.poppins(
                        color: const Color.fromRGBO(0, 0, 0, 0.6),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  height: 50,
                  width: 320,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(150),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.15),
                        blurRadius: 5,
                        spreadRadius: 2,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: TextFormField(
                    controller: _country_Controller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Country",
                      hintStyle: GoogleFonts.poppins(
                        color: const Color.fromRGBO(0, 0, 0, 0.6),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 40,
                  ),
                  height: 50,
                  width: 320,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(150),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.15),
                        blurRadius: 5,
                        spreadRadius: 2,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: _ipl_Controller,
                    decoration: InputDecoration(
                      hintText: "IPL-team",
                      hintStyle: GoogleFonts.poppins(
                        color: const Color.fromRGBO(0, 0, 0, 0.6),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      border: InputBorder.none,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // if (_ipl_Controller.text.isNotEmpty &&
                    //     _name_Controller.text.isNotEmpty &&
                    //     _country_Controller.text.isNotEmpty) {
                    playerDataObj.obj?.iPLteam = _ipl_Controller.text;
                    playerDataObj.obj?.playerName = _name_Controller.text;
                    playerDataObj.obj?.country = _country_Controller.text;

                    // playerName = "";

                    setState(() {});
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const Teamchange()),
                    // );
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                      color: Color.fromRGBO(251, 173, 90, 1),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.15),
                          blurRadius: 5,
                          spreadRadius: 2,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    height: 50,
                    width: 320,
                    child: Center(
                      child: Text(
                        "Display Data ",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const Teamchange(),
                Text("${playerDataObj.obj?.country}"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

 class Teamchange extends StatefulWidget {
   const Teamchange({super.key});

   @override
   State createState() => _TeamChangeState();
}

class _TeamChangeState extends State<Teamchange> {
 // const _TeamChangeState({super.key});
  @override
  Widget build(BuildContext context) {
    playerData playerDataObj = playerData.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //  Text(obj.playerName ),
        Text("${playerDataObj.obj?.country}"),
        Text("${playerDataObj.obj?.iPLteam}"),
        Text("Not Working:::"),
      ],
    );
  }
}
