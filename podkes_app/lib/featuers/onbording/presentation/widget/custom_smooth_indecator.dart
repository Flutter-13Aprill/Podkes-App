import 'package:flutter/material.dart';
import 'package:podkes_app/core/theme/app_palette.dart';
import 'package:podkes_app/featuers/onbording/data/model/onbording_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothIndecator extends StatelessWidget {
  const CustomSmoothIndecator({super.key, required this.controller});
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: onbordingData.length,
      effect: WormEffect(dotColor: AppPalette.dot), // your preferred effect
      onDotClicked: (index) {},
    );
  }
}
