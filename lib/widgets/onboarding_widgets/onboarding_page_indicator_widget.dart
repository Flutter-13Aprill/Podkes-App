import 'package:flutter/material.dart';

class OnboardingPageIndicatorWidget extends StatelessWidget {

  /// [OnboardingPageIndicatorWidget] represents a page indicator in the onboarding screen.
  const OnboardingPageIndicatorWidget({super.key, required this.currentPageIndex});

  final int currentPageIndex; 

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) => Padding(
        padding: EdgeInsets.all(8),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          width: currentPageIndex == index ? 21 : 8,
          height: 8,
          decoration: BoxDecoration(
            color: currentPageIndex == index ? Color(0xff525298) : Color.fromRGBO(123, 128, 133, 0.5),
            borderRadius: BorderRadius.circular(11)
          ),
          ),
        )
        ) ,
    );
  }
}
