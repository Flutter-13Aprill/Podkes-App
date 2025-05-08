import 'package:flutter/material.dart';
import 'package:podkes_app/screens/intro_screen.dart';
// main function
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      //debug banner false
      debugShowCheckedModeBanner: false,
      //go intro screen
      home:IntroScreen() );
  }
}
