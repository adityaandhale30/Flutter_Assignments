import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 231, 231),
      body: Padding(
        padding: const EdgeInsets.only(top: 48, left: 16, right: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 9),
                    height: 56,
                    width: 56,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/dashboard.png"),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "Hello, Sushant",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Text(
                          "Good Morning",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromARGB(255, 147, 133, 133),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.notifications_none_rounded)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 22.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: const Color.fromARGB(0, 165, 15, 32),
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 1, horizontal: 18),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        width: 2,
                        color: Color.fromRGBO(250, 200, 65, 1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        width: 2,
                        color: Color.fromRGBO(250, 200, 65, 1),
                      ),
                    ),
                    hintText: "search",
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search_outlined),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 24, bottom: 10),
                width: double.maxFinite,
                height: 99,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "In Love With Pets?",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromARGB(255, 26, 27, 33),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Get all what you need for them",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 245, 193, 37),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 20, top: 10, bottom: 20),
                      width: 150,
                      height: 150,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/pet1.png",
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Category",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 6, 6, 6),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      child: Text(
                        "See all",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 6, 6, 6),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: const Color.fromARGB(255, 231, 231, 231),
                height: 120,
                width: double.maxFinite,
                child: ListView.builder(
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, i) {
                    return Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 10, bottom: 10, top: 10, right: 10),
                          height: 66,
                          width: 66,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 214, 214, 214),
                                blurRadius: 8,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          // child: Image.asset(""),
                        ),
                        Text(
                          "   here is",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(255, 6, 6, 6),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Event",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 6, 6, 6),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 24, bottom: 10),
                width: double.maxFinite,
                height: 126,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 16,
                        spreadRadius: -4,
                      ),
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            """Find and Join in Special
Events For Your Pets!""",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 26, 27, 33),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            margin: const EdgeInsets.all(16),
                            height: 35,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color.fromRGBO(245, 146, 69, 1),
                            ),
                            child: Center(
                              child: Text(
                                "See More",
                                style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromARGB(255, 6, 6, 6),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 20,
                        //    top: 10,
                        bottom: 20,
                      ),
                      width: 150,
                      height: 150,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/event.png",
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Community",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 6, 6, 6),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 24, bottom: 10),
                width: double.maxFinite,
                height: 126,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 16,
                        spreadRadius: -4,
                      ),
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            """Connect and share with 
communities! """,
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 26, 27, 33),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            margin: const EdgeInsets.all(16),
                            height: 35,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color.fromRGBO(245, 146, 69, 1),
                            ),
                            child: Center(
                              child: Text(
                                "See More",
                                style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromARGB(255, 6, 6, 6),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 20,
                        //    top: 10,
                        bottom: 20,
                      ),
                      width: 150,
                      height: 150,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/event.png",
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            buildTabItem(
              icon: Icons.home,
              label: 'Home',
              isSelected: true,
              onTap: () {},
            ),
            buildTabItem(
              icon: Icons.favorite,
              label: 'Service',
              isSelected: false,
              onTap: () {},
            ),
            SizedBox(width: 48), // The space for the floating action button
            buildTabItem(
              icon: Icons.history,
              label: 'History',
              isSelected: false,
              onTap: () {},
            ),
            buildTabItem(
              icon: Icons.person,
              label: 'Profile',
              isSelected: false,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTabItem({
    required IconData icon,
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon, color: isSelected ? Colors.orange : Colors.grey),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.orange : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}



/*import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Bottom NavBar'),
      ),
      body: Center(child: Text('Content goes here')),
      bottomNavigationBar: CustomBottomNavBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.shopping_cart),
        backgroundColor: Colors.orange,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class CustomBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 8.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          buildTabItem(
            icon: Icons.home,
            label: 'Home',
            isSelected: true,
            onTap: () {},
          ),
          buildTabItem(
            icon: Icons.favorite,
            label: 'Service',
            isSelected: false,
            onTap: () {},
          ),
          SizedBox(width: 48), // The space for the floating action button
          buildTabItem(
            icon: Icons.history,
            label: 'History',
            isSelected: false,
            onTap: () {},
          ),
          buildTabItem(
            icon: Icons.person,
            label: 'Profile',
            isSelected: false,
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget buildTabItem({
    required IconData icon,
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon, color: isSelected ? Colors.orange : Colors.grey),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.orange : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
*/