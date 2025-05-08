


import 'package:flutter/material.dart';
import 'package:podkes_app/screens/pages_content/discover_content.dart';
import 'package:podkes_app/screens/pages_content/library_content.dart';
import 'package:podkes_app/screens/pages_content/profile_content.dart';

//bottom navigation bar class
class BottomNavigationController extends StatefulWidget {
  const BottomNavigationController({super.key});

  @override
  State<BottomNavigationController> createState() => _BottomNavigationControllerState();
}

class _BottomNavigationControllerState extends State<BottomNavigationController> {
  // current index 0 represnt Descover
  int _currentIndex = 0;

  // pages 
  final List<Widget> _pages = [
    DiscoverContent(),        
    LibraryContent(),         
    ProfileContent(),             
      
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 251, 246, 243),
        
        //start with current index home page
        body: _pages[_currentIndex],
        //coustmaize bottom navigation bar
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(255,37, 40, 54),
          selectedItemColor: const Color.fromARGB(255, 151, 151, 151),
          unselectedItemColor:const Color.fromARGB(255, 151, 151, 151),
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          //elemants of navigation bar
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Discover',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/Library.png'),
              label: 'Library',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/profile.png'),
              label: 'Profile',
            ),
            
          ],
        ),
      ),
    );
  }
}

