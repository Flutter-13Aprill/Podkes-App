import 'package:assignment9/core/theme/app_palette.dart';
import 'package:assignment9/features/Onboarding/data/model/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothPage extends StatelessWidget {
  const CustomSmoothPage({super.key, required this.controller});
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: onboardingData.length,
      effect: WormEffect(
        activeDotColor: AppPalette.dotColor,
        dotHeight: 12,
        dotWidth: 12,
      ),
      onDotClicked: (index) {},
    );
  }
}
