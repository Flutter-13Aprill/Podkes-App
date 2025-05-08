import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:podkes_app/screens/explore_screen.dart';
import 'package:podkes_app/screens/library_screen.dart';
import 'package:podkes_app/screens/profile_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  void changeTabIndex(int newIndex) {
    setState(() {
      previousIndex = currentIndex;
      currentIndex = newIndex;
    });
  }

  int currentIndex = 0;
  int previousIndex = 0;
  List<Widget> get pages => [
    ExploreScreen(),
    LibraryScreen(onTabChange: changeTabIndex, previousIndex: previousIndex),
    ProfileScreen(onTabChange: changeTabIndex, previousIndex: previousIndex),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Color(0xff8B8C8C),
        currentIndex: currentIndex,
        backgroundColor: Color(0xff252836),
        selectedIconTheme: IconThemeData(color: Colors.white),
        unselectedIconTheme: IconThemeData(color: Color(0xff8B8C8C)),

        onTap: (value) {
          previousIndex = currentIndex;
          currentIndex = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 32),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/library.svg",
              colorFilter: ColorFilter.mode(
                currentIndex == 1 ? Colors.white : Color(0xff8B8C8C),
                BlendMode.srcIn,
              ),
            ),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 32),
            label: 'Profile',
          ),
        ],
      ),

      body: pages[currentIndex],
    );
  }
}
