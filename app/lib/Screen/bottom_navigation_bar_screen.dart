import 'package:app/Screen/home_screen.dart';
import 'package:app/Screen/library_screen.dart';
import 'package:app/Screen/profile_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarrScreen extends StatefulWidget {
  const BottomNavigationBarrScreen({super.key});

  @override
  State<BottomNavigationBarrScreen> createState() =>
      _BottomNavigationBarrScreen();
}

class _BottomNavigationBarrScreen extends State<BottomNavigationBarrScreen> {
  int curentIndex = 0; // Index to track the currently selected bottom navigation item.
  List<Widget> pages = [
    HomeScreen(),
    LibraryScreen(),
    ProfileScreen(),
  ]; // List of widgets to display for each navigation item.

  void _onTabTapped(int index) {
    // Callback function that is executed when a bottom navigation item is tapped.
    setState(() {
      curentIndex = index; // Updates the current index to reflect the tapped item.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          pages[curentIndex], // Displays the widget from the 'pages' list based on the 'curentIndex'.
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: const Color(
          0xff8B8C8C,
        ), // Color for unselected icons and labels.
        unselectedFontSize: 14, // Font size for unselected labels.
        selectedItemColor:
            Colors.white, // Changed to amber for the selected icon and label.
        selectedLabelStyle: const TextStyle(
          color: Colors.white, // Changed to amber for the selected label text.
        ), // Style for the selected label text.
        unselectedLabelStyle: const TextStyle(
          color: Color(0xff8B8C8C),   
        ), // Style for the unselected label text.

        //showSelectedLabels: true, // Uncomment to always show labels for selected items.
        //showUnselectedLabels: true, // Uncomment to always show labels for unselected items.
        type:
            BottomNavigationBarType
                .fixed, // BottomNavigationBar with a fixed number of items.
        backgroundColor: const Color(
          0XFF1F1D2B,
        ), // Background color of the BottomNavigationBar.
        currentIndex: curentIndex, // The index of the currently selected item.
        onTap: _onTabTapped, // Callback function when an item is tapped.
        items: const [
          BottomNavigationBarItem(
            // activeIcon: // You can define a different icon for the active state.
            icon: Icon(
              Icons.home,
              color: Color(0xff8B8C8C),
            ), // Icon for the "Home" tab.
            activeIcon: Icon(Icons.home, color: Colors.white), // Changed activeIcon color
            label: "Home", // Label for the "Home" tab.
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.video_library,
              color: Color(0xff8B8C8C),
            ), // Icon for the "Library" tab.
            label: "Library", // Label for the "Library" tab.
            activeIcon: Icon(
              Icons.video_library_rounded,
              color: Colors.white, // Changed activeIcon color
            ), // Icon for the "Home" tab when selected.
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Color(0xff8B8C8C),
            ), // Icon for the "Profile" tab.
            label: "Profile", // Label for the "Profile" tab.
            activeIcon: Icon(
              Icons.person,
              color: Colors.white, // Changed activeIcon color
            ), // Icon for the "Profile" tab when selected.
          ),
        ],
      ),
    );
  }
}
