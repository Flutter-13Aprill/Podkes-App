import 'package:app/Screen/ShimmeringImage%20.dart';
import 'package:app/Screen/bottom_navigation_bar_screen.dart';
import 'package:app/Screen/explore_Screen.dart';
import 'package:app/Screen/getting_started_screen.dart';
import 'package:app/Screen/home_screen.dart';
import 'package:app/Screen/library_screen.dart';
import 'package:app/Screen/new_play_screen.dart';
import 'package:app/Screen/profile_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home:  BottomNavigationBarrScreen()
    );
  }
}
 