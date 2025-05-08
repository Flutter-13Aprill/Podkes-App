import 'package:flutter/material.dart';
import 'package:podkes_app/screens/explore_screen.dart';
import 'package:podkes_app/screens/library_screen.dart';
import 'package:podkes_app/screens/profile_screen.dart';
//import 'package:podkes_app/screens/library_screen.dart';

class BottomnavigationWidget extends StatefulWidget {
  const BottomnavigationWidget({super.key});

  @override
  State<BottomnavigationWidget> createState() => _BottomnavigationWidgetState();
}

class _BottomnavigationWidgetState extends State<BottomnavigationWidget> {
  int myindex = 0;
  List<Widget> pages = const [
    ExploreScreen(),
    LibraryScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[myindex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: myindex,
        backgroundColor: const Color.fromARGB(255, 3, 25, 43),
        onDestinationSelected:
            (myindex) => setState(() => this.myindex = myindex),
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Discover'),
          NavigationDestination(
            icon: Icon(Icons.video_library),
            label: 'Library',
          ),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
