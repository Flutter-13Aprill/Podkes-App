import 'package:app/Screen/explore_Screen.dart';
import 'package:app/Screen/home_screen.dart';
import 'package:app/Screen/library_screen.dart';
import 'package:app/Screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationBarrScreen extends StatefulWidget {
  const BottomNavigationBarrScreen({super.key});

  @override
  State<BottomNavigationBarrScreen> createState() =>
      _BottomNavigationBarrScreen();
}

class _BottomNavigationBarrScreen extends State<BottomNavigationBarrScreen> {
  bool? homePageIndex ;
  bool? libraryPageIndex ;
   bool? profileSPageIndex ;
  int curentIndex = 0;
  List<Widget> pages = [HomeScreen(), LibraryScreen(), ProfileScreen()];

  void _onTabTapped(int index) {
    setState(() {
      curentIndex = index;
      switch(index){
        case 0: 
        homePageIndex=true;
        break;
        case 1:
        libraryPageIndex=true;
         break;
         case 2:
        profileSPageIndex=true;
         break;

      }
    
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[curentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: const TextStyle(color: Colors.white),
        unselectedLabelStyle: const TextStyle(color: Colors.white),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0XFF1F1D2B),
        currentIndex: curentIndex,
        onTap: _onTabTapped,
        items: const [
          BottomNavigationBarItem(
            // activeIcon:
            icon: Icon(Icons.home, color: Colors.white),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library, color: Colors.white),
            label: "Library",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
