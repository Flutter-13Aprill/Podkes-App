import 'package:assignment9/core/function/navigation.dart';
import 'package:assignment9/core/widget/bottom_navigation_bar_widget.dart';
import 'package:assignment9/core/widget/custom_text_button.dart';
import 'package:assignment9/features/Onboarding/presentation/widget/custom_page_view.dart';
import 'package:assignment9/features/onboarding/presentation/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage({super.key});
  final onboardingController = OnboardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(19),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: CustomTextButton(
                  onPressed: () {
                    customReplacementNavigate(
                      context,
                      BottomNavigationBarWidget(),
                    );
                  },
                  text: 'Skip',
                ),
              ),

              Flexible(child: CustomPageView()),
            ],
          ),
        ),
      ),
    );
  }
}
