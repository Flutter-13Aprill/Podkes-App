import 'package:assignment9/screens/explore_screen.dart';
import 'package:assignment9/screens/library_screen.dart';
import 'package:assignment9/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class BottomBarHandler extends StatefulWidget {
  const BottomBarHandler({super.key});
//bottom bar handler to show each page
  @override
  State<BottomBarHandler> createState() => _BottomBarHandlerState();
}

int currentScreen = 0;

class _BottomBarHandlerState extends State<BottomBarHandler> {
  void screenHndler(int index) {
    setState(() {
      currentScreen = index;
    });
  }

  List<Widget> screens = [ExploreScreen(), LibraryScreen(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //where the page displayed
      body: screens[currentScreen],

      //bottom nav style
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 37, 40, 54),
        selectedItemColor: Colors.white ,
        unselectedItemColor: Color.fromARGB(255, 139, 140, 140),
        currentIndex: currentScreen,

        onTap: screenHndler,

          //icons for the bottom nav
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(
            icon: Image.asset('assets/project_icons/library_icon.png'),
            label: 'Library',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
