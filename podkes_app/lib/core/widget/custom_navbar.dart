import 'package:flutter/material.dart';
import 'package:podkes_app/core/theme/app_palette.dart';
import 'package:podkes_app/featuers/Explore/presentation/pages/explore_screen.dart';
import 'package:podkes_app/featuers/musiclib/presentation/page/music_screen.dart';
import 'package:podkes_app/featuers/profile/presentation/page/profile_screen.dart';

class CustomNavbar extends StatefulWidget {
  const CustomNavbar({super.key});

  @override
  State<CustomNavbar> createState() => _CustomNavbarState();
}

class _CustomNavbarState extends State<CustomNavbar> {
  int selectIndex = 0;
  void navbar(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  final List<Widget> pages = [ExploreScreen(), MusicScreen(), ProfileScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppPalette.containersColor,
        currentIndex: selectIndex,
        onTap: (value) {
          setState(() {
            selectIndex = value;
          });
        },

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: AppPalette.whiteColor, size: 40),
            label: "Discover",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.layers, color: AppPalette.whiteColor, size: 40),
            label: "Library",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: AppPalette.whiteColor, size: 40),
            label: "Profile",
          ),
        ],
        unselectedLabelStyle: TextStyle(color: AppPalette.whiteColor),
      ),
    );
  }
}
