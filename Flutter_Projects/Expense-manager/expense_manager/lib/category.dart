import 'package:expense_manager/modelclass.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Category extends StatefulWidget {
  const Category({super.key});
  @override
  State createState() => _CategoreyState();
}

class _CategoreyState extends State {
// TextEditing controllers
  TextEditingController urlController = TextEditingController();
  TextEditingController catagoryController = TextEditingController();

//key
  final _formKey = GlobalKey<FormState>();

  void showBottomSheet([toDoModelObj]) async {
    showModalBottomSheet(
        backgroundColor: const Color.fromRGBO(248, 248, 248, 1),
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        isDismissible: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 100,
                        width: 200,
                      ),
                      Text(
                        "Image URL",
                        style: GoogleFonts.quicksand(
                          color: const Color.fromRGBO(33, 33, 33, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      TextFormField(
                        controller: urlController,
                        decoration: InputDecoration(
                          hintText: "Enter Title",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 38, 105, 125)),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Description",
                        style: GoogleFonts.quicksand(
                          color: const Color.fromRGBO(33, 33, 33, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      TextFormField(
                        controller: catagoryController,
                        maxLines: 1,
                        decoration: InputDecoration(
                          hintText: "Enter Category Name",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(255, 38, 105, 125),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 40,
                    width: 123,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(67),
                        ),
                        backgroundColor: const Color.fromRGBO(14, 161, 125, 1),
                      ),
                      onPressed: () {
                        //  submit(doedit, toDoModelObj);

                        Navigator.pop(context);
                      },
                      child: Text(
                        "Add",
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          );
        });
  }

// BUILD Method------------------------------------------------------------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView"),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: gridbutton.length,
        itemBuilder: (context, i) {
          return Container(
            height: 150,
            width: 145,
            margin:
                const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 2),
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                    blurRadius: 8,
                    offset: Offset(1, 2)),
              ],
              borderRadius: BorderRadius.circular(
                45,
              ),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Image.asset(
                  "${gridbutton[i].buttonicon}",
                ),
                const Spacer(),
                Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  child: Text(
                    gridbutton[i].buttonname,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 30),
        height: 46,
        width: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(44),
          color: Colors.red,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              blurRadius: 4,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: FloatingActionButton(
          onPressed: () {
            showBottomSheet();
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(67),
          ),
          backgroundColor: Colors.white,
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 5, right: 8),
                child: const Icon(
                  Icons.add_circle_rounded,
                  color: Colors.green,
                  size: 35,
                ),
              ),
              Text(
                "Add Category ",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
