import 'package:flutter/material.dart';
import 'package:podkes_app/core/widget/custom_navbar.dart';
import 'package:podkes_app/featuers/onbording/presentation/pages/onbording_screen.dart';

import 'package:podkes_app/core/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: OnbordingScreen(),
    );
  }
}
