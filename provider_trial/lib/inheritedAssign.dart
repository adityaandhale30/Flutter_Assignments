// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:widget_app/printCredent.dart';
import 'sharedata.dart';

class InheritedAssign extends StatefulWidget {
  const InheritedAssign({super.key});
  @override
  State createState() => _InheritedState();


}

class _InheritedState extends State<InheritedAssign> {
  //TextEditing controllers

  final TextEditingController _id_Controller = TextEditingController();
  final TextEditingController _username_Controller = TextEditingController();
  final TextEditingController _name_Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ShareData shareDataobj = ShareData.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inherited Assignment"),
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
                  margin: const EdgeInsets.only(bottom: 30, top: 45, left: 50),
                  child: Text(
                    "Login to your Account",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
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
                    controller: _id_Controller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Id",
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
                    controller: _username_Controller,
                    decoration: InputDecoration(
                      hintText: "username",
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
                    if (_id_Controller.text.isNotEmpty &&
                        _name_Controller.text.isNotEmpty &&
                        _username_Controller.text.isNotEmpty) {
                      shareDataobj.obj?.id = _id_Controller.text.trim();
                      shareDataobj.obj?.name = _name_Controller.text;
                      shareDataobj.obj?.username = _username_Controller.text;
                    }
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AccessWidget()),
                    );
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
                        "Submit",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
