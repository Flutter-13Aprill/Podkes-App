import 'package:assignment9/core/function/navigation.dart';
import 'package:assignment9/core/widget/bottom_navigation_bar_widget.dart';
import 'package:assignment9/features/Onboarding/data/model/onboarding_model.dart';
import 'package:flutter/material.dart';

class OnboardingController {
  PageController pageController = PageController();

  void navigatorPage(BuildContext context, int index) {
    if (index == onboardingData.length - 1) {
      customReplacementNavigate(context, BottomNavigationBarWidget());
    } else {
      pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

}
