import 'package:flutter/material.dart';
import 'package:podkes_app/Screen/Explor_Screen.dart';
import 'package:podkes_app/Screen/Library_Screen.dart';
import 'package:podkes_app/Screen/Profile_Screen.dart';

/// Main screen with bottom navigation to switch between Discover, Library, and Profile.
class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({Key? key}) : super(key: key);

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  // Index to track the currently selected tab
  int _currentIndex = 0;

  // List of screens for each tab
  final List<Widget> _screens = [
    ExplorScreen(),
    LibraryScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2D2B40), // Set a dark background color
      body: IndexedStack(
        index: _currentIndex, // Display the selected screen
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Keep all items visible
        backgroundColor: Color(0xFF2D2B40), // Match scaffold background
        currentIndex: _currentIndex, // Highlight current tab
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white60,
        onTap: (index) => setState(() => _currentIndex = index), // Update index on tap
        items: [
          BottomNavigationBarItem(
            icon: _animatedIcon(Icons.home, 0),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: _animatedIcon(Icons.library_music_rounded, 1),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: _animatedIcon(Icons.person, 2),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  /// Returns an animated icon that lifts and scales slightly when selected
  Widget _animatedIcon(IconData icon, int index) {
    bool isSelected = _currentIndex == index;
    return AnimatedContainer(
      duration: Duration(milliseconds: 250),
      curve: Curves.easeInOut,
      transform: Matrix4.translationValues(0, isSelected ? -3 : 0, 0), // Lift on select
      child: Icon(
        icon,
        size: isSelected ? 30 : 24, // Slight size increase when selected
        color: isSelected ? Colors.white : Colors.white60, // Highlight selected icon
      ),
    );
  }
}
