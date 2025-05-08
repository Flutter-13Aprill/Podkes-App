import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podkes_app/screen/library_screen.dart';
import 'package:podkes_app/screen/profile_screen.dart';
import 'package:podkes_app/widget/discover/discover_body.dart';

// Main widget for the bottom navigation screen
class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

// Track the currently selected tab index
int currentIndex = 0;

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  // List of widgets that correspond to each tab

  List<Widget> listWidget = [DiscoverBody(), LibraryScreen(), ProfileScreen()];
  // List of AppBars, one for each screen/tab
  List<AppBar> appbar = [
    AppBar(
      leading: InkWell(onTap: () {}, child: Image.asset("images/appbar1.png")),
      title: Center(
        child: Text(
          'Podkes',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      actions: [
        InkWell(onTap: () {}, child: Image.asset("images/Notification.png")),
        SizedBox(width: 30),
      ],
      backgroundColor: Color(0xff1f1d2b),
    ),
    AppBar(
      centerTitle: true,

      leading: IconButton(
        onPressed: () {
          currentIndex = 0;
        },
        icon: Icon(Icons.arrow_back, color: Colors.white),
      ),
      title: Text(
        'Library',
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
      ),

      backgroundColor: Color(0xff1f1d2b),
    ),
    AppBar(
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          currentIndex = 0;
        },
        icon: Icon(Icons.arrow_back, color: Colors.white),
      ),
      title: Text(
        'Profile',
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
      ),

      backgroundColor: Color(0xff1f1d2b),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Dynamic AppBar based on selected tab
      appBar: appbar[currentIndex],
      backgroundColor: Color(0xff1f1d2b),

      // Bottom navigation bar setup
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        currentIndex: currentIndex,
        backgroundColor: Color(0xff1f1d2b),
        selectedItemColor: Colors.white,
        unselectedItemColor: Color(0xff979797),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Discover"),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: "Library",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),

      // Display the body content based on the selected tab
      body: listWidget[currentIndex],
    );
  }
}
