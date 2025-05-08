import 'package:flutter/material.dart';
import 'package:podcast_app/screens/explore_screen.dart';
import 'package:podcast_app/screens/onboarding.screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: OnBoarding(),
    );
  }
}
