import 'package:flutter/material.dart';

// -- Screens
import 'package:podkes/screens/discover_screen.dart';
import 'package:podkes/screens/library_screen.dart';
import 'package:podkes/screens/profile_screen.dart';

// -- External Packages 
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {

  List<Widget> screens = [
    DiscoverScreen(),
    LibraryScreen(),
    ProfileScreen()
  ];

  int currentScreenIndex = 0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentScreenIndex,
        backgroundColor: Color(0xff252836),
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
        selectedIconTheme: IconThemeData(color: Colors.white),
        selectedItemColor: Colors.white,
        unselectedItemColor: Color(0xff8B8C8C),
        unselectedIconTheme: IconThemeData(color: Color(0xff8B8C8C)),
        unselectedLabelStyle: TextStyle(fontWeight:  FontWeight.w500),
        onTap: (value) {
          setState(() {
            currentScreenIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: SvgPicture.asset('assets/bottom_nav_screen/bottom_nav_screen_svgs/home.svg'), label: 'Discover'),
          BottomNavigationBarItem(icon: SvgPicture.asset('assets/bottom_nav_screen/bottom_nav_screen_svgs/library.svg'), label: 'Library'),
          BottomNavigationBarItem(icon: SvgPicture.asset('assets/bottom_nav_screen/bottom_nav_screen_svgs/profile.svg'), label: 'Profile')
        ],
        ),

        body: screens[currentScreenIndex] ,
    );
  }
}