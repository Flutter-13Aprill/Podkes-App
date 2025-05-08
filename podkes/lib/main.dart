import 'package:flutter/material.dart';
import 'package:podkes/screens/library_screen.dart';
import 'package:podkes/screens/on_boarding_screen.dart';
// import 'package:podkes/screens/explore_screen.dart';
// import 'package:podkes/screens/on_boarding_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OnBoardingScreen()
    );
  }
}
