import 'package:assignment9/core/extension/git_size.dart';
import 'package:assignment9/core/text/text_styles.dart';
import 'package:assignment9/core/widget/custom_button.dart';
import 'package:assignment9/features/Onboarding/data/model/onboarding_model.dart';
import 'package:assignment9/features/Onboarding/presentation/Controller/onboarding_controller.dart';
import 'package:assignment9/features/Onboarding/presentation/widget/custom_smooth_page.dart';
import 'package:flutter/material.dart';

class CustomPageView extends StatefulWidget {
  const CustomPageView({super.key});

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  OnboardingController onboardingController = OnboardingController();

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: onboardingController.pageController,
      itemCount: onboardingData.length,
      itemBuilder: (context, int index) {
        return Column(
          children: [
            SizedBox(
              height: context.getHeight() - 500,
              width: context.getWidth(),
              child: Image.asset(onboardingData[index].image),
            ),
            SizedBox(height: 42),
            Text(onboardingData[index].title, style: TextStyles.poppins700),
            SizedBox(height: 24),
            Text(
              onboardingData[index].subTitle,
              textAlign: TextAlign.center,
              style: TextStyles.inter400,
            ),
            SizedBox(height: 42),
            CustomSmoothPage(controller: onboardingController.pageController),
            SizedBox(height: 30),
            CustomButton(
              onPressed: () {
                onboardingController.navigatorPage(context, index);
              },
              child: Icon(Icons.arrow_forward),
            ),
          ],
        );
      },
    );
  }
}