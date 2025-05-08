import 'package:assignment9_/screen/discover.dart';
import 'package:assignment9_/screen/library.dart';
import 'package:assignment9_/screen/profile.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentPage = 0;
  final List<Widget> pages = [
    const Discover(),

    const Library(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 37, 40, 54),
        selectedItemColor: Colors.white,
        unselectedItemColor: Color.fromARGB(255, 139, 140, 140),

        type: BottomNavigationBarType.fixed,

        currentIndex: currentPage,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 33),
            label: 'Discover',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.video_library_outlined, size: 30),
            label: 'Library',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 35),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
