import 'package:flutter/material.dart';
import 'package:podkes_app/featuers/onbording/presentation/widget/custom_page_view.dart';

class OnbordingScreen extends StatelessWidget {
  const OnbordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(children: [Flexible(child: CustomPageView())]),
      ),
    );
  }
}
