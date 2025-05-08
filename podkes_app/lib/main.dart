import 'package:flutter/material.dart';
import 'package:podkes_app/widgets/getting_start_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: GettingStart());
  }
}
