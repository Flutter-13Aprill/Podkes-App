import 'package:flutter/material.dart';
import 'package:podkes_app/screens/explore_screen.dart';
import 'package:podkes_app/screens/library_screen.dart';
import 'package:podkes_app/screens/profile_screen.dart';

// Implements a bottom navigation bar to switch between Explore, Library, and Profile screens.
class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  // Track the current selected index
  int selectedIndex = 0;
  // List of screens
  final List<Widget> screens = const [
    ExploreScreen(),
    LibraryScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Display the screen based on the selected index
      body: screens[selectedIndex],

      //controls the bottom navigation bar at the screen's bottom
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(37, 40, 54, 1),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Explore'),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library_sharp),
            label: 'Library',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        // Set the current selected index
        currentIndex: selectedIndex,
        // Update selected index
        onTap: (value) {
          selectedIndex = value;
          setState(() {});
        },
      ),
    );
  }
}
