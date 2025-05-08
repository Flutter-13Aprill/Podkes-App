import 'package:assignment9/core/theme/app_theme.dart';
import 'package:assignment9/features/Onboarding/presentation/pages/onboarding_page.dart';
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
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: OnboardingPage(),
    );
  }
}
